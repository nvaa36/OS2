global isr_0
global isr_1

extern isr_normal
extern isr_errcode

section .text
bits 64
isr_0:
   push rdi
   mov rdi, 0
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f30
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   iret
isr_1:
   push rdi
   mov rdi, 1
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f30
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   iret
isr_2:
   push rdi
   mov rdi, 2
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f30
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   iret
isr_3:
   push rdi
   mov rdi, 3
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f30
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   iret
isr_4:
   push rdi
   mov rdi, 4
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f30
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   iret
isr_5:
   push rdi
   mov rdi, 5
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f30
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   iret
isr_6:
   push rdi
   mov rdi, 6
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f30
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   iret
isr_7:
   push rdi
   mov rdi, 7
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f30
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   iret
isr_8:
   push rdi
   push rsi
   mov rdi, 8
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f30
   mov dword [0xb8008], 0x4f384f20
   call isr_errcode
   pop rdi
   pop rsi
   iret
isr_9:
   push rdi
   mov rdi, 9
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f30
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   iret
isr_10:
   push rdi
   push rsi
   mov rdi, 10
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f31
   mov dword [0xb8008], 0x4f304f20
   call isr_errcode
   pop rdi
   pop rsi
   iret
isr_11:
   push rdi
   push rsi
   mov rdi, 11
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f31
   mov dword [0xb8008], 0x4f314f20
   call isr_errcode
   pop rdi
   pop rsi
   iret
isr_12:
   push rdi
   push rsi
   mov rdi, 12
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f31
   mov dword [0xb8008], 0x4f324f20
   call isr_errcode
   pop rdi
   pop rsi
   iret
isr_13:
   push rdi
   push rsi
   mov rdi, 13
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f31
   mov dword [0xb8008], 0x4f334f20
   call isr_errcode
   pop rdi
   pop rsi
   iret
isr_14:
   push rdi
   push rsi
   mov rdi, 14
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f31
   mov dword [0xb8008], 0x4f344f20
   call isr_errcode
   pop rdi
   pop rsi
   iret
isr_15:
   push rdi
   mov rdi, 15
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f31
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   iret
isr_16:
   push rdi
   mov rdi, 16
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f31
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   iret
isr_17:
   push rdi
   push rsi
   mov rdi, 17
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f31
   mov dword [0xb8008], 0x4f374f20
   call isr_errcode
   pop rdi
   pop rsi
   iret
isr_18:
   push rdi
   mov rdi, 18
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f31
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   iret
isr_19:
   push rdi
   mov rdi, 19
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f31
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   iret
isr_20:
   push rdi
   mov rdi, 20
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f32
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   iret
isr_21:
   push rdi
   mov rdi, 21
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f32
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   iret
isr_22:
   push rdi
   mov rdi, 22
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f32
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   iret
isr_23:
   push rdi
   mov rdi, 23
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f32
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   iret
isr_24:
   push rdi
   mov rdi, 24
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f32
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   iret
isr_25:
   push rdi
   mov rdi, 25
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f32
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   iret
isr_26:
   push rdi
   mov rdi, 26
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f32
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   iret
isr_27:
   push rdi
   mov rdi, 27
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f32
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   iret
isr_28:
   push rdi
   mov rdi, 28
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f32
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   iret
isr_29:
   push rdi
   mov rdi, 29
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f32
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   iret
isr_30:
   push rdi
   mov rdi, 30
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f33
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   iret
isr_31:
   push rdi
   mov rdi, 31
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f33
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   iret
isr_32:
   push rdi
   mov rdi, 32
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f33
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   iret
isr_33:
   push rdi
   mov rdi, 33
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f33
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   iret
isr_34:
   push rdi
   mov rdi, 34
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f33
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   iret
isr_35:
   push rdi
   mov rdi, 35
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f33
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   iret
isr_36:
   push rdi
   mov rdi, 36
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f33
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   iret
isr_37:
   push rdi
   mov rdi, 37
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f33
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   iret
isr_38:
   push rdi
   mov rdi, 38
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f33
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   iret
isr_39:
   push rdi
   mov rdi, 39
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f33
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   iret
isr_40:
   push rdi
   mov rdi, 40
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f34
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   iret
isr_41:
   push rdi
   mov rdi, 41
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f34
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   iret
isr_42:
   push rdi
   mov rdi, 42
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f34
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   iret
isr_43:
   push rdi
   mov rdi, 43
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f34
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   iret
isr_44:
   push rdi
   mov rdi, 44
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f34
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   iret
isr_45:
   push rdi
   mov rdi, 45
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f34
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   iret
isr_46:
   push rdi
   mov rdi, 46
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f34
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   iret
isr_47:
   push rdi
   mov rdi, 47
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f34
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   iret
isr_48:
   push rdi
   mov rdi, 48
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f34
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   iret
isr_49:
   push rdi
   mov rdi, 49
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f34
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   iret
isr_50:
   push rdi
   mov rdi, 50
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f35
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   iret
isr_51:
   push rdi
   mov rdi, 51
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f35
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   iret
isr_52:
   push rdi
   mov rdi, 52
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f35
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   iret
isr_53:
   push rdi
   mov rdi, 53
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f35
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   iret
isr_54:
   push rdi
   mov rdi, 54
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f35
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   iret
isr_55:
   push rdi
   mov rdi, 55
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f35
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   iret
isr_56:
   push rdi
   mov rdi, 56
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f35
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   iret
isr_57:
   push rdi
   mov rdi, 57
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f35
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   iret
isr_58:
   push rdi
   mov rdi, 58
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f35
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   iret
isr_59:
   push rdi
   mov rdi, 59
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f35
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   iret
isr_60:
   push rdi
   mov rdi, 60
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f36
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   iret
isr_61:
   push rdi
   mov rdi, 61
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f36
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   iret
isr_62:
   push rdi
   mov rdi, 62
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f36
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   iret
isr_63:
   push rdi
   mov rdi, 63
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f36
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   iret
isr_64:
   push rdi
   mov rdi, 64
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f36
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   iret
isr_65:
   push rdi
   mov rdi, 65
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f36
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   iret
isr_66:
   push rdi
   mov rdi, 66
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f36
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   iret
isr_67:
   push rdi
   mov rdi, 67
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f36
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   iret
isr_68:
   push rdi
   mov rdi, 68
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f36
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   iret
isr_69:
   push rdi
   mov rdi, 69
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f36
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   iret
isr_70:
   push rdi
   mov rdi, 70
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f37
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   iret
isr_71:
   push rdi
   mov rdi, 71
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f37
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   iret
isr_72:
   push rdi
   mov rdi, 72
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f37
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   iret
isr_73:
   push rdi
   mov rdi, 73
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f37
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   iret
isr_74:
   push rdi
   mov rdi, 74
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f37
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   iret
isr_75:
   push rdi
   mov rdi, 75
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f37
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   iret
isr_76:
   push rdi
   mov rdi, 76
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f37
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   iret
isr_77:
   push rdi
   mov rdi, 77
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f37
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   iret
isr_78:
   push rdi
   mov rdi, 78
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f37
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   iret
isr_79:
   push rdi
   mov rdi, 79
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f37
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   iret
isr_80:
   push rdi
   mov rdi, 80
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f38
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   iret
isr_81:
   push rdi
   mov rdi, 81
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f38
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   iret
isr_82:
   push rdi
   mov rdi, 82
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f38
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   iret
isr_83:
   push rdi
   mov rdi, 83
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f38
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   iret
isr_84:
   push rdi
   mov rdi, 84
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f38
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   iret
isr_85:
   push rdi
   mov rdi, 85
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f38
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   iret
isr_86:
   push rdi
   mov rdi, 86
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f38
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   iret
isr_87:
   push rdi
   mov rdi, 87
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f38
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   iret
isr_88:
   push rdi
   mov rdi, 88
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f38
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   iret
isr_89:
   push rdi
   mov rdi, 89
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f38
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   iret
isr_90:
   push rdi
   mov rdi, 90
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f39
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   iret
isr_91:
   push rdi
   mov rdi, 91
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f39
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   iret
isr_92:
   push rdi
   mov rdi, 92
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f39
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   iret
isr_93:
   push rdi
   mov rdi, 93
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f39
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   iret
isr_94:
   push rdi
   mov rdi, 94
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f39
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   iret
isr_95:
   push rdi
   mov rdi, 95
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f39
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   iret
isr_96:
   push rdi
   mov rdi, 96
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f39
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   iret
isr_97:
   push rdi
   mov rdi, 97
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f39
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   iret
isr_98:
   push rdi
   mov rdi, 98
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f39
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   iret
isr_99:
   push rdi
   mov rdi, 99
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f39
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   iret
isr_100:
   push rdi
   mov rdi, 100
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f30
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   iret
isr_101:
   push rdi
   mov rdi, 101
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f30
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   iret
isr_102:
   push rdi
   mov rdi, 102
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f30
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   iret
isr_103:
   push rdi
   mov rdi, 103
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f30
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   iret
isr_104:
   push rdi
   mov rdi, 104
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f30
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   iret
isr_105:
   push rdi
   mov rdi, 105
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f30
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   iret
isr_106:
   push rdi
   mov rdi, 106
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f30
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   iret
isr_107:
   push rdi
   mov rdi, 107
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f30
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   iret
isr_108:
   push rdi
   mov rdi, 108
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f30
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   iret
isr_109:
   push rdi
   mov rdi, 109
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f30
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   iret
isr_110:
   push rdi
   mov rdi, 110
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f31
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   iret
isr_111:
   push rdi
   mov rdi, 111
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f31
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   iret
isr_112:
   push rdi
   mov rdi, 112
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f31
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   iret
isr_113:
   push rdi
   mov rdi, 113
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f31
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   iret
isr_114:
   push rdi
   mov rdi, 114
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f31
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   iret
isr_115:
   push rdi
   mov rdi, 115
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f31
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   iret
isr_116:
   push rdi
   mov rdi, 116
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f31
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   iret
isr_117:
   push rdi
   mov rdi, 117
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f31
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   iret
isr_118:
   push rdi
   mov rdi, 118
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f31
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   iret
isr_119:
   push rdi
   mov rdi, 119
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f31
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   iret
isr_120:
   push rdi
   mov rdi, 120
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f32
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   iret
isr_121:
   push rdi
   mov rdi, 121
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f32
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   iret
isr_122:
   push rdi
   mov rdi, 122
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f32
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   iret
isr_123:
   push rdi
   mov rdi, 123
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f32
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   iret
isr_124:
   push rdi
   mov rdi, 124
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f32
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   iret
isr_125:
   push rdi
   mov rdi, 125
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f32
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   iret
isr_126:
   push rdi
   mov rdi, 126
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f32
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   iret
isr_127:
   push rdi
   mov rdi, 127
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f32
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   iret
isr_128:
   push rdi
   mov rdi, 128
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f32
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   iret
isr_129:
   push rdi
   mov rdi, 129
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f32
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   iret
isr_130:
   push rdi
   mov rdi, 130
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f33
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   iret
isr_131:
   push rdi
   mov rdi, 131
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f33
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   iret
isr_132:
   push rdi
   mov rdi, 132
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f33
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   iret
isr_133:
   push rdi
   mov rdi, 133
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f33
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   iret
isr_134:
   push rdi
   mov rdi, 134
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f33
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   iret
isr_135:
   push rdi
   mov rdi, 135
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f33
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   iret
isr_136:
   push rdi
   mov rdi, 136
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f33
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   iret
isr_137:
   push rdi
   mov rdi, 137
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f33
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   iret
isr_138:
   push rdi
   mov rdi, 138
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f33
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   iret
isr_139:
   push rdi
   mov rdi, 139
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f33
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   iret
isr_140:
   push rdi
   mov rdi, 140
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f34
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   iret
isr_141:
   push rdi
   mov rdi, 141
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f34
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   iret
isr_142:
   push rdi
   mov rdi, 142
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f34
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   iret
isr_143:
   push rdi
   mov rdi, 143
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f34
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   iret
isr_144:
   push rdi
   mov rdi, 144
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f34
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   iret
isr_145:
   push rdi
   mov rdi, 145
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f34
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   iret
isr_146:
   push rdi
   mov rdi, 146
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f34
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   iret
isr_147:
   push rdi
   mov rdi, 147
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f34
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   iret
isr_148:
   push rdi
   mov rdi, 148
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f34
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   iret
isr_149:
   push rdi
   mov rdi, 149
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f34
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   iret
isr_150:
   push rdi
   mov rdi, 150
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f35
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   iret
isr_151:
   push rdi
   mov rdi, 151
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f35
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   iret
isr_152:
   push rdi
   mov rdi, 152
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f35
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   iret
isr_153:
   push rdi
   mov rdi, 153
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f35
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   iret
isr_154:
   push rdi
   mov rdi, 154
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f35
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   iret
isr_155:
   push rdi
   mov rdi, 155
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f35
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   iret
isr_156:
   push rdi
   mov rdi, 156
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f35
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   iret
isr_157:
   push rdi
   mov rdi, 157
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f35
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   iret
isr_158:
   push rdi
   mov rdi, 158
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f35
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   iret
isr_159:
   push rdi
   mov rdi, 159
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f35
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   iret
isr_160:
   push rdi
   mov rdi, 160
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f36
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   iret
isr_161:
   push rdi
   mov rdi, 161
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f36
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   iret
isr_162:
   push rdi
   mov rdi, 162
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f36
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   iret
isr_163:
   push rdi
   mov rdi, 163
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f36
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   iret
isr_164:
   push rdi
   mov rdi, 164
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f36
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   iret
isr_165:
   push rdi
   mov rdi, 165
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f36
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   iret
isr_166:
   push rdi
   mov rdi, 166
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f36
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   iret
isr_167:
   push rdi
   mov rdi, 167
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f36
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   iret
isr_168:
   push rdi
   mov rdi, 168
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f36
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   iret
isr_169:
   push rdi
   mov rdi, 169
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f36
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   iret
isr_170:
   push rdi
   mov rdi, 170
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f37
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   iret
isr_171:
   push rdi
   mov rdi, 171
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f37
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   iret
isr_172:
   push rdi
   mov rdi, 172
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f37
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   iret
isr_173:
   push rdi
   mov rdi, 173
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f37
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   iret
isr_174:
   push rdi
   mov rdi, 174
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f37
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   iret
isr_175:
   push rdi
   mov rdi, 175
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f37
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   iret
isr_176:
   push rdi
   mov rdi, 176
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f37
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   iret
isr_177:
   push rdi
   mov rdi, 177
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f37
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   iret
isr_178:
   push rdi
   mov rdi, 178
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f37
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   iret
isr_179:
   push rdi
   mov rdi, 179
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f37
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   iret
isr_180:
   push rdi
   mov rdi, 180
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f38
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   iret
isr_181:
   push rdi
   mov rdi, 181
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f38
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   iret
isr_182:
   push rdi
   mov rdi, 182
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f38
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   iret
isr_183:
   push rdi
   mov rdi, 183
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f38
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   iret
isr_184:
   push rdi
   mov rdi, 184
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f38
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   iret
isr_185:
   push rdi
   mov rdi, 185
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f38
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   iret
isr_186:
   push rdi
   mov rdi, 186
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f38
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   iret
isr_187:
   push rdi
   mov rdi, 187
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f38
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   iret
isr_188:
   push rdi
   mov rdi, 188
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f38
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   iret
isr_189:
   push rdi
   mov rdi, 189
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f38
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   iret
isr_190:
   push rdi
   mov rdi, 190
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f39
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   iret
isr_191:
   push rdi
   mov rdi, 191
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f39
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   iret
isr_192:
   push rdi
   mov rdi, 192
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f39
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   iret
isr_193:
   push rdi
   mov rdi, 193
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f39
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   iret
isr_194:
   push rdi
   mov rdi, 194
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f39
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   iret
isr_195:
   push rdi
   mov rdi, 195
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f39
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   iret
isr_196:
   push rdi
   mov rdi, 196
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f39
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   iret
isr_197:
   push rdi
   mov rdi, 197
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f39
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   iret
isr_198:
   push rdi
   mov rdi, 198
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f39
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   iret
isr_199:
   push rdi
   mov rdi, 199
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f39
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   iret
isr_200:
   push rdi
   mov rdi, 200
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f30
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   iret
isr_201:
   push rdi
   mov rdi, 201
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f30
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   iret
isr_202:
   push rdi
   mov rdi, 202
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f30
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   iret
isr_203:
   push rdi
   mov rdi, 203
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f30
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   iret
isr_204:
   push rdi
   mov rdi, 204
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f30
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   iret
isr_205:
   push rdi
   mov rdi, 205
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f30
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   iret
isr_206:
   push rdi
   mov rdi, 206
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f30
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   iret
isr_207:
   push rdi
   mov rdi, 207
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f30
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   iret
isr_208:
   push rdi
   mov rdi, 208
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f30
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   iret
isr_209:
   push rdi
   mov rdi, 209
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f30
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   iret
isr_210:
   push rdi
   mov rdi, 210
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f31
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   iret
isr_211:
   push rdi
   mov rdi, 211
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f31
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   iret
isr_212:
   push rdi
   mov rdi, 212
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f31
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   iret
isr_213:
   push rdi
   mov rdi, 213
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f31
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   iret
isr_214:
   push rdi
   mov rdi, 214
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f31
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   iret
isr_215:
   push rdi
   mov rdi, 215
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f31
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   iret
isr_216:
   push rdi
   mov rdi, 216
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f31
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   iret
isr_217:
   push rdi
   mov rdi, 217
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f31
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   iret
isr_218:
   push rdi
   mov rdi, 218
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f31
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   iret
isr_219:
   push rdi
   mov rdi, 219
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f31
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   iret
isr_220:
   push rdi
   mov rdi, 220
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f32
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   iret
isr_221:
   push rdi
   mov rdi, 221
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f32
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   iret
isr_222:
   push rdi
   mov rdi, 222
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f32
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   iret
isr_223:
   push rdi
   mov rdi, 223
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f32
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   iret
isr_224:
   push rdi
   mov rdi, 224
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f32
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   iret
isr_225:
   push rdi
   mov rdi, 225
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f32
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   iret
isr_226:
   push rdi
   mov rdi, 226
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f32
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   iret
isr_227:
   push rdi
   mov rdi, 227
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f32
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   iret
isr_228:
   push rdi
   mov rdi, 228
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f32
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   iret
isr_229:
   push rdi
   mov rdi, 229
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f32
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   iret
isr_230:
   push rdi
   mov rdi, 230
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f33
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   iret
isr_231:
   push rdi
   mov rdi, 231
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f33
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   iret
isr_232:
   push rdi
   mov rdi, 232
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f33
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   iret
isr_233:
   push rdi
   mov rdi, 233
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f33
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   iret
isr_234:
   push rdi
   mov rdi, 234
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f33
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   iret
isr_235:
   push rdi
   mov rdi, 235
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f33
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   iret
isr_236:
   push rdi
   mov rdi, 236
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f33
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   iret
isr_237:
   push rdi
   mov rdi, 237
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f33
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   iret
isr_238:
   push rdi
   mov rdi, 238
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f33
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   iret
isr_239:
   push rdi
   mov rdi, 239
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f33
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   iret
isr_240:
   push rdi
   mov rdi, 240
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f34
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   iret
isr_241:
   push rdi
   mov rdi, 241
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f34
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   iret
isr_242:
   push rdi
   mov rdi, 242
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f34
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   iret
isr_243:
   push rdi
   mov rdi, 243
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f34
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   iret
isr_244:
   push rdi
   mov rdi, 244
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f34
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   iret
isr_245:
   push rdi
   mov rdi, 245
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f34
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   iret
isr_246:
   push rdi
   mov rdi, 246
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f34
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   iret
isr_247:
   push rdi
   mov rdi, 247
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f34
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   iret
isr_248:
   push rdi
   mov rdi, 248
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f34
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   iret
isr_249:
   push rdi
   mov rdi, 249
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f34
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   iret
isr_250:
   push rdi
   mov rdi, 250
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f35
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   iret
isr_251:
   push rdi
   mov rdi, 251
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f35
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   iret
isr_252:
   push rdi
   mov rdi, 252
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f35
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   iret
isr_253:
   push rdi
   mov rdi, 253
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f35
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   iret
isr_254:
   push rdi
   mov rdi, 254
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f35
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   iret
