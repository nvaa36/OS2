global isr_0
global isr_1

section .text
bits 64
isr_0:
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   hlt