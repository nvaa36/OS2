#ifndef BLOCK_DEVICE
#define BLOCK_DEVICE

#include <stdint.h>

/* From OSDevWiki */
#define ATA_SR_BSY     0x80    // Busy
#define ATA_SR_DRDY    0x40    // Drive ready
#define ATA_SR_DF      0x20    // Drive write fault
#define ATA_SR_DSC     0x10    // Drive seek complete
#define ATA_SR_DRQ     0x08    // Data request ready
#define ATA_SR_CORR    0x04    // Corrected data
#define ATA_SR_IDX     0x02    // Index
#define ATA_SR_ERR     0x01    // Error

#define ATA_ER_BBK      0x80    // Bad block
#define ATA_ER_UNC      0x40    // Uncorrectable data
#define ATA_ER_MC       0x20    // Media changed
#define ATA_ER_IDNF     0x10    // ID mark not found
#define ATA_ER_MCR      0x08    // Media change request
#define ATA_ER_ABRT     0x04    // Command aborted
#define ATA_ER_TK0NF    0x02    // Track 0 not found
#define ATA_ER_AMNF     0x01    // No address mark

#define ATA_CMD_READ_PIO          0x20
#define ATA_CMD_READ_PIO_EXT      0x24
#define ATA_CMD_READ_DMA          0xC8
#define ATA_CMD_READ_DMA_EXT      0x25
#define ATA_CMD_WRITE_PIO         0x30
#define ATA_CMD_WRITE_PIO_EXT     0x34
#define ATA_CMD_WRITE_DMA         0xCA
#define ATA_CMD_WRITE_DMA_EXT     0x35
#define ATA_CMD_CACHE_FLUSH       0xE7
#define ATA_CMD_CACHE_FLUSH_EXT   0xEA
#define ATA_CMD_PACKET            0xA0
#define ATA_CMD_IDENTIFY_PACKET   0xA1
#define ATA_CMD_IDENTIFY          0xEC
#define      ATAPI_CMD_READ       0xA8
#define      ATAPI_CMD_EJECT      0x1B

#define ATA_IDENT_DEVICETYPE   0
#define ATA_IDENT_CYLINDERS    2
#define ATA_IDENT_HEADS        6
#define ATA_IDENT_SECTORS      12
#define ATA_IDENT_SERIAL       20
#define ATA_IDENT_MODEL        54
#define ATA_IDENT_CAPABILITIES 98
#define ATA_IDENT_FIELDVALID   106
#define ATA_IDENT_MAX_LBA      120
#define ATA_IDENT_COMMANDSETS  164
#define ATA_IDENT_MAX_LBA_EXT  200

#define IDE_ATA        0x00
#define IDE_ATAPI      0x01
 
#define ATA_MASTER     0x00
#define ATA_SLAVE      0x01

#define ATA_REG_DATA       0x00
#define ATA_REG_ERROR      0x01
#define ATA_REG_FEATURES   0x01
#define ATA_REG_SECCOUNT0  0x02
#define ATA_REG_LBA0       0x03
#define ATA_REG_LBA1       0x04
#define ATA_REG_LBA2       0x05
#define ATA_REG_HDDEVSEL   0x06
#define ATA_REG_COMMAND    0x07
#define ATA_REG_STATUS     0x07
#define ATA_REG_SECCOUNT1  0x08
#define ATA_REG_LBA3       0x09
#define ATA_REG_LBA4       0x0A
#define ATA_REG_LBA5       0x0B
#define ATA_REG_CONTROL    0x0C
#define ATA_REG_ALTSTATUS  0x0C
#define ATA_REG_DEVADDRESS 0x0D

// Channels:
#define      ATA_PRIMARY      0x00
#define      ATA_SECONDARY    0x01
 
 // Directions:
#define      ATA_READ      0x00
#define      ATA_WRITE     0x01

#define REG_SECT_CT 2
#define REG_CYL_LO 3
#define REG_CYL_MID 4
#define REG_CYL_HI 5
#define REG_DEVSEL 6
#define REG_STAT_COM 7

/* End OsDevWiki Code */

#define BIT_ERR 0
#define BIT_BSY 7

#define PRIMARY_IRQ 14

#define ATADEV_PATAPI 1
#define ATADEV_SATAPI 2
#define ATADEV_PATA 3
#define ATADEV_SATA 4
#define ATADEV_UNKNOWN 5

#define ID_MASTER 0xA0
#define ID_SLAVE 0xB0

#define IDENTIFY 0xEC
#define LBA 0x40

#define BLOCK_SIZE 512

enum BlockDevType { MASS_STORAGE, PARTITION };

typedef struct BlockDev {
   uint64_t tot_length;
   int (*read_block)(struct BlockDev *dev, uint64_t blk_num, void *dst);
   uint32_t blk_size;
   enum BlockDevType type;
   const char *name;
   uint8_t fs_type;
   struct BlockDev *next;
} block_dev;

// TODO: actually put fields in this
typedef struct ATARequest {
} ata_request;

typedef struct ATABlockDev {
   block_dev dev;
   uint16_t ata_base, ata_ctl;
   uint8_t slave, irq;
   struct ata_request *req_head, *req_tail;
} ata_block_dev;

typedef struct {
   char b1;
   char b2;
   char b3;
   char b4;
   char b5;
   char b6;
   char unused2;
   char unused1;
} __attribute__ ((packed)) lba_address;

void setup_block_devices();
int BLK_register(struct BlockDev *dev);
ata_block_dev *ata_probe(uint16_t base, uint16_t ctrl, uint8_t slave,
                     uint8_t irq);
void read(void);

#endif
