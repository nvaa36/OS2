#include "block_device.h"

#include "bitio.h"
#include "interrupts.h"
#include "kmalloc.h"
#include "printk.h"
#include "string.h"
#include "system_calls.h"

void wait_bsy_clear(ata_block_dev *ctrl) {
   char bsy = 1;
   while((bsy = inb(ctrl->ata_ctl)) & (1 << BIT_BSY));
}

void wait_err_clear(ata_block_dev *ctrl) {
   char err = 1;
   while((err = inb(ctrl->ata_ctl)) & (1 << BIT_ERR));
}

void ata_soft_reset(ata_block_dev *ctrl) {
   outb(ctrl->ata_base + REG_STAT_COM, 0xE7);
   wait_bsy_clear(ctrl);
}

uint16_t *read_block(int port) {
   uint16_t *block;
   int bl_num;
   block = (uint16_t *)kmalloc(BLOCK_SIZE);

   for (bl_num = 0; bl_num < BLOCK_SIZE / sizeof(uint16_t); bl_num++) {
      block[bl_num] = inw(port);
   }

   return block;
}

uint16_t *read_blocks(int port, int num_blocks) {
   uint16_t *blocks;
   int bl_num;
   blocks = (uint16_t *)kmalloc(BLOCK_SIZE * num_blocks);

   for (bl_num = 0; bl_num < BLOCK_SIZE * num_blocks / sizeof(uint16_t);
        bl_num++) {
      blocks[bl_num] = inw(port);
   }

   return blocks;
}

/* Checks to make sure that the device is the right kind of device. */
void detect_devtype (ata_block_dev *ctrl) {
   char value, cm, ch;
   uint16_t *block;
   uint8_t status;

   ata_soft_reset(ctrl);      /* waits until master drive is ready again */
   outb(ctrl->ata_base + REG_DEVSEL, ID_MASTER | ctrl->slave<<4);
   outb(ctrl->ata_base + REG_SECT_CT, 0);
   outb(ctrl->ata_base + REG_CYL_LO, 0);
   outb(ctrl->ata_base + REG_CYL_MID, 0);
   outb(ctrl->ata_base + REG_CYL_HI, 0);
   outb(ctrl->ata_base + REG_STAT_COM, IDENTIFY);
   value = inb(ctrl->ata_ctl);        /* wait 400ns for drive select to work */
   value = inb(ctrl->ata_ctl);
   value = inb(ctrl->ata_ctl);
   value = inb(ctrl->ata_ctl);
   if (!value) {
      printk("Not valid device.\n");
   }
   wait_bsy_clear(ctrl);
   cm = inb(ctrl->ata_base + REG_CYL_MID); /* get the "signature bytes" */
   ch = inb(ctrl->ata_base + REG_CYL_HI);
   wait_err_clear(ctrl);

   if (cm || ch) {
      printk("Not ATA.\n");
   }

   status = inb(ctrl->ata_base + REG_STAT_COM);

   if (!(status && 1 << STAT_DRQ)) {
      printk("Nothing to read.\n");
   }

   block = read_block(ctrl->ata_base + ATA_REG_DATA);
   ctrl->dev.tot_length = *((uint64_t *)(block + 100));
   kfree(block);
}

// Register and probe the given block device
int BLK_register(struct BlockDev *dev) {
   if (!block_dev_head) {
      block_dev_head = dev;
      block_dev_head = dev;
   }
   else {
      block_dev_tail->next = dev;
      block_dev_tail = dev;
   }
   return 0;
}

void add_request(ata_request_queue *queue, ata_request *req) {
   if (!queue->head) {
      queue->head = req;
      queue->tail = req;
   }
   else {
      req->prev = queue->tail;
      queue->tail->next = req;
      queue->tail = req;
   }
}

static void remove_request(ata_request_queue *queue, ata_request *req) {
   if (queue->head == queue->tail) {
      queue->head = NULL;
      queue->tail = NULL;
   }

   if (req == queue->head) {
      queue->head = req->next;
   }

   if (req == queue->tail) {
      queue->tail = req->prev;
   }

   if (req->prev) {
      req->prev->next = req->next;
   }

   if (req->next) {
      req->next->prev = req->prev;
   }

   req->prev = NULL;
   req->next = NULL;
}

void read_block_syscall(ata_request *request) {
   lba_address *addr;
   ata_block_dev *device;
   uint64_t block_num;

   disable_interrupts();

   device = (ata_block_dev *)request->dev;

   if (request->blk_num > device->part_info.num_sectors) {
      printk("Reading past the end of partition.\n");
      enable_interrupts();
      return;
   }

   block_num = request->blk_num + device->part_info.lba;
   addr = (lba_address *)(&block_num);

   add_request(&device->queue, request);

   outb(device->ata_base + REG_DEVSEL, LBA | device->slave<<4);
   // Write high bits first.
   outb(device->ata_base + REG_SECT_CT, 0);
   outb(device->ata_base + REG_CYL_LO, addr->b4);
   outb(device->ata_base + REG_CYL_MID, addr->b5);
   outb(device->ata_base + REG_CYL_HI, addr->b6);

   // Then write out low bits of the address. We want one sector.
   outb(device->ata_base + REG_SECT_CT, 1);
   outb(device->ata_base + REG_CYL_LO, addr->b1);
   outb(device->ata_base + REG_CYL_MID, addr->b2);
   outb(device->ata_base + REG_CYL_HI, addr->b3);

   outb(device->ata_base + REG_STAT_COM, ATA_CMD_READ_PIO_EXT);
   PROC_block_on(&ata_blocked, 1);
   disable_interrupts();
}

void ata_read_handler(ata_request_queue *queue) {
   int bl_num;
   ata_request *request = queue->head;
   ata_block_dev *device = (ata_block_dev *)request->dev;
   uint8_t status = inb(device->ata_base + REG_STAT_COM);

   if (!(status && 1 << STAT_DRQ)) {
      printk("Nothing to read.\n");
   }

   for (bl_num = 0; bl_num < BLOCK_SIZE / sizeof(uint16_t); bl_num++) {
      ((uint16_t *)request->dst)[bl_num] = inw(device->ata_base + ATA_REG_DATA);
   }

   request->bytes_read = BLOCK_SIZE;

   remove_request(queue, queue->head);
}

static int ata_48_read_block(block_dev *dev, uint64_t blk_num, void *dst) {
   ata_request request;

   request.dev = dev;
   request.blk_num = blk_num;
   request.dst = dst;
   request.bytes_read = 0;
   request.resolved = 0;
   request.proc = curr_proc;
   request.prev = NULL;
   request.next = NULL;
   make_system_call(READ_BLOCK, &request);

   return request.bytes_read;
}

// Initialize the ATA device
ata_block_dev *ata_probe(uint16_t base, uint16_t ctrl, uint8_t slave,
                              uint8_t irq) {
   ata_block_dev *ata;
   ata = kmalloc(sizeof(*ata));
   memset(ata, 0, sizeof(*ata));
   ata->ata_base = base;
   ata->slave = slave;
   ata->ata_ctl = ctrl;
   ata->irq = irq;
   ata->dev.read_block = &ata_48_read_block;
   ata->dev.type = MASS_STORAGE;
   ata->dev.blk_size = BLOCK_SIZE;
   ata->dev.name = strdup("master_hdd");
   ata->queue.head = NULL;
   ata->queue.tail = NULL;
   // TODO: set fs type

   if (!block_dev_head) {
      block_dev_head = (block_dev *)ata;
      block_dev_tail = (block_dev *)ata;
   }
   else {
      block_dev_tail->next = (block_dev *)ata;
      block_dev_tail = (block_dev *)ata;
   }

   return (ata_block_dev *)ata;
}

void read_mbr(ata_block_dev *device) {
   unsigned char block[BLOCK_SIZE];
   struct part_entry *part_info;
   ata_block_dev *temp;

   device->dev.read_block((block_dev *)device, 0, (char *)block);

   if (block[BLOCK_SIZE - 2] != MBR1 || block[BLOCK_SIZE - 1] != MBR2) {
      printk("Failure to read MBR.\n");
   }

   // Read in the partitions.
   part_info = (struct part_entry *)(block + PART_OFF1);
   device->part_info.lba = part_info->lba;
   device->part_info.num_sectors = part_info->num_sectors;
   device->dev.type = PARTITION;
   
   temp = (ata_block_dev *)kmalloc(sizeof(ata_block_dev));
   memcpy(temp, device, sizeof(ata_block_dev));
   part_info = (struct part_entry *)(block + PART_OFF2);
   temp->part_info.lba = part_info->lba;
   temp->part_info.num_sectors = part_info->num_sectors;
   BLK_register((block_dev *)temp);
   
   temp = (ata_block_dev *)kmalloc(sizeof(ata_block_dev));
   memcpy(temp, device, sizeof(ata_block_dev));
   part_info = (struct part_entry *)(block + PART_OFF3);
   temp->part_info.lba = part_info->lba;
   temp->part_info.num_sectors = part_info->num_sectors;
   BLK_register((block_dev *)temp);

   temp = (ata_block_dev *)kmalloc(sizeof(ata_block_dev));
   memcpy(temp, device, sizeof(ata_block_dev));
   part_info = (struct part_entry *)(block + PART_OFF4);
   temp->part_info.lba = part_info->lba;
   temp->part_info.num_sectors = part_info->num_sectors;
   BLK_register((block_dev *)temp);
}

block_dev *setup_block_devices() {
   ata_block_dev *device;
   unsigned char block[512];

   block_dev_head = NULL;
   block_dev_tail = NULL;
   device = ata_probe(0x1F0, 0x3F6, ATA_MASTER, PRIMARY_IRQ/*This seems wrong*/);
   detect_devtype(device);
   irq_table[OFFSET1+ATA_IRQ].arg = &device->queue;
   IRQ_clear_mask(CASC_IRQ);
   IRQ_clear_mask(ATA_IRQ);
   printk("setup\n");

   read_mbr(device);
   printk("mbr read\n");

   device->dev.read_block((block_dev *)device, 10, block);
   printk("block read\n");

   return (block_dev *)device;
}
