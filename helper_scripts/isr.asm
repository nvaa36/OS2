global isr_locs

extern isr_normal
extern isr_errcode
extern curr_proc
extern next_proc

section .text
bits 64

isr_0:
   push rdi
   push rsi
   mov rdi, 0
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_1:
   push rdi
   push rsi
   mov rdi, 1
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_2:
   push rdi
   push rsi
   mov rdi, 2
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_3:
   push rdi
   push rsi
   mov rdi, 3
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_4:
   push rdi
   push rsi
   mov rdi, 4
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_5:
   push rdi
   push rsi
   mov rdi, 5
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_6:
   push rdi
   push rsi
   mov rdi, 6
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_7:
   push rdi
   push rsi
   mov rdi, 7
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_8:
   push rdi
   push rsi
   mov rdi, 8
   mov rsi, [rsp + 16]
   push rax
   push r10
   push r11
   call isr_errcode
   pop r11
   pop r10
   pop rax
   pop rsi
   pop rdi
   add rsp, 8
   iretq

isr_9:
   push rdi
   push rsi
   mov rdi, 9
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_10:
   push rdi
   push rsi
   mov rdi, 10
   mov rsi, [rsp + 16]
   push rax
   push r10
   push r11
   call isr_errcode
   pop r11
   pop r10
   pop rax
   pop rsi
   pop rdi
   add rsp, 8
   iretq

isr_11:
   push rdi
   push rsi
   mov rdi, 11
   mov rsi, [rsp + 16]
   push rax
   push r10
   push r11
   call isr_errcode
   pop r11
   pop r10
   pop rax
   pop rsi
   pop rdi
   add rsp, 8
   iretq

isr_12:
   push rdi
   push rsi
   mov rdi, 12
   mov rsi, [rsp + 16]
   push rax
   push r10
   push r11
   call isr_errcode
   pop r11
   pop r10
   pop rax
   pop rsi
   pop rdi
   add rsp, 8
   iretq

isr_13:
   push rdi
   push rsi
   mov rdi, 13
   mov rsi, [rsp + 16]
   push rax
   push r10
   push r11
   call isr_errcode
   pop r11
   pop r10
   pop rax
   pop rsi
   pop rdi
   add rsp, 8
   iretq

isr_14:
   push rdi
   push rsi
   mov rdi, 14
   mov rsi, [rsp + 16]
   push rax
   push r10
   push r11
   call isr_errcode
   pop r11
   pop r10
   pop rax
   pop rsi
   pop rdi
   add rsp, 8
   iretq

isr_15:
   push rdi
   push rsi
   mov rdi, 15
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_16:
   push rdi
   push rsi
   mov rdi, 16
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_17:
   push rdi
   push rsi
   mov rdi, 17
   mov rsi, [rsp + 16]
   push rax
   push r10
   push r11
   call isr_errcode
   pop r11
   pop r10
   pop rax
   pop rsi
   pop rdi
   add rsp, 8
   iretq

isr_18:
   push rdi
   push rsi
   mov rdi, 18
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_19:
   push rdi
   push rsi
   mov rdi, 19
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_20:
   push rdi
   push rsi
   mov rdi, 20
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_21:
   push rdi
   push rsi
   mov rdi, 21
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_22:
   push rdi
   push rsi
   mov rdi, 22
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_23:
   push rdi
   push rsi
   mov rdi, 23
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_24:
   push rdi
   push rsi
   mov rdi, 24
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_25:
   push rdi
   push rsi
   mov rdi, 25
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_26:
   push rdi
   push rsi
   mov rdi, 26
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_27:
   push rdi
   push rsi
   mov rdi, 27
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_28:
   push rdi
   push rsi
   mov rdi, 28
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_29:
   push rdi
   push rsi
   mov rdi, 29
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_30:
   push rdi
   push rsi
   mov rdi, 30
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_31:
   push rdi
   push rsi
   mov rdi, 31
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_32:
   push rdi
   push rsi
   mov rdi, 32
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_33:
   push rdi
   push rsi
   mov rdi, 33
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_34:
   push rdi
   push rsi
   mov rdi, 34
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_35:
   push rdi
   push rsi
   mov rdi, 35
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_36:
   push rdi
   push rsi
   mov rdi, 36
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_37:
   push rdi
   push rsi
   mov rdi, 37
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_38:
   push rdi
   push rsi
   mov rdi, 38
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_39:
   push rdi
   push rsi
   mov rdi, 39
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_40:
   push rdi
   push rsi
   mov rdi, 40
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_41:
   push rdi
   push rsi
   mov rdi, 41
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_42:
   push rdi
   push rsi
   mov rdi, 42
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_43:
   push rdi
   push rsi
   mov rdi, 43
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_44:
   push rdi
   push rsi
   mov rdi, 44
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_45:
   push rdi
   push rsi
   mov rdi, 45
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_46:
   push rdi
   push rsi
   mov rdi, 46
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_47:
   push rdi
   push rsi
   mov rdi, 47
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_48:
   push rdi
   push rsi
   mov rdi, 48
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_49:
   push rdi
   push rsi
   mov rdi, 49
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_50:
   push rdi
   push rsi
   mov rdi, 50
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_51:
   push rdi
   push rsi
   mov rdi, 51
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_52:
   push rdi
   push rsi
   mov rdi, 52
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_53:
   push rdi
   push rsi
   mov rdi, 53
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_54:
   push rdi
   push rsi
   mov rdi, 54
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_55:
   push rdi
   push rsi
   mov rdi, 55
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_56:
   push rdi
   push rsi
   mov rdi, 56
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_57:
   push rdi
   push rsi
   mov rdi, 57
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_58:
   push rdi
   push rsi
   mov rdi, 58
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_59:
   push rdi
   push rsi
   mov rdi, 59
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_60:
   push rdi
   push rsi
   mov rdi, 60
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_61:
   push rdi
   push rsi
   mov rdi, 61
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_62:
   push rdi
   push rsi
   mov rdi, 62
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_63:
   push rdi
   push rsi
   mov rdi, 63
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_64:
   push rdi
   push rsi
   mov rdi, 64
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_65:
   push rdi
   push rsi
   mov rdi, 65
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_66:
   push rdi
   push rsi
   mov rdi, 66
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_67:
   push rdi
   push rsi
   mov rdi, 67
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_68:
   push rdi
   push rsi
   mov rdi, 68
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_69:
   push rdi
   push rsi
   mov rdi, 69
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_70:
   push rdi
   push rsi
   mov rdi, 70
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_71:
   push rdi
   push rsi
   mov rdi, 71
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_72:
   push rdi
   push rsi
   mov rdi, 72
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_73:
   push rdi
   push rsi
   mov rdi, 73
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_74:
   push rdi
   push rsi
   mov rdi, 74
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_75:
   push rdi
   push rsi
   mov rdi, 75
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_76:
   push rdi
   push rsi
   mov rdi, 76
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_77:
   push rdi
   push rsi
   mov rdi, 77
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_78:
   push rdi
   push rsi
   mov rdi, 78
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_79:
   push rdi
   push rsi
   mov rdi, 79
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_80:
   push rdi
   push rsi
   mov rdi, 80
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_81:
   push rdi
   push rsi
   mov rdi, 81
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_82:
   push rdi
   push rsi
   mov rdi, 82
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_83:
   push rdi
   push rsi
   mov rdi, 83
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_84:
   push rdi
   push rsi
   mov rdi, 84
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_85:
   push rdi
   push rsi
   mov rdi, 85
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_86:
   push rdi
   push rsi
   mov rdi, 86
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_87:
   push rdi
   push rsi
   mov rdi, 87
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_88:
   push rdi
   push rsi
   mov rdi, 88
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_89:
   push rdi
   push rsi
   mov rdi, 89
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_90:
   push rdi
   push rsi
   mov rdi, 90
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_91:
   push rdi
   push rsi
   mov rdi, 91
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_92:
   push rdi
   push rsi
   mov rdi, 92
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_93:
   push rdi
   push rsi
   mov rdi, 93
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_94:
   push rdi
   push rsi
   mov rdi, 94
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_95:
   push rdi
   push rsi
   mov rdi, 95
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_96:
   push rdi
   push rsi
   mov rdi, 96
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_97:
   push rdi
   push rsi
   mov rdi, 97
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_98:
   push rdi
   push rsi
   mov rdi, 98
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_99:
   push rdi
   push rsi
   mov rdi, 99
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_100:
   push rdi
   push rsi
   mov rdi, 100
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_101:
   push rdi
   push rsi
   mov rdi, 101
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_102:
   push rdi
   push rsi
   mov rdi, 102
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_103:
   push rdi
   push rsi
   mov rdi, 103
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_104:
   push rdi
   push rsi
   mov rdi, 104
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_105:
   push rdi
   push rsi
   mov rdi, 105
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_106:
   push rdi
   push rsi
   mov rdi, 106
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_107:
   push rdi
   push rsi
   mov rdi, 107
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_108:
   push rdi
   push rsi
   mov rdi, 108
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_109:
   push rdi
   push rsi
   mov rdi, 109
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_110:
   push rdi
   push rsi
   mov rdi, 110
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_111:
   push rdi
   push rsi
   mov rdi, 111
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_112:
   push rdi
   push rsi
   mov rdi, 112
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_113:
   push rdi
   push rsi
   mov rdi, 113
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_114:
   push rdi
   push rsi
   mov rdi, 114
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_115:
   push rdi
   push rsi
   mov rdi, 115
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_116:
   push rdi
   push rsi
   mov rdi, 116
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_117:
   push rdi
   push rsi
   mov rdi, 117
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_118:
   push rdi
   push rsi
   mov rdi, 118
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_119:
   push rdi
   push rsi
   mov rdi, 119
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_120:
   push rdi
   push rsi
   mov rdi, 120
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_121:
   push rdi
   push rsi
   mov rdi, 121
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_122:
   push rdi
   push rsi
   mov rdi, 122
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_123:
   push rdi
   push rsi
   mov rdi, 123
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_124:
   push rdi
   push rsi
   mov rdi, 124
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_125:
   push rdi
   push rsi
   mov rdi, 125
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_126:
   push rdi
   push rsi
   mov rdi, 126
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_127:
   push rdi
   push rsi
   mov rdi, 127
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_128:
   push rdi
   push rsi
   mov rdi, 128
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_129:
   push rdi
   push rsi
   mov rdi, 129
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_130:
   push rdi
   push rsi
   mov rdi, 130
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_131:
   push rdi
   push rsi
   mov rdi, 131
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_132:
   push rdi
   push rsi
   mov rdi, 132
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_133:
   push rdi
   push rsi
   mov rdi, 133
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_134:
   push rdi
   push rsi
   mov rdi, 134
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_135:
   push rdi
   push rsi
   mov rdi, 135
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_136:
   push rdi
   push rsi
   mov rdi, 136
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_137:
   push rdi
   push rsi
   mov rdi, 137
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_138:
   push rdi
   push rsi
   mov rdi, 138
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_139:
   push rdi
   push rsi
   mov rdi, 139
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_140:
   push rdi
   push rsi
   mov rdi, 140
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_141:
   push rdi
   push rsi
   mov rdi, 141
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_142:
   push rdi
   push rsi
   mov rdi, 142
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_143:
   push rdi
   push rsi
   mov rdi, 143
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_144:
   push rdi
   push rsi
   mov rdi, 144
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_145:
   push rdi
   push rsi
   mov rdi, 145
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_146:
   push rdi
   push rsi
   mov rdi, 146
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_147:
   push rdi
   push rsi
   mov rdi, 147
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_148:
   push rdi
   push rsi
   mov rdi, 148
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_149:
   push rdi
   push rsi
   mov rdi, 149
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_150:
   push rdi
   push rsi
   mov rdi, 150
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_151:
   push rdi
   push rsi
   mov rdi, 151
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_152:
   push rdi
   push rsi
   mov rdi, 152
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_153:
   push rdi
   push rsi
   mov rdi, 153
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_154:
   push rdi
   push rsi
   mov rdi, 154
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_155:
   push rdi
   push rsi
   mov rdi, 155
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_156:
   push rdi
   push rsi
   mov rdi, 156
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_157:
   push rdi
   push rsi
   mov rdi, 157
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_158:
   push rdi
   push rsi
   mov rdi, 158
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_159:
   push rdi
   push rsi
   mov rdi, 159
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_160:
   push rdi
   push rsi
   mov rdi, 160
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_161:
   push rdi
   push rsi
   mov rdi, 161
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_162:
   push rdi
   push rsi
   mov rdi, 162
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_163:
   push rdi
   push rsi
   mov rdi, 163
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_164:
   push rdi
   push rsi
   mov rdi, 164
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_165:
   push rdi
   push rsi
   mov rdi, 165
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_166:
   push rdi
   push rsi
   mov rdi, 166
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_167:
   push rdi
   push rsi
   mov rdi, 167
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_168:
   push rdi
   push rsi
   mov rdi, 168
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_169:
   push rdi
   push rsi
   mov rdi, 169
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_170:
   push rdi
   push rsi
   mov rdi, 170
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_171:
   push rdi
   push rsi
   mov rdi, 171
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_172:
   push rdi
   push rsi
   mov rdi, 172
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_173:
   push rdi
   push rsi
   mov rdi, 173
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_174:
   push rdi
   push rsi
   mov rdi, 174
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_175:
   push rdi
   push rsi
   mov rdi, 175
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_176:
   push rdi
   push rsi
   mov rdi, 176
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_177:
   push rdi
   push rsi
   mov rdi, 177
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_178:
   push rdi
   push rsi
   mov rdi, 178
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_179:
   push rdi
   push rsi
   mov rdi, 179
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_180:
   push rdi
   push rsi
   mov rdi, 180
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_181:
   push rdi
   push rsi
   mov rdi, 181
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_182:
   push rdi
   push rsi
   mov rdi, 182
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_183:
   push rdi
   push rsi
   mov rdi, 183
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_184:
   push rdi
   push rsi
   mov rdi, 184
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_185:
   push rdi
   push rsi
   mov rdi, 185
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_186:
   push rdi
   push rsi
   mov rdi, 186
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_187:
   push rdi
   push rsi
   mov rdi, 187
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_188:
   push rdi
   push rsi
   mov rdi, 188
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_189:
   push rdi
   push rsi
   mov rdi, 189
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_190:
   push rdi
   push rsi
   mov rdi, 190
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_191:
   push rdi
   push rsi
   mov rdi, 191
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_192:
   push rdi
   push rsi
   mov rdi, 192
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_193:
   push rdi
   push rsi
   mov rdi, 193
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_194:
   push rdi
   push rsi
   mov rdi, 194
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_195:
   push rdi
   push rsi
   mov rdi, 195
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_196:
   push rdi
   push rsi
   mov rdi, 196
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_197:
   push rdi
   push rsi
   mov rdi, 197
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_198:
   push rdi
   push rsi
   mov rdi, 198
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_199:
   push rdi
   push rsi
   mov rdi, 199
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_200:
   push rdi
   push rsi
   mov rdi, 200
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_201:
   push rdi
   push rsi
   mov rdi, 201
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_202:
   push rdi
   push rsi
   mov rdi, 202
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_203:
   push rdi
   push rsi
   mov rdi, 203
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_204:
   push rdi
   push rsi
   mov rdi, 204
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_205:
   push rdi
   push rsi
   mov rdi, 205
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_206:
   push rdi
   push rsi
   mov rdi, 206
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_207:
   push rdi
   push rsi
   mov rdi, 207
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_208:
   push rdi
   push rsi
   mov rdi, 208
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_209:
   push rdi
   push rsi
   mov rdi, 209
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_210:
   push rdi
   push rsi
   mov rdi, 210
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_211:
   push rdi
   push rsi
   mov rdi, 211
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_212:
   push rdi
   push rsi
   mov rdi, 212
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_213:
   push rdi
   push rsi
   mov rdi, 213
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_214:
   push rdi
   push rsi
   mov rdi, 214
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_215:
   push rdi
   push rsi
   mov rdi, 215
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_216:
   push rdi
   push rsi
   mov rdi, 216
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_217:
   push rdi
   push rsi
   mov rdi, 217
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_218:
   push rdi
   push rsi
   mov rdi, 218
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_219:
   push rdi
   push rsi
   mov rdi, 219
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_220:
   push rdi
   push rsi
   mov rdi, 220
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_221:
   push rdi
   push rsi
   mov rdi, 221
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_222:
   push rdi
   push rsi
   mov rdi, 222
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_223:
   push rdi
   push rsi
   mov rdi, 223
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_224:
   push rdi
   push rsi
   mov rdi, 224
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_225:
   push rdi
   push rsi
   mov rdi, 225
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_226:
   push rdi
   push rsi
   mov rdi, 226
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_227:
   push rdi
   push rsi
   mov rdi, 227
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_228:
   push rdi
   push rsi
   mov rdi, 228
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_229:
   push rdi
   push rsi
   mov rdi, 229
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_230:
   push rdi
   push rsi
   mov rdi, 230
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_231:
   push rdi
   push rsi
   mov rdi, 231
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_232:
   push rdi
   push rsi
   mov rdi, 232
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_233:
   push rdi
   push rsi
   mov rdi, 233
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_234:
   push rdi
   push rsi
   mov rdi, 234
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_235:
   push rdi
   push rsi
   mov rdi, 235
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_236:
   push rdi
   push rsi
   mov rdi, 236
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_237:
   push rdi
   push rsi
   mov rdi, 237
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_238:
   push rdi
   push rsi
   mov rdi, 238
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_239:
   push rdi
   push rsi
   mov rdi, 239
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_240:
   push rdi
   push rsi
   mov rdi, 240
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_241:
   push rdi
   push rsi
   mov rdi, 241
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_242:
   push rdi
   push rsi
   mov rdi, 242
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_243:
   push rdi
   push rsi
   mov rdi, 243
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_244:
   push rdi
   push rsi
   mov rdi, 244
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_245:
   push rdi
   push rsi
   mov rdi, 245
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_246:
   push rdi
   push rsi
   mov rdi, 246
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_247:
   push rdi
   push rsi
   mov rdi, 247
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_248:
   push rdi
   push rsi
   mov rdi, 248
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_249:
   push rdi
   push rsi
   mov rdi, 249
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_250:
   push rdi
   push rsi
   mov rdi, 250
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_251:
   push rdi
   push rsi
   mov rdi, 251
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_252:
   push rdi
   push rsi
   mov rdi, 252
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_253:
   push rdi
   push rsi
   mov rdi, 253
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_254:
   push rdi
   push rsi
   mov rdi, 254
   push rax
   push r10
   push r11
   call isr_normal
   jmp isr_end

isr_locs:
dq isr_0
dq isr_1
dq isr_2
dq isr_3
dq isr_4
dq isr_5
dq isr_6
dq isr_7
dq isr_8
dq isr_9
dq isr_10
dq isr_11
dq isr_12
dq isr_13
dq isr_14
dq isr_15
dq isr_16
dq isr_17
dq isr_18
dq isr_19
dq isr_20
dq isr_21
dq isr_22
dq isr_23
dq isr_24
dq isr_25
dq isr_26
dq isr_27
dq isr_28
dq isr_29
dq isr_30
dq isr_31
dq isr_32
dq isr_33
dq isr_34
dq isr_35
dq isr_36
dq isr_37
dq isr_38
dq isr_39
dq isr_40
dq isr_41
dq isr_42
dq isr_43
dq isr_44
dq isr_45
dq isr_46
dq isr_47
dq isr_48
dq isr_49
dq isr_50
dq isr_51
dq isr_52
dq isr_53
dq isr_54
dq isr_55
dq isr_56
dq isr_57
dq isr_58
dq isr_59
dq isr_60
dq isr_61
dq isr_62
dq isr_63
dq isr_64
dq isr_65
dq isr_66
dq isr_67
dq isr_68
dq isr_69
dq isr_70
dq isr_71
dq isr_72
dq isr_73
dq isr_74
dq isr_75
dq isr_76
dq isr_77
dq isr_78
dq isr_79
dq isr_80
dq isr_81
dq isr_82
dq isr_83
dq isr_84
dq isr_85
dq isr_86
dq isr_87
dq isr_88
dq isr_89
dq isr_90
dq isr_91
dq isr_92
dq isr_93
dq isr_94
dq isr_95
dq isr_96
dq isr_97
dq isr_98
dq isr_99
dq isr_100
dq isr_101
dq isr_102
dq isr_103
dq isr_104
dq isr_105
dq isr_106
dq isr_107
dq isr_108
dq isr_109
dq isr_110
dq isr_111
dq isr_112
dq isr_113
dq isr_114
dq isr_115
dq isr_116
dq isr_117
dq isr_118
dq isr_119
dq isr_120
dq isr_121
dq isr_122
dq isr_123
dq isr_124
dq isr_125
dq isr_126
dq isr_127
dq isr_128
dq isr_129
dq isr_130
dq isr_131
dq isr_132
dq isr_133
dq isr_134
dq isr_135
dq isr_136
dq isr_137
dq isr_138
dq isr_139
dq isr_140
dq isr_141
dq isr_142
dq isr_143
dq isr_144
dq isr_145
dq isr_146
dq isr_147
dq isr_148
dq isr_149
dq isr_150
dq isr_151
dq isr_152
dq isr_153
dq isr_154
dq isr_155
dq isr_156
dq isr_157
dq isr_158
dq isr_159
dq isr_160
dq isr_161
dq isr_162
dq isr_163
dq isr_164
dq isr_165
dq isr_166
dq isr_167
dq isr_168
dq isr_169
dq isr_170
dq isr_171
dq isr_172
dq isr_173
dq isr_174
dq isr_175
dq isr_176
dq isr_177
dq isr_178
dq isr_179
dq isr_180
dq isr_181
dq isr_182
dq isr_183
dq isr_184
dq isr_185
dq isr_186
dq isr_187
dq isr_188
dq isr_189
dq isr_190
dq isr_191
dq isr_192
dq isr_193
dq isr_194
dq isr_195
dq isr_196
dq isr_197
dq isr_198
dq isr_199
dq isr_200
dq isr_201
dq isr_202
dq isr_203
dq isr_204
dq isr_205
dq isr_206
dq isr_207
dq isr_208
dq isr_209
dq isr_210
dq isr_211
dq isr_212
dq isr_213
dq isr_214
dq isr_215
dq isr_216
dq isr_217
dq isr_218
dq isr_219
dq isr_220
dq isr_221
dq isr_222
dq isr_223
dq isr_224
dq isr_225
dq isr_226
dq isr_227
dq isr_228
dq isr_229
dq isr_230
dq isr_231
dq isr_232
dq isr_233
dq isr_234
dq isr_235
dq isr_236
dq isr_237
dq isr_238
dq isr_239
dq isr_240
dq isr_241
dq isr_242
dq isr_243
dq isr_244
dq isr_245
dq isr_246
dq isr_247
dq isr_248
dq isr_249
dq isr_250
dq isr_251
dq isr_252
dq isr_253
dq isr_254


isr_end:
   mov [curr_proc], rdi
   mov [next_proc], rsi
   cmp rdi, rsi
   je return

   ; Save current into curr_proc
   mov rax, [rdi]
   mov rbx, [rdi + 8]
   mov rcx, [rdi + 16]
   mov rdx, [rdi + 24]
   mov rsp, [rdi + 32]
   mov r8, [rdi + 40]
   mov r9, [rdi + 48]
   mov r10, [rdi + 56]
   mov r11, [rdi + 64]
   mov r12, [rdi + 72]
   mov r13, [rdi + 80]
   mov r14, [rdi + 88]
   mov r15, [rdi + 96]
   mov cs, [rdi + 104]
   mov ss, [rdi + 112]
   mov ds, [rdi + 120]
   mov es, [rdi + 128]
   mov fs, [rdi + 136]
   mov gs, [rdi + 144]

   ; Set curr_proc to next proc
   mov rsi, [curr_proc]

   ; Restore from next proc
   mov [rsi], rax
   mov [rsi + 8], rbx
   mov [rsi + 16], rcx
   mov [rsi + 24], rdx
   mov [rsi + 40], r8
   mov [rsi + 48], r9
   mov [rsi + 56], r10
   mov [rsi + 64], r11
   mov [rsi + 72], r12
   mov [rsi + 80], r13
   mov [rsi + 88], r14
   mov [rsi + 96], r15
   mov [rsi + 104], cs
   mov [rsi + 112], ss
   mov [rsi + 120], ds
   mov [rsi + 128], es
   mov [rsi + 136], fs
   mov [rsi + 144], gs
   mov [rsi + 32], rsp

return:
   pop r11
   pop r10
   pop rax
   pop rsi
   pop rdi
   iretq
