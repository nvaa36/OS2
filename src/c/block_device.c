#include "block_device.h"

#include "bitio.h"
#include "kmalloc.h"
#include "printk.h"
#include "string.h"

block_dev *block_dev_head, *block_dev_tail;

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
      block[bl_num] = inl(port);
   }

   return block;
}

/* Checks to make sure that the device is the right kind of device. */
void detect_devtype (ata_block_dev *ctrl) {
   char value, cm, ch;
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

   read_block(ctrl->ata_base + ATA_REG_DATA);
}

void setup_block_devices() {
   ata_block_dev *device;
   char *block[512];

   device = ata_probe(0x1F0, 0x3F6, ATA_MASTER, PRIMARY_IRQ/*This seems wrong*/);
   detect_devtype(device);

   device->dev.read_block((block_dev *)device, 1, block);
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
   // ata_probe();
   return 0;
}

static int ata_48_read_block(block_dev *dev, uint64_t blk_num, void *dst) {
   int bl_num;
   lba_address *addr = (lba_address *)&blk_num;
   ata_block_dev *device = (ata_block_dev *)dev;

   ata_soft_reset(device);      /* waits until master drive is ready again */
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
   wait_bsy_clear(device);

   for (bl_num = 0; bl_num < BLOCK_SIZE / sizeof(uint16_t); bl_num++) {
      ((uint16_t *)dst)[bl_num] = inl(device->ata_base + ATA_REG_DATA);
   }
   return 0;
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
/*
// Read example
void read(void) {
   block_dev *dev = ata_probe(ATA_BASE, ATA_MASTER_CTRL, 0, 14);
   uint8_t dst[512];
   if (dev)
      dev->read_block(dev, 0, &dst);
}*/
