global isr_0
global isr_1

extern isr_normal
extern isr_errcode

section .text
bits 64
isr_0:
   push rdi
   push rsi
   mov rdi, 0
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f30
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_1:
   push rdi
   push rsi
   mov rdi, 1
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f30
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_2:
   push rdi
   push rsi
   mov rdi, 2
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f30
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_3:
   push rdi
   push rsi
   mov rdi, 3
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f30
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_4:
   push rdi
   push rsi
   mov rdi, 4
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f30
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_5:
   push rdi
   push rsi
   mov rdi, 5
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f30
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_6:
   push rdi
   push rsi
   mov rdi, 6
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f30
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_7:
   push rdi
   push rsi
   mov rdi, 7
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f30
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   pop rsi
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
   push rsi
   mov rdi, 9
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f30
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   pop rsi
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
   push rsi
   mov rdi, 15
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f31
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_16:
   push rdi
   push rsi
   mov rdi, 16
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f31
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   pop rsi
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
   push rsi
   mov rdi, 18
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f31
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_19:
   push rdi
   push rsi
   mov rdi, 19
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f31
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_20:
   push rdi
   push rsi
   mov rdi, 20
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f32
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_21:
   push rdi
   push rsi
   mov rdi, 21
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f32
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_22:
   push rdi
   push rsi
   mov rdi, 22
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f32
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_23:
   push rdi
   push rsi
   mov rdi, 23
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f32
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_24:
   push rdi
   push rsi
   mov rdi, 24
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f32
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_25:
   push rdi
   push rsi
   mov rdi, 25
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f32
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_26:
   push rdi
   push rsi
   mov rdi, 26
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f32
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_27:
   push rdi
   push rsi
   mov rdi, 27
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f32
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_28:
   push rdi
   push rsi
   mov rdi, 28
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f32
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_29:
   push rdi
   push rsi
   mov rdi, 29
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f32
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_30:
   push rdi
   push rsi
   mov rdi, 30
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f33
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_31:
   push rdi
   push rsi
   mov rdi, 31
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f33
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_32:
   push rdi
   push rsi
   mov rdi, 32
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f33
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_33:
   push rdi
   push rsi
   mov rdi, 33
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f33
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_34:
   push rdi
   push rsi
   mov rdi, 34
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f33
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_35:
   push rdi
   push rsi
   mov rdi, 35
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f33
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_36:
   push rdi
   push rsi
   mov rdi, 36
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f33
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_37:
   push rdi
   push rsi
   mov rdi, 37
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f33
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_38:
   push rdi
   push rsi
   mov rdi, 38
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f33
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_39:
   push rdi
   push rsi
   mov rdi, 39
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f33
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_40:
   push rdi
   push rsi
   mov rdi, 40
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f34
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_41:
   push rdi
   push rsi
   mov rdi, 41
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f34
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_42:
   push rdi
   push rsi
   mov rdi, 42
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f34
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_43:
   push rdi
   push rsi
   mov rdi, 43
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f34
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_44:
   push rdi
   push rsi
   mov rdi, 44
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f34
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_45:
   push rdi
   push rsi
   mov rdi, 45
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f34
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_46:
   push rdi
   push rsi
   mov rdi, 46
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f34
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_47:
   push rdi
   push rsi
   mov rdi, 47
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f34
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_48:
   push rdi
   push rsi
   mov rdi, 48
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f34
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_49:
   push rdi
   push rsi
   mov rdi, 49
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f34
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_50:
   push rdi
   push rsi
   mov rdi, 50
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f35
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_51:
   push rdi
   push rsi
   mov rdi, 51
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f35
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_52:
   push rdi
   push rsi
   mov rdi, 52
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f35
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_53:
   push rdi
   push rsi
   mov rdi, 53
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f35
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_54:
   push rdi
   push rsi
   mov rdi, 54
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f35
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_55:
   push rdi
   push rsi
   mov rdi, 55
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f35
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_56:
   push rdi
   push rsi
   mov rdi, 56
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f35
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_57:
   push rdi
   push rsi
   mov rdi, 57
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f35
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_58:
   push rdi
   push rsi
   mov rdi, 58
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f35
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_59:
   push rdi
   push rsi
   mov rdi, 59
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f35
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_60:
   push rdi
   push rsi
   mov rdi, 60
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f36
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_61:
   push rdi
   push rsi
   mov rdi, 61
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f36
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_62:
   push rdi
   push rsi
   mov rdi, 62
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f36
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_63:
   push rdi
   push rsi
   mov rdi, 63
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f36
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_64:
   push rdi
   push rsi
   mov rdi, 64
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f36
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_65:
   push rdi
   push rsi
   mov rdi, 65
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f36
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_66:
   push rdi
   push rsi
   mov rdi, 66
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f36
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_67:
   push rdi
   push rsi
   mov rdi, 67
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f36
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_68:
   push rdi
   push rsi
   mov rdi, 68
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f36
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_69:
   push rdi
   push rsi
   mov rdi, 69
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f36
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_70:
   push rdi
   push rsi
   mov rdi, 70
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f37
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_71:
   push rdi
   push rsi
   mov rdi, 71
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f37
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_72:
   push rdi
   push rsi
   mov rdi, 72
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f37
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_73:
   push rdi
   push rsi
   mov rdi, 73
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f37
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_74:
   push rdi
   push rsi
   mov rdi, 74
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f37
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_75:
   push rdi
   push rsi
   mov rdi, 75
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f37
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_76:
   push rdi
   push rsi
   mov rdi, 76
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f37
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_77:
   push rdi
   push rsi
   mov rdi, 77
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f37
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_78:
   push rdi
   push rsi
   mov rdi, 78
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f37
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_79:
   push rdi
   push rsi
   mov rdi, 79
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f37
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_80:
   push rdi
   push rsi
   mov rdi, 80
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f38
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_81:
   push rdi
   push rsi
   mov rdi, 81
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f38
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_82:
   push rdi
   push rsi
   mov rdi, 82
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f38
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_83:
   push rdi
   push rsi
   mov rdi, 83
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f38
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_84:
   push rdi
   push rsi
   mov rdi, 84
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f38
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_85:
   push rdi
   push rsi
   mov rdi, 85
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f38
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_86:
   push rdi
   push rsi
   mov rdi, 86
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f38
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_87:
   push rdi
   push rsi
   mov rdi, 87
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f38
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_88:
   push rdi
   push rsi
   mov rdi, 88
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f38
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_89:
   push rdi
   push rsi
   mov rdi, 89
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f38
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_90:
   push rdi
   push rsi
   mov rdi, 90
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f39
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_91:
   push rdi
   push rsi
   mov rdi, 91
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f39
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_92:
   push rdi
   push rsi
   mov rdi, 92
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f39
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_93:
   push rdi
   push rsi
   mov rdi, 93
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f39
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_94:
   push rdi
   push rsi
   mov rdi, 94
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f39
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_95:
   push rdi
   push rsi
   mov rdi, 95
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f39
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_96:
   push rdi
   push rsi
   mov rdi, 96
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f39
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_97:
   push rdi
   push rsi
   mov rdi, 97
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f39
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_98:
   push rdi
   push rsi
   mov rdi, 98
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f39
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_99:
   push rdi
   push rsi
   mov rdi, 99
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f304f39
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_100:
   push rdi
   push rsi
   mov rdi, 100
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f30
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_101:
   push rdi
   push rsi
   mov rdi, 101
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f30
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_102:
   push rdi
   push rsi
   mov rdi, 102
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f30
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_103:
   push rdi
   push rsi
   mov rdi, 103
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f30
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_104:
   push rdi
   push rsi
   mov rdi, 104
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f30
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_105:
   push rdi
   push rsi
   mov rdi, 105
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f30
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_106:
   push rdi
   push rsi
   mov rdi, 106
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f30
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_107:
   push rdi
   push rsi
   mov rdi, 107
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f30
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_108:
   push rdi
   push rsi
   mov rdi, 108
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f30
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_109:
   push rdi
   push rsi
   mov rdi, 109
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f30
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_110:
   push rdi
   push rsi
   mov rdi, 110
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f31
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_111:
   push rdi
   push rsi
   mov rdi, 111
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f31
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_112:
   push rdi
   push rsi
   mov rdi, 112
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f31
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_113:
   push rdi
   push rsi
   mov rdi, 113
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f31
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_114:
   push rdi
   push rsi
   mov rdi, 114
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f31
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_115:
   push rdi
   push rsi
   mov rdi, 115
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f31
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_116:
   push rdi
   push rsi
   mov rdi, 116
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f31
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_117:
   push rdi
   push rsi
   mov rdi, 117
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f31
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_118:
   push rdi
   push rsi
   mov rdi, 118
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f31
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_119:
   push rdi
   push rsi
   mov rdi, 119
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f31
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_120:
   push rdi
   push rsi
   mov rdi, 120
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f32
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_121:
   push rdi
   push rsi
   mov rdi, 121
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f32
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_122:
   push rdi
   push rsi
   mov rdi, 122
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f32
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_123:
   push rdi
   push rsi
   mov rdi, 123
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f32
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_124:
   push rdi
   push rsi
   mov rdi, 124
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f32
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_125:
   push rdi
   push rsi
   mov rdi, 125
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f32
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_126:
   push rdi
   push rsi
   mov rdi, 126
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f32
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_127:
   push rdi
   push rsi
   mov rdi, 127
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f32
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_128:
   push rdi
   push rsi
   mov rdi, 128
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f32
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_129:
   push rdi
   push rsi
   mov rdi, 129
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f32
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_130:
   push rdi
   push rsi
   mov rdi, 130
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f33
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_131:
   push rdi
   push rsi
   mov rdi, 131
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f33
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_132:
   push rdi
   push rsi
   mov rdi, 132
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f33
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_133:
   push rdi
   push rsi
   mov rdi, 133
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f33
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_134:
   push rdi
   push rsi
   mov rdi, 134
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f33
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_135:
   push rdi
   push rsi
   mov rdi, 135
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f33
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_136:
   push rdi
   push rsi
   mov rdi, 136
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f33
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_137:
   push rdi
   push rsi
   mov rdi, 137
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f33
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_138:
   push rdi
   push rsi
   mov rdi, 138
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f33
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_139:
   push rdi
   push rsi
   mov rdi, 139
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f33
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_140:
   push rdi
   push rsi
   mov rdi, 140
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f34
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_141:
   push rdi
   push rsi
   mov rdi, 141
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f34
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_142:
   push rdi
   push rsi
   mov rdi, 142
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f34
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_143:
   push rdi
   push rsi
   mov rdi, 143
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f34
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_144:
   push rdi
   push rsi
   mov rdi, 144
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f34
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_145:
   push rdi
   push rsi
   mov rdi, 145
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f34
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_146:
   push rdi
   push rsi
   mov rdi, 146
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f34
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_147:
   push rdi
   push rsi
   mov rdi, 147
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f34
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_148:
   push rdi
   push rsi
   mov rdi, 148
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f34
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_149:
   push rdi
   push rsi
   mov rdi, 149
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f34
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_150:
   push rdi
   push rsi
   mov rdi, 150
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f35
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_151:
   push rdi
   push rsi
   mov rdi, 151
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f35
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_152:
   push rdi
   push rsi
   mov rdi, 152
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f35
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_153:
   push rdi
   push rsi
   mov rdi, 153
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f35
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_154:
   push rdi
   push rsi
   mov rdi, 154
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f35
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_155:
   push rdi
   push rsi
   mov rdi, 155
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f35
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_156:
   push rdi
   push rsi
   mov rdi, 156
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f35
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_157:
   push rdi
   push rsi
   mov rdi, 157
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f35
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_158:
   push rdi
   push rsi
   mov rdi, 158
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f35
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_159:
   push rdi
   push rsi
   mov rdi, 159
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f35
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_160:
   push rdi
   push rsi
   mov rdi, 160
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f36
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_161:
   push rdi
   push rsi
   mov rdi, 161
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f36
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_162:
   push rdi
   push rsi
   mov rdi, 162
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f36
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_163:
   push rdi
   push rsi
   mov rdi, 163
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f36
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_164:
   push rdi
   push rsi
   mov rdi, 164
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f36
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_165:
   push rdi
   push rsi
   mov rdi, 165
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f36
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_166:
   push rdi
   push rsi
   mov rdi, 166
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f36
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_167:
   push rdi
   push rsi
   mov rdi, 167
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f36
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_168:
   push rdi
   push rsi
   mov rdi, 168
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f36
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_169:
   push rdi
   push rsi
   mov rdi, 169
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f36
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_170:
   push rdi
   push rsi
   mov rdi, 170
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f37
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_171:
   push rdi
   push rsi
   mov rdi, 171
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f37
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_172:
   push rdi
   push rsi
   mov rdi, 172
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f37
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_173:
   push rdi
   push rsi
   mov rdi, 173
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f37
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_174:
   push rdi
   push rsi
   mov rdi, 174
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f37
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_175:
   push rdi
   push rsi
   mov rdi, 175
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f37
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_176:
   push rdi
   push rsi
   mov rdi, 176
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f37
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_177:
   push rdi
   push rsi
   mov rdi, 177
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f37
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_178:
   push rdi
   push rsi
   mov rdi, 178
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f37
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_179:
   push rdi
   push rsi
   mov rdi, 179
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f37
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_180:
   push rdi
   push rsi
   mov rdi, 180
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f38
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_181:
   push rdi
   push rsi
   mov rdi, 181
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f38
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_182:
   push rdi
   push rsi
   mov rdi, 182
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f38
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_183:
   push rdi
   push rsi
   mov rdi, 183
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f38
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_184:
   push rdi
   push rsi
   mov rdi, 184
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f38
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_185:
   push rdi
   push rsi
   mov rdi, 185
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f38
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_186:
   push rdi
   push rsi
   mov rdi, 186
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f38
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_187:
   push rdi
   push rsi
   mov rdi, 187
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f38
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_188:
   push rdi
   push rsi
   mov rdi, 188
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f38
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_189:
   push rdi
   push rsi
   mov rdi, 189
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f38
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_190:
   push rdi
   push rsi
   mov rdi, 190
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f39
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_191:
   push rdi
   push rsi
   mov rdi, 191
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f39
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_192:
   push rdi
   push rsi
   mov rdi, 192
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f39
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_193:
   push rdi
   push rsi
   mov rdi, 193
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f39
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_194:
   push rdi
   push rsi
   mov rdi, 194
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f39
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_195:
   push rdi
   push rsi
   mov rdi, 195
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f39
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_196:
   push rdi
   push rsi
   mov rdi, 196
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f39
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_197:
   push rdi
   push rsi
   mov rdi, 197
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f39
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_198:
   push rdi
   push rsi
   mov rdi, 198
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f39
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_199:
   push rdi
   push rsi
   mov rdi, 199
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f314f39
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_200:
   push rdi
   push rsi
   mov rdi, 200
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f30
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_201:
   push rdi
   push rsi
   mov rdi, 201
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f30
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_202:
   push rdi
   push rsi
   mov rdi, 202
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f30
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_203:
   push rdi
   push rsi
   mov rdi, 203
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f30
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_204:
   push rdi
   push rsi
   mov rdi, 204
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f30
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_205:
   push rdi
   push rsi
   mov rdi, 205
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f30
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_206:
   push rdi
   push rsi
   mov rdi, 206
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f30
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_207:
   push rdi
   push rsi
   mov rdi, 207
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f30
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_208:
   push rdi
   push rsi
   mov rdi, 208
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f30
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_209:
   push rdi
   push rsi
   mov rdi, 209
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f30
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_210:
   push rdi
   push rsi
   mov rdi, 210
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f31
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_211:
   push rdi
   push rsi
   mov rdi, 211
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f31
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_212:
   push rdi
   push rsi
   mov rdi, 212
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f31
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_213:
   push rdi
   push rsi
   mov rdi, 213
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f31
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_214:
   push rdi
   push rsi
   mov rdi, 214
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f31
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_215:
   push rdi
   push rsi
   mov rdi, 215
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f31
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_216:
   push rdi
   push rsi
   mov rdi, 216
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f31
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_217:
   push rdi
   push rsi
   mov rdi, 217
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f31
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_218:
   push rdi
   push rsi
   mov rdi, 218
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f31
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_219:
   push rdi
   push rsi
   mov rdi, 219
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f31
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_220:
   push rdi
   push rsi
   mov rdi, 220
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f32
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_221:
   push rdi
   push rsi
   mov rdi, 221
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f32
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_222:
   push rdi
   push rsi
   mov rdi, 222
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f32
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_223:
   push rdi
   push rsi
   mov rdi, 223
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f32
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_224:
   push rdi
   push rsi
   mov rdi, 224
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f32
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_225:
   push rdi
   push rsi
   mov rdi, 225
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f32
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_226:
   push rdi
   push rsi
   mov rdi, 226
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f32
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_227:
   push rdi
   push rsi
   mov rdi, 227
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f32
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_228:
   push rdi
   push rsi
   mov rdi, 228
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f32
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_229:
   push rdi
   push rsi
   mov rdi, 229
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f32
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_230:
   push rdi
   push rsi
   mov rdi, 230
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f33
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_231:
   push rdi
   push rsi
   mov rdi, 231
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f33
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_232:
   push rdi
   push rsi
   mov rdi, 232
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f33
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_233:
   push rdi
   push rsi
   mov rdi, 233
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f33
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_234:
   push rdi
   push rsi
   mov rdi, 234
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f33
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_235:
   push rdi
   push rsi
   mov rdi, 235
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f33
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_236:
   push rdi
   push rsi
   mov rdi, 236
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f33
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_237:
   push rdi
   push rsi
   mov rdi, 237
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f33
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_238:
   push rdi
   push rsi
   mov rdi, 238
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f33
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_239:
   push rdi
   push rsi
   mov rdi, 239
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f33
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_240:
   push rdi
   push rsi
   mov rdi, 240
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f34
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_241:
   push rdi
   push rsi
   mov rdi, 241
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f34
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_242:
   push rdi
   push rsi
   mov rdi, 242
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f34
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_243:
   push rdi
   push rsi
   mov rdi, 243
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f34
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_244:
   push rdi
   push rsi
   mov rdi, 244
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f34
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_245:
   push rdi
   push rsi
   mov rdi, 245
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f34
   mov dword [0xb8008], 0x4f354f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_246:
   push rdi
   push rsi
   mov rdi, 246
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f34
   mov dword [0xb8008], 0x4f364f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_247:
   push rdi
   push rsi
   mov rdi, 247
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f34
   mov dword [0xb8008], 0x4f374f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_248:
   push rdi
   push rsi
   mov rdi, 248
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f34
   mov dword [0xb8008], 0x4f384f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_249:
   push rdi
   push rsi
   mov rdi, 249
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f34
   mov dword [0xb8008], 0x4f394f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_250:
   push rdi
   push rsi
   mov rdi, 250
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f35
   mov dword [0xb8008], 0x4f304f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_251:
   push rdi
   push rsi
   mov rdi, 251
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f35
   mov dword [0xb8008], 0x4f314f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_252:
   push rdi
   push rsi
   mov rdi, 252
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f35
   mov dword [0xb8008], 0x4f324f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_253:
   push rdi
   push rsi
   mov rdi, 253
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f35
   mov dword [0xb8008], 0x4f334f20
   call isr_normal
   pop rdi
   pop rsi
   iret
isr_254:
   push rdi
   push rsi
   mov rdi, 254
   mov rsi, [rsp]
   mov dword [0xb8000], 0x4f524f45
   mov dword [0xb8004], 0x4f3a4f52
   mov dword [0xb8008], 0x4f204f20
   mov dword [0xb8008], 0x4f324f35
   mov dword [0xb8008], 0x4f344f20
   call isr_normal
   pop rdi
   pop rsi
   iret
