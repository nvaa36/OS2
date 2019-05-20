#ifndef SETUP_KB_H
#define SETUP_KB_H

#define PS2_DATA 0x60
#define PS2_CMD 0x64
#define PS2_STATUS PS2_CMD
#define PS2_STATUS_OUTPUT 1
#define PS2_STATUS_INPUT (1 << 1)

#define GETSET_SCANSET 0xF0

/* Commands */
#define READ_CONF 0x20
#define WRITE_CONF 0x60
#define DISABLE_P2 0xA7
#define DISABLE_P1 0xAD
#define ENABLE_P1 0xAE
#define ENABLE_I_P1 0xAE

#define RESET 0xFF
#define ENABLE 0xF4

/* Config bits */
#define PS2_INT1_BIT 1
#define PS2_INT2_BIT (1 << 1)
#define PS2_PT_BIT (1 << 6)
#define PS2_CLCK1_BIT (1 << 4)
#define PS2_CLCK2_BIT (1 << 5)

/* KB special bytes */
#define PASSED 0xAA
#define ACK 0xFA
#define RESEND 0xFE

#define SCANCODE_SET 2

void setup_keyboard();
unsigned char ps2_poll_read();
void ps2_poll_write(unsigned char value);
void ps2_poll_cmd_write(unsigned char value);
void kb_poll_write(unsigned char data);

#endif
