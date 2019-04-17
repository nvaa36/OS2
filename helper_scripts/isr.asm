global isr_0
global isr_1

section .text
bits 64
isr_0:
   push rax
   mov rax, 0
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f30
   mov dword [0xb8008], 0x4f304f20
   outb 0x20 0x20
   pop rax
   iret

isr_1:
   push rax
   mov rax, 1
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f30
   mov dword [0xb8008], 0x4f314f20
   outb 0x20 0x20
   pop rax
   iret

isr_2:
   push rax
   mov rax, 2
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f30
   mov dword [0xb8008], 0x4f324f20
   outb 0x20 0x20
   pop rax
   iret

isr_3:
   push rax
   mov rax, 3
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f30
   mov dword [0xb8008], 0x4f334f20
   outb 0x20 0x20
   pop rax
   iret

isr_4:
   push rax
   mov rax, 4
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f30
   mov dword [0xb8008], 0x4f344f20
   outb 0x20 0x20
   pop rax
   iret

isr_5:
   push rax
   mov rax, 5
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f30
   mov dword [0xb8008], 0x4f354f20
   outb 0x20 0x20
   pop rax
   iret

isr_6:
   push rax
   mov rax, 6
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f30
   mov dword [0xb8008], 0x4f364f20
   outb 0x20 0x20
   pop rax
   iret

isr_7:
   push rax
   mov rax, 7
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f30
   mov dword [0xb8008], 0x4f374f20
   outb 0x20 0x20
   pop rax
   iret

isr_8:
   push rax
   mov rax, 8
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f30
   mov dword [0xb8008], 0x4f384f20
   outb 0x20 0x20
   pop rax
   iret

isr_9:
   push rax
   mov rax, 9
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f30
   mov dword [0xb8008], 0x4f394f20
   outb 0x20 0x20
   pop rax
   iret

isr_10:
   push rax
   mov rax, 10
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f31
   mov dword [0xb8008], 0x4f304f20
   outb 0x20 0x20
   pop rax
   iret

isr_11:
   push rax
   mov rax, 11
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f31
   mov dword [0xb8008], 0x4f314f20
   outb 0x20 0x20
   pop rax
   iret

isr_12:
   push rax
   mov rax, 12
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f31
   mov dword [0xb8008], 0x4f324f20
   outb 0x20 0x20
   pop rax
   iret

isr_13:
   push rax
   mov rax, 13
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f31
   mov dword [0xb8008], 0x4f334f20
   outb 0x20 0x20
   pop rax
   iret

isr_14:
   push rax
   mov rax, 14
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f31
   mov dword [0xb8008], 0x4f344f20
   outb 0x20 0x20
   pop rax
   iret

isr_15:
   push rax
   mov rax, 15
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f31
   mov dword [0xb8008], 0x4f354f20
   outb 0x20 0x20
   pop rax
   iret

isr_16:
   push rax
   mov rax, 16
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f31
   mov dword [0xb8008], 0x4f364f20
   outb 0x20 0x20
   pop rax
   iret

isr_17:
   push rax
   mov rax, 17
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f31
   mov dword [0xb8008], 0x4f374f20
   outb 0x20 0x20
   pop rax
   iret

isr_18:
   push rax
   mov rax, 18
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f31
   mov dword [0xb8008], 0x4f384f20
   outb 0x20 0x20
   pop rax
   iret

isr_19:
   push rax
   mov rax, 19
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f31
   mov dword [0xb8008], 0x4f394f20
   outb 0x20 0x20
   pop rax
   iret

isr_20:
   push rax
   mov rax, 20
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f32
   mov dword [0xb8008], 0x4f304f20
   outb 0x20 0x20
   pop rax
   iret

isr_21:
   push rax
   mov rax, 21
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f32
   mov dword [0xb8008], 0x4f314f20
   outb 0x20 0x20
   pop rax
   iret

isr_22:
   push rax
   mov rax, 22
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f32
   mov dword [0xb8008], 0x4f324f20
   outb 0x20 0x20
   pop rax
   iret

isr_23:
   push rax
   mov rax, 23
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f32
   mov dword [0xb8008], 0x4f334f20
   outb 0x20 0x20
   pop rax
   iret

isr_24:
   push rax
   mov rax, 24
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f32
   mov dword [0xb8008], 0x4f344f20
   outb 0x20 0x20
   pop rax
   iret

isr_25:
   push rax
   mov rax, 25
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f32
   mov dword [0xb8008], 0x4f354f20
   outb 0x20 0x20
   pop rax
   iret

isr_26:
   push rax
   mov rax, 26
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f32
   mov dword [0xb8008], 0x4f364f20
   outb 0x20 0x20
   pop rax
   iret

isr_27:
   push rax
   mov rax, 27
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f32
   mov dword [0xb8008], 0x4f374f20
   outb 0x20 0x20
   pop rax
   iret

isr_28:
   push rax
   mov rax, 28
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f32
   mov dword [0xb8008], 0x4f384f20
   outb 0x20 0x20
   pop rax
   iret

isr_29:
   push rax
   mov rax, 29
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f32
   mov dword [0xb8008], 0x4f394f20
   outb 0x20 0x20
   pop rax
   iret

isr_30:
   push rax
   mov rax, 30
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f33
   mov dword [0xb8008], 0x4f304f20
   outb 0x20 0x20
   pop rax
   iret

isr_31:
   push rax
   mov rax, 31
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f33
   mov dword [0xb8008], 0x4f314f20
   outb 0x20 0x20
   pop rax
   iret

isr_32:
   push rax
   mov rax, 32
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f33
   mov dword [0xb8008], 0x4f324f20
   outb 0x20 0x20
   pop rax
   iret

isr_33:
   push rax
   mov rax, 33
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f33
   mov dword [0xb8008], 0x4f334f20
   outb 0x20 0x20
   pop rax
   iret

isr_34:
   push rax
   mov rax, 34
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f33
   mov dword [0xb8008], 0x4f344f20
   outb 0x20 0x20
   pop rax
   iret

isr_35:
   push rax
   mov rax, 35
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f33
   mov dword [0xb8008], 0x4f354f20
   outb 0x20 0x20
   pop rax
   iret

isr_36:
   push rax
   mov rax, 36
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f33
   mov dword [0xb8008], 0x4f364f20
   outb 0x20 0x20
   pop rax
   iret

isr_37:
   push rax
   mov rax, 37
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f33
   mov dword [0xb8008], 0x4f374f20
   outb 0x20 0x20
   pop rax
   iret

isr_38:
   push rax
   mov rax, 38
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f33
   mov dword [0xb8008], 0x4f384f20
   outb 0x20 0x20
   pop rax
   iret

isr_39:
   push rax
   mov rax, 39
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f33
   mov dword [0xb8008], 0x4f394f20
   outb 0x20 0x20
   pop rax
   iret

isr_40:
   push rax
   mov rax, 40
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f34
   mov dword [0xb8008], 0x4f304f20
   outb 0x20 0x20
   pop rax
   iret

isr_41:
   push rax
   mov rax, 41
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f34
   mov dword [0xb8008], 0x4f314f20
   outb 0x20 0x20
   pop rax
   iret

isr_42:
   push rax
   mov rax, 42
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f34
   mov dword [0xb8008], 0x4f324f20
   outb 0x20 0x20
   pop rax
   iret

isr_43:
   push rax
   mov rax, 43
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f34
   mov dword [0xb8008], 0x4f334f20
   outb 0x20 0x20
   pop rax
   iret

isr_44:
   push rax
   mov rax, 44
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f34
   mov dword [0xb8008], 0x4f344f20
   outb 0x20 0x20
   pop rax
   iret

isr_45:
   push rax
   mov rax, 45
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f34
   mov dword [0xb8008], 0x4f354f20
   outb 0x20 0x20
   pop rax
   iret

isr_46:
   push rax
   mov rax, 46
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f34
   mov dword [0xb8008], 0x4f364f20
   outb 0x20 0x20
   pop rax
   iret

isr_47:
   push rax
   mov rax, 47
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f34
   mov dword [0xb8008], 0x4f374f20
   outb 0x20 0x20
   pop rax
   iret

isr_48:
   push rax
   mov rax, 48
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f34
   mov dword [0xb8008], 0x4f384f20
   outb 0x20 0x20
   pop rax
   iret

isr_49:
   push rax
   mov rax, 49
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f34
   mov dword [0xb8008], 0x4f394f20
   outb 0x20 0x20
   pop rax
   iret

isr_50:
   push rax
   mov rax, 50
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f35
   mov dword [0xb8008], 0x4f304f20
   outb 0x20 0x20
   pop rax
   iret

isr_51:
   push rax
   mov rax, 51
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f35
   mov dword [0xb8008], 0x4f314f20
   outb 0x20 0x20
   pop rax
   iret

isr_52:
   push rax
   mov rax, 52
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f35
   mov dword [0xb8008], 0x4f324f20
   outb 0x20 0x20
   pop rax
   iret

isr_53:
   push rax
   mov rax, 53
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f35
   mov dword [0xb8008], 0x4f334f20
   outb 0x20 0x20
   pop rax
   iret

isr_54:
   push rax
   mov rax, 54
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f35
   mov dword [0xb8008], 0x4f344f20
   outb 0x20 0x20
   pop rax
   iret

isr_55:
   push rax
   mov rax, 55
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f35
   mov dword [0xb8008], 0x4f354f20
   outb 0x20 0x20
   pop rax
   iret

isr_56:
   push rax
   mov rax, 56
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f35
   mov dword [0xb8008], 0x4f364f20
   outb 0x20 0x20
   pop rax
   iret

isr_57:
   push rax
   mov rax, 57
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f35
   mov dword [0xb8008], 0x4f374f20
   outb 0x20 0x20
   pop rax
   iret

isr_58:
   push rax
   mov rax, 58
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f35
   mov dword [0xb8008], 0x4f384f20
   outb 0x20 0x20
   pop rax
   iret

isr_59:
   push rax
   mov rax, 59
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f35
   mov dword [0xb8008], 0x4f394f20
   outb 0x20 0x20
   pop rax
   iret

isr_60:
   push rax
   mov rax, 60
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f36
   mov dword [0xb8008], 0x4f304f20
   outb 0x20 0x20
   pop rax
   iret

isr_61:
   push rax
   mov rax, 61
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f36
   mov dword [0xb8008], 0x4f314f20
   outb 0x20 0x20
   pop rax
   iret

isr_62:
   push rax
   mov rax, 62
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f36
   mov dword [0xb8008], 0x4f324f20
   outb 0x20 0x20
   pop rax
   iret

isr_63:
   push rax
   mov rax, 63
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f36
   mov dword [0xb8008], 0x4f334f20
   outb 0x20 0x20
   pop rax
   iret

isr_64:
   push rax
   mov rax, 64
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f36
   mov dword [0xb8008], 0x4f344f20
   outb 0x20 0x20
   pop rax
   iret

isr_65:
   push rax
   mov rax, 65
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f36
   mov dword [0xb8008], 0x4f354f20
   outb 0x20 0x20
   pop rax
   iret

isr_66:
   push rax
   mov rax, 66
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f36
   mov dword [0xb8008], 0x4f364f20
   outb 0x20 0x20
   pop rax
   iret

isr_67:
   push rax
   mov rax, 67
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f36
   mov dword [0xb8008], 0x4f374f20
   outb 0x20 0x20
   pop rax
   iret

isr_68:
   push rax
   mov rax, 68
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f36
   mov dword [0xb8008], 0x4f384f20
   outb 0x20 0x20
   pop rax
   iret

isr_69:
   push rax
   mov rax, 69
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f36
   mov dword [0xb8008], 0x4f394f20
   outb 0x20 0x20
   pop rax
   iret

isr_70:
   push rax
   mov rax, 70
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f37
   mov dword [0xb8008], 0x4f304f20
   outb 0x20 0x20
   pop rax
   iret

isr_71:
   push rax
   mov rax, 71
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f37
   mov dword [0xb8008], 0x4f314f20
   outb 0x20 0x20
   pop rax
   iret

isr_72:
   push rax
   mov rax, 72
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f37
   mov dword [0xb8008], 0x4f324f20
   outb 0x20 0x20
   pop rax
   iret

isr_73:
   push rax
   mov rax, 73
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f37
   mov dword [0xb8008], 0x4f334f20
   outb 0x20 0x20
   pop rax
   iret

isr_74:
   push rax
   mov rax, 74
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f37
   mov dword [0xb8008], 0x4f344f20
   outb 0x20 0x20
   pop rax
   iret

isr_75:
   push rax
   mov rax, 75
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f37
   mov dword [0xb8008], 0x4f354f20
   outb 0x20 0x20
   pop rax
   iret

isr_76:
   push rax
   mov rax, 76
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f37
   mov dword [0xb8008], 0x4f364f20
   outb 0x20 0x20
   pop rax
   iret

isr_77:
   push rax
   mov rax, 77
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f37
   mov dword [0xb8008], 0x4f374f20
   outb 0x20 0x20
   pop rax
   iret

isr_78:
   push rax
   mov rax, 78
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f37
   mov dword [0xb8008], 0x4f384f20
   outb 0x20 0x20
   pop rax
   iret

isr_79:
   push rax
   mov rax, 79
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f37
   mov dword [0xb8008], 0x4f394f20
   outb 0x20 0x20
   pop rax
   iret

isr_80:
   push rax
   mov rax, 80
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f38
   mov dword [0xb8008], 0x4f304f20
   outb 0x20 0x20
   pop rax
   iret

isr_81:
   push rax
   mov rax, 81
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f38
   mov dword [0xb8008], 0x4f314f20
   outb 0x20 0x20
   pop rax
   iret

isr_82:
   push rax
   mov rax, 82
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f38
   mov dword [0xb8008], 0x4f324f20
   outb 0x20 0x20
   pop rax
   iret

isr_83:
   push rax
   mov rax, 83
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f38
   mov dword [0xb8008], 0x4f334f20
   outb 0x20 0x20
   pop rax
   iret

isr_84:
   push rax
   mov rax, 84
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f38
   mov dword [0xb8008], 0x4f344f20
   outb 0x20 0x20
   pop rax
   iret

isr_85:
   push rax
   mov rax, 85
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f38
   mov dword [0xb8008], 0x4f354f20
   outb 0x20 0x20
   pop rax
   iret

isr_86:
   push rax
   mov rax, 86
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f38
   mov dword [0xb8008], 0x4f364f20
   outb 0x20 0x20
   pop rax
   iret

isr_87:
   push rax
   mov rax, 87
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f38
   mov dword [0xb8008], 0x4f374f20
   outb 0x20 0x20
   pop rax
   iret

isr_88:
   push rax
   mov rax, 88
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f38
   mov dword [0xb8008], 0x4f384f20
   outb 0x20 0x20
   pop rax
   iret

isr_89:
   push rax
   mov rax, 89
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f38
   mov dword [0xb8008], 0x4f394f20
   outb 0x20 0x20
   pop rax
   iret

isr_90:
   push rax
   mov rax, 90
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f39
   mov dword [0xb8008], 0x4f304f20
   outb 0x20 0x20
   pop rax
   iret

isr_91:
   push rax
   mov rax, 91
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f39
   mov dword [0xb8008], 0x4f314f20
   outb 0x20 0x20
   pop rax
   iret

isr_92:
   push rax
   mov rax, 92
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f39
   mov dword [0xb8008], 0x4f324f20
   outb 0x20 0x20
   pop rax
   iret

isr_93:
   push rax
   mov rax, 93
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f39
   mov dword [0xb8008], 0x4f334f20
   outb 0x20 0x20
   pop rax
   iret

isr_94:
   push rax
   mov rax, 94
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f39
   mov dword [0xb8008], 0x4f344f20
   outb 0x20 0x20
   pop rax
   iret

isr_95:
   push rax
   mov rax, 95
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f39
   mov dword [0xb8008], 0x4f354f20
   outb 0x20 0x20
   pop rax
   iret

isr_96:
   push rax
   mov rax, 96
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f39
   mov dword [0xb8008], 0x4f364f20
   outb 0x20 0x20
   pop rax
   iret

isr_97:
   push rax
   mov rax, 97
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f39
   mov dword [0xb8008], 0x4f374f20
   outb 0x20 0x20
   pop rax
   iret

isr_98:
   push rax
   mov rax, 98
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f39
   mov dword [0xb8008], 0x4f384f20
   outb 0x20 0x20
   pop rax
   iret

isr_99:
   push rax
   mov rax, 99
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f39
   mov dword [0xb8008], 0x4f394f20
   outb 0x20 0x20
   pop rax
   iret

isr_100:
   push rax
   mov rax, 100
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f30
   mov dword [0xb8008], 0x4f304f20
   outb 0x20 0x20
   pop rax
   iret

isr_101:
   push rax
   mov rax, 101
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f30
   mov dword [0xb8008], 0x4f314f20
   outb 0x20 0x20
   pop rax
   iret

isr_102:
   push rax
   mov rax, 102
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f30
   mov dword [0xb8008], 0x4f324f20
   outb 0x20 0x20
   pop rax
   iret

isr_103:
   push rax
   mov rax, 103
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f30
   mov dword [0xb8008], 0x4f334f20
   outb 0x20 0x20
   pop rax
   iret

isr_104:
   push rax
   mov rax, 104
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f30
   mov dword [0xb8008], 0x4f344f20
   outb 0x20 0x20
   pop rax
   iret

isr_105:
   push rax
   mov rax, 105
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f30
   mov dword [0xb8008], 0x4f354f20
   outb 0x20 0x20
   pop rax
   iret

isr_106:
   push rax
   mov rax, 106
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f30
   mov dword [0xb8008], 0x4f364f20
   outb 0x20 0x20
   pop rax
   iret

isr_107:
   push rax
   mov rax, 107
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f30
   mov dword [0xb8008], 0x4f374f20
   outb 0x20 0x20
   pop rax
   iret

isr_108:
   push rax
   mov rax, 108
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f30
   mov dword [0xb8008], 0x4f384f20
   outb 0x20 0x20
   pop rax
   iret

isr_109:
   push rax
   mov rax, 109
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f30
   mov dword [0xb8008], 0x4f394f20
   outb 0x20 0x20
   pop rax
   iret

isr_110:
   push rax
   mov rax, 110
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f31
   mov dword [0xb8008], 0x4f304f20
   outb 0x20 0x20
   pop rax
   iret

isr_111:
   push rax
   mov rax, 111
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f31
   mov dword [0xb8008], 0x4f314f20
   outb 0x20 0x20
   pop rax
   iret

isr_112:
   push rax
   mov rax, 112
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f31
   mov dword [0xb8008], 0x4f324f20
   outb 0x20 0x20
   pop rax
   iret

isr_113:
   push rax
   mov rax, 113
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f31
   mov dword [0xb8008], 0x4f334f20
   outb 0x20 0x20
   pop rax
   iret

isr_114:
   push rax
   mov rax, 114
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f31
   mov dword [0xb8008], 0x4f344f20
   outb 0x20 0x20
   pop rax
   iret

isr_115:
   push rax
   mov rax, 115
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f31
   mov dword [0xb8008], 0x4f354f20
   outb 0x20 0x20
   pop rax
   iret

isr_116:
   push rax
   mov rax, 116
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f31
   mov dword [0xb8008], 0x4f364f20
   outb 0x20 0x20
   pop rax
   iret

isr_117:
   push rax
   mov rax, 117
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f31
   mov dword [0xb8008], 0x4f374f20
   outb 0x20 0x20
   pop rax
   iret

isr_118:
   push rax
   mov rax, 118
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f31
   mov dword [0xb8008], 0x4f384f20
   outb 0x20 0x20
   pop rax
   iret

isr_119:
   push rax
   mov rax, 119
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f31
   mov dword [0xb8008], 0x4f394f20
   outb 0x20 0x20
   pop rax
   iret

isr_120:
   push rax
   mov rax, 120
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f32
   mov dword [0xb8008], 0x4f304f20
   outb 0x20 0x20
   pop rax
   iret

isr_121:
   push rax
   mov rax, 121
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f32
   mov dword [0xb8008], 0x4f314f20
   outb 0x20 0x20
   pop rax
   iret

isr_122:
   push rax
   mov rax, 122
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f32
   mov dword [0xb8008], 0x4f324f20
   outb 0x20 0x20
   pop rax
   iret

isr_123:
   push rax
   mov rax, 123
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f32
   mov dword [0xb8008], 0x4f334f20
   outb 0x20 0x20
   pop rax
   iret

isr_124:
   push rax
   mov rax, 124
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f32
   mov dword [0xb8008], 0x4f344f20
   outb 0x20 0x20
   pop rax
   iret

isr_125:
   push rax
   mov rax, 125
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f32
   mov dword [0xb8008], 0x4f354f20
   outb 0x20 0x20
   pop rax
   iret

isr_126:
   push rax
   mov rax, 126
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f32
   mov dword [0xb8008], 0x4f364f20
   outb 0x20 0x20
   pop rax
   iret

isr_127:
   push rax
   mov rax, 127
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f32
   mov dword [0xb8008], 0x4f374f20
   outb 0x20 0x20
   pop rax
   iret

isr_128:
   push rax
   mov rax, 128
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f32
   mov dword [0xb8008], 0x4f384f20
   outb 0x20 0x20
   pop rax
   iret

isr_129:
   push rax
   mov rax, 129
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f32
   mov dword [0xb8008], 0x4f394f20
   outb 0x20 0x20
   pop rax
   iret

isr_130:
   push rax
   mov rax, 130
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f33
   mov dword [0xb8008], 0x4f304f20
   outb 0x20 0x20
   pop rax
   iret

isr_131:
   push rax
   mov rax, 131
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f33
   mov dword [0xb8008], 0x4f314f20
   outb 0x20 0x20
   pop rax
   iret

isr_132:
   push rax
   mov rax, 132
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f33
   mov dword [0xb8008], 0x4f324f20
   outb 0x20 0x20
   pop rax
   iret

isr_133:
   push rax
   mov rax, 133
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f33
   mov dword [0xb8008], 0x4f334f20
   outb 0x20 0x20
   pop rax
   iret

isr_134:
   push rax
   mov rax, 134
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f33
   mov dword [0xb8008], 0x4f344f20
   outb 0x20 0x20
   pop rax
   iret

isr_135:
   push rax
   mov rax, 135
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f33
   mov dword [0xb8008], 0x4f354f20
   outb 0x20 0x20
   pop rax
   iret

isr_136:
   push rax
   mov rax, 136
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f33
   mov dword [0xb8008], 0x4f364f20
   outb 0x20 0x20
   pop rax
   iret

isr_137:
   push rax
   mov rax, 137
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f33
   mov dword [0xb8008], 0x4f374f20
   outb 0x20 0x20
   pop rax
   iret

isr_138:
   push rax
   mov rax, 138
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f33
   mov dword [0xb8008], 0x4f384f20
   outb 0x20 0x20
   pop rax
   iret

isr_139:
   push rax
   mov rax, 139
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f33
   mov dword [0xb8008], 0x4f394f20
   outb 0x20 0x20
   pop rax
   iret

isr_140:
   push rax
   mov rax, 140
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f34
   mov dword [0xb8008], 0x4f304f20
   outb 0x20 0x20
   pop rax
   iret

isr_141:
   push rax
   mov rax, 141
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f34
   mov dword [0xb8008], 0x4f314f20
   outb 0x20 0x20
   pop rax
   iret

isr_142:
   push rax
   mov rax, 142
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f34
   mov dword [0xb8008], 0x4f324f20
   outb 0x20 0x20
   pop rax
   iret

isr_143:
   push rax
   mov rax, 143
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f34
   mov dword [0xb8008], 0x4f334f20
   outb 0x20 0x20
   pop rax
   iret

isr_144:
   push rax
   mov rax, 144
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f34
   mov dword [0xb8008], 0x4f344f20
   outb 0x20 0x20
   pop rax
   iret

isr_145:
   push rax
   mov rax, 145
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f34
   mov dword [0xb8008], 0x4f354f20
   outb 0x20 0x20
   pop rax
   iret

isr_146:
   push rax
   mov rax, 146
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f34
   mov dword [0xb8008], 0x4f364f20
   outb 0x20 0x20
   pop rax
   iret

isr_147:
   push rax
   mov rax, 147
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f34
   mov dword [0xb8008], 0x4f374f20
   outb 0x20 0x20
   pop rax
   iret

isr_148:
   push rax
   mov rax, 148
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f34
   mov dword [0xb8008], 0x4f384f20
   outb 0x20 0x20
   pop rax
   iret

isr_149:
   push rax
   mov rax, 149
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f34
   mov dword [0xb8008], 0x4f394f20
   outb 0x20 0x20
   pop rax
   iret

isr_150:
   push rax
   mov rax, 150
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f35
   mov dword [0xb8008], 0x4f304f20
   outb 0x20 0x20
   pop rax
   iret

isr_151:
   push rax
   mov rax, 151
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f35
   mov dword [0xb8008], 0x4f314f20
   outb 0x20 0x20
   pop rax
   iret

isr_152:
   push rax
   mov rax, 152
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f35
   mov dword [0xb8008], 0x4f324f20
   outb 0x20 0x20
   pop rax
   iret

isr_153:
   push rax
   mov rax, 153
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f35
   mov dword [0xb8008], 0x4f334f20
   outb 0x20 0x20
   pop rax
   iret

isr_154:
   push rax
   mov rax, 154
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f35
   mov dword [0xb8008], 0x4f344f20
   outb 0x20 0x20
   pop rax
   iret

isr_155:
   push rax
   mov rax, 155
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f35
   mov dword [0xb8008], 0x4f354f20
   outb 0x20 0x20
   pop rax
   iret

isr_156:
   push rax
   mov rax, 156
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f35
   mov dword [0xb8008], 0x4f364f20
   outb 0x20 0x20
   pop rax
   iret

isr_157:
   push rax
   mov rax, 157
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f35
   mov dword [0xb8008], 0x4f374f20
   outb 0x20 0x20
   pop rax
   iret

isr_158:
   push rax
   mov rax, 158
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f35
   mov dword [0xb8008], 0x4f384f20
   outb 0x20 0x20
   pop rax
   iret

isr_159:
   push rax
   mov rax, 159
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f35
   mov dword [0xb8008], 0x4f394f20
   outb 0x20 0x20
   pop rax
   iret

isr_160:
   push rax
   mov rax, 160
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f36
   mov dword [0xb8008], 0x4f304f20
   outb 0x20 0x20
   pop rax
   iret

isr_161:
   push rax
   mov rax, 161
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f36
   mov dword [0xb8008], 0x4f314f20
   outb 0x20 0x20
   pop rax
   iret

isr_162:
   push rax
   mov rax, 162
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f36
   mov dword [0xb8008], 0x4f324f20
   outb 0x20 0x20
   pop rax
   iret

isr_163:
   push rax
   mov rax, 163
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f36
   mov dword [0xb8008], 0x4f334f20
   outb 0x20 0x20
   pop rax
   iret

isr_164:
   push rax
   mov rax, 164
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f36
   mov dword [0xb8008], 0x4f344f20
   outb 0x20 0x20
   pop rax
   iret

isr_165:
   push rax
   mov rax, 165
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f36
   mov dword [0xb8008], 0x4f354f20
   outb 0x20 0x20
   pop rax
   iret

isr_166:
   push rax
   mov rax, 166
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f36
   mov dword [0xb8008], 0x4f364f20
   outb 0x20 0x20
   pop rax
   iret

isr_167:
   push rax
   mov rax, 167
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f36
   mov dword [0xb8008], 0x4f374f20
   outb 0x20 0x20
   pop rax
   iret

isr_168:
   push rax
   mov rax, 168
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f36
   mov dword [0xb8008], 0x4f384f20
   outb 0x20 0x20
   pop rax
   iret

isr_169:
   push rax
   mov rax, 169
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f36
   mov dword [0xb8008], 0x4f394f20
   outb 0x20 0x20
   pop rax
   iret

isr_170:
   push rax
   mov rax, 170
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f37
   mov dword [0xb8008], 0x4f304f20
   outb 0x20 0x20
   pop rax
   iret

isr_171:
   push rax
   mov rax, 171
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f37
   mov dword [0xb8008], 0x4f314f20
   outb 0x20 0x20
   pop rax
   iret

isr_172:
   push rax
   mov rax, 172
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f37
   mov dword [0xb8008], 0x4f324f20
   outb 0x20 0x20
   pop rax
   iret

isr_173:
   push rax
   mov rax, 173
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f37
   mov dword [0xb8008], 0x4f334f20
   outb 0x20 0x20
   pop rax
   iret

isr_174:
   push rax
   mov rax, 174
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f37
   mov dword [0xb8008], 0x4f344f20
   outb 0x20 0x20
   pop rax
   iret

isr_175:
   push rax
   mov rax, 175
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f37
   mov dword [0xb8008], 0x4f354f20
   outb 0x20 0x20
   pop rax
   iret

isr_176:
   push rax
   mov rax, 176
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f37
   mov dword [0xb8008], 0x4f364f20
   outb 0x20 0x20
   pop rax
   iret

isr_177:
   push rax
   mov rax, 177
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f37
   mov dword [0xb8008], 0x4f374f20
   outb 0x20 0x20
   pop rax
   iret

isr_178:
   push rax
   mov rax, 178
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f37
   mov dword [0xb8008], 0x4f384f20
   outb 0x20 0x20
   pop rax
   iret

isr_179:
   push rax
   mov rax, 179
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f37
   mov dword [0xb8008], 0x4f394f20
   outb 0x20 0x20
   pop rax
   iret

isr_180:
   push rax
   mov rax, 180
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f38
   mov dword [0xb8008], 0x4f304f20
   outb 0x20 0x20
   pop rax
   iret

isr_181:
   push rax
   mov rax, 181
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f38
   mov dword [0xb8008], 0x4f314f20
   outb 0x20 0x20
   pop rax
   iret

isr_182:
   push rax
   mov rax, 182
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f38
   mov dword [0xb8008], 0x4f324f20
   outb 0x20 0x20
   pop rax
   iret

isr_183:
   push rax
   mov rax, 183
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f38
   mov dword [0xb8008], 0x4f334f20
   outb 0x20 0x20
   pop rax
   iret

isr_184:
   push rax
   mov rax, 184
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f38
   mov dword [0xb8008], 0x4f344f20
   outb 0x20 0x20
   pop rax
   iret

isr_185:
   push rax
   mov rax, 185
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f38
   mov dword [0xb8008], 0x4f354f20
   outb 0x20 0x20
   pop rax
   iret

isr_186:
   push rax
   mov rax, 186
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f38
   mov dword [0xb8008], 0x4f364f20
   outb 0x20 0x20
   pop rax
   iret

isr_187:
   push rax
   mov rax, 187
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f38
   mov dword [0xb8008], 0x4f374f20
   outb 0x20 0x20
   pop rax
   iret

isr_188:
   push rax
   mov rax, 188
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f38
   mov dword [0xb8008], 0x4f384f20
   outb 0x20 0x20
   pop rax
   iret

isr_189:
   push rax
   mov rax, 189
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f38
   mov dword [0xb8008], 0x4f394f20
   outb 0x20 0x20
   pop rax
   iret

isr_190:
   push rax
   mov rax, 190
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f39
   mov dword [0xb8008], 0x4f304f20
   outb 0x20 0x20
   pop rax
   iret

isr_191:
   push rax
   mov rax, 191
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f39
   mov dword [0xb8008], 0x4f314f20
   outb 0x20 0x20
   pop rax
   iret

isr_192:
   push rax
   mov rax, 192
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f39
   mov dword [0xb8008], 0x4f324f20
   outb 0x20 0x20
   pop rax
   iret

isr_193:
   push rax
   mov rax, 193
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f39
   mov dword [0xb8008], 0x4f334f20
   outb 0x20 0x20
   pop rax
   iret

isr_194:
   push rax
   mov rax, 194
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f39
   mov dword [0xb8008], 0x4f344f20
   outb 0x20 0x20
   pop rax
   iret

isr_195:
   push rax
   mov rax, 195
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f39
   mov dword [0xb8008], 0x4f354f20
   outb 0x20 0x20
   pop rax
   iret

isr_196:
   push rax
   mov rax, 196
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f39
   mov dword [0xb8008], 0x4f364f20
   outb 0x20 0x20
   pop rax
   iret

isr_197:
   push rax
   mov rax, 197
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f39
   mov dword [0xb8008], 0x4f374f20
   outb 0x20 0x20
   pop rax
   iret

isr_198:
   push rax
   mov rax, 198
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f39
   mov dword [0xb8008], 0x4f384f20
   outb 0x20 0x20
   pop rax
   iret

isr_199:
   push rax
   mov rax, 199
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f39
   mov dword [0xb8008], 0x4f394f20
   outb 0x20 0x20
   pop rax
   iret

isr_200:
   push rax
   mov rax, 200
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f30
   mov dword [0xb8008], 0x4f304f20
   outb 0x20 0x20
   pop rax
   iret

isr_201:
   push rax
   mov rax, 201
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f30
   mov dword [0xb8008], 0x4f314f20
   outb 0x20 0x20
   pop rax
   iret

isr_202:
   push rax
   mov rax, 202
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f30
   mov dword [0xb8008], 0x4f324f20
   outb 0x20 0x20
   pop rax
   iret

isr_203:
   push rax
   mov rax, 203
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f30
   mov dword [0xb8008], 0x4f334f20
   outb 0x20 0x20
   pop rax
   iret

isr_204:
   push rax
   mov rax, 204
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f30
   mov dword [0xb8008], 0x4f344f20
   outb 0x20 0x20
   pop rax
   iret

isr_205:
   push rax
   mov rax, 205
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f30
   mov dword [0xb8008], 0x4f354f20
   outb 0x20 0x20
   pop rax
   iret

isr_206:
   push rax
   mov rax, 206
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f30
   mov dword [0xb8008], 0x4f364f20
   outb 0x20 0x20
   pop rax
   iret

isr_207:
   push rax
   mov rax, 207
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f30
   mov dword [0xb8008], 0x4f374f20
   outb 0x20 0x20
   pop rax
   iret

isr_208:
   push rax
   mov rax, 208
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f30
   mov dword [0xb8008], 0x4f384f20
   outb 0x20 0x20
   pop rax
   iret

isr_209:
   push rax
   mov rax, 209
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f30
   mov dword [0xb8008], 0x4f394f20
   outb 0x20 0x20
   pop rax
   iret

isr_210:
   push rax
   mov rax, 210
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f31
   mov dword [0xb8008], 0x4f304f20
   outb 0x20 0x20
   pop rax
   iret

isr_211:
   push rax
   mov rax, 211
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f31
   mov dword [0xb8008], 0x4f314f20
   outb 0x20 0x20
   pop rax
   iret

isr_212:
   push rax
   mov rax, 212
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f31
   mov dword [0xb8008], 0x4f324f20
   outb 0x20 0x20
   pop rax
   iret

isr_213:
   push rax
   mov rax, 213
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f31
   mov dword [0xb8008], 0x4f334f20
   outb 0x20 0x20
   pop rax
   iret

isr_214:
   push rax
   mov rax, 214
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f31
   mov dword [0xb8008], 0x4f344f20
   outb 0x20 0x20
   pop rax
   iret

isr_215:
   push rax
   mov rax, 215
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f31
   mov dword [0xb8008], 0x4f354f20
   outb 0x20 0x20
   pop rax
   iret

isr_216:
   push rax
   mov rax, 216
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f31
   mov dword [0xb8008], 0x4f364f20
   outb 0x20 0x20
   pop rax
   iret

isr_217:
   push rax
   mov rax, 217
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f31
   mov dword [0xb8008], 0x4f374f20
   outb 0x20 0x20
   pop rax
   iret

isr_218:
   push rax
   mov rax, 218
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f31
   mov dword [0xb8008], 0x4f384f20
   outb 0x20 0x20
   pop rax
   iret

isr_219:
   push rax
   mov rax, 219
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f31
   mov dword [0xb8008], 0x4f394f20
   outb 0x20 0x20
   pop rax
   iret

isr_220:
   push rax
   mov rax, 220
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f32
   mov dword [0xb8008], 0x4f304f20
   outb 0x20 0x20
   pop rax
   iret

isr_221:
   push rax
   mov rax, 221
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f32
   mov dword [0xb8008], 0x4f314f20
   outb 0x20 0x20
   pop rax
   iret

isr_222:
   push rax
   mov rax, 222
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f32
   mov dword [0xb8008], 0x4f324f20
   outb 0x20 0x20
   pop rax
   iret

isr_223:
   push rax
   mov rax, 223
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f32
   mov dword [0xb8008], 0x4f334f20
   outb 0x20 0x20
   pop rax
   iret

isr_224:
   push rax
   mov rax, 224
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f32
   mov dword [0xb8008], 0x4f344f20
   outb 0x20 0x20
   pop rax
   iret

isr_225:
   push rax
   mov rax, 225
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f32
   mov dword [0xb8008], 0x4f354f20
   outb 0x20 0x20
   pop rax
   iret

isr_226:
   push rax
   mov rax, 226
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f32
   mov dword [0xb8008], 0x4f364f20
   outb 0x20 0x20
   pop rax
   iret

isr_227:
   push rax
   mov rax, 227
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f32
   mov dword [0xb8008], 0x4f374f20
   outb 0x20 0x20
   pop rax
   iret

isr_228:
   push rax
   mov rax, 228
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f32
   mov dword [0xb8008], 0x4f384f20
   outb 0x20 0x20
   pop rax
   iret

isr_229:
   push rax
   mov rax, 229
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f32
   mov dword [0xb8008], 0x4f394f20
   outb 0x20 0x20
   pop rax
   iret

isr_230:
   push rax
   mov rax, 230
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f33
   mov dword [0xb8008], 0x4f304f20
   outb 0x20 0x20
   pop rax
   iret

isr_231:
   push rax
   mov rax, 231
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f33
   mov dword [0xb8008], 0x4f314f20
   outb 0x20 0x20
   pop rax
   iret

isr_232:
   push rax
   mov rax, 232
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f33
   mov dword [0xb8008], 0x4f324f20
   outb 0x20 0x20
   pop rax
   iret

isr_233:
   push rax
   mov rax, 233
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f33
   mov dword [0xb8008], 0x4f334f20
   outb 0x20 0x20
   pop rax
   iret

isr_234:
   push rax
   mov rax, 234
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f33
   mov dword [0xb8008], 0x4f344f20
   outb 0x20 0x20
   pop rax
   iret

isr_235:
   push rax
   mov rax, 235
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f33
   mov dword [0xb8008], 0x4f354f20
   outb 0x20 0x20
   pop rax
   iret

isr_236:
   push rax
   mov rax, 236
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f33
   mov dword [0xb8008], 0x4f364f20
   outb 0x20 0x20
   pop rax
   iret

isr_237:
   push rax
   mov rax, 237
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f33
   mov dword [0xb8008], 0x4f374f20
   outb 0x20 0x20
   pop rax
   iret

isr_238:
   push rax
   mov rax, 238
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f33
   mov dword [0xb8008], 0x4f384f20
   outb 0x20 0x20
   pop rax
   iret

isr_239:
   push rax
   mov rax, 239
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f33
   mov dword [0xb8008], 0x4f394f20
   outb 0x20 0x20
   pop rax
   iret

isr_240:
   push rax
   mov rax, 240
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f34
   mov dword [0xb8008], 0x4f304f20
   outb 0x20 0x20
   pop rax
   iret

isr_241:
   push rax
   mov rax, 241
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f34
   mov dword [0xb8008], 0x4f314f20
   outb 0x20 0x20
   pop rax
   iret

isr_242:
   push rax
   mov rax, 242
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f34
   mov dword [0xb8008], 0x4f324f20
   outb 0x20 0x20
   pop rax
   iret

isr_243:
   push rax
   mov rax, 243
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f34
   mov dword [0xb8008], 0x4f334f20
   outb 0x20 0x20
   pop rax
   iret

isr_244:
   push rax
   mov rax, 244
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f34
   mov dword [0xb8008], 0x4f344f20
   outb 0x20 0x20
   pop rax
   iret

isr_245:
   push rax
   mov rax, 245
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f34
   mov dword [0xb8008], 0x4f354f20
   outb 0x20 0x20
   pop rax
   iret

isr_246:
   push rax
   mov rax, 246
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f34
   mov dword [0xb8008], 0x4f364f20
   outb 0x20 0x20
   pop rax
   iret

isr_247:
   push rax
   mov rax, 247
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f34
   mov dword [0xb8008], 0x4f374f20
   outb 0x20 0x20
   pop rax
   iret

isr_248:
   push rax
   mov rax, 248
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f34
   mov dword [0xb8008], 0x4f384f20
   outb 0x20 0x20
   pop rax
   iret

isr_249:
   push rax
   mov rax, 249
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f34
   mov dword [0xb8008], 0x4f394f20
   outb 0x20 0x20
   pop rax
   iret

isr_250:
   push rax
   mov rax, 250
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f35
   mov dword [0xb8008], 0x4f304f20
   outb 0x20 0x20
   pop rax
   iret

isr_251:
   push rax
   mov rax, 251
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f35
   mov dword [0xb8008], 0x4f314f20
   outb 0x20 0x20
   pop rax
   iret

isr_252:
   push rax
   mov rax, 252
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f35
   mov dword [0xb8008], 0x4f324f20
   outb 0x20 0x20
   pop rax
   iret

isr_253:
   push rax
   mov rax, 253
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f35
   mov dword [0xb8008], 0x4f334f20
   outb 0x20 0x20
   pop rax
   iret

isr_254:
   push rax
   mov rax, 254
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f35
   mov dword [0xb8008], 0x4f344f20
   outb 0x20 0x20
   pop rax
   iret

