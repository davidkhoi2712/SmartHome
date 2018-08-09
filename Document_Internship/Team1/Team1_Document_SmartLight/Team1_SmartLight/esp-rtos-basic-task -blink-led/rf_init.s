	.file	"rf_init.c"
	.text
.Ltext0:
	.literal_position
	.align	4
	.weak	user_rf_pre_init
	.type	user_rf_pre_init, @function
user_rf_pre_init:
.LFB0:
	.file 1 "user/rf_init.c"
	.loc 1 7 0
	addi	sp, sp, -16
.LCFI0:
	.loc 1 8 0
	movi.n	a2, 1
	.loc 1 7 0
	s32i.n	a0, sp, 12
.LCFI1:
	.loc 1 8 0
	call0	system_phy_set_rfoption
.LVL0:
	.loc 1 9 0
	movi.n	a2, 0x52
	call0	system_phy_set_max_tpw
.LVL1:
	.loc 1 10 0
	l32i.n	a0, sp, 12
	addi	sp, sp, 16
	ret.n
.LFE0:
	.size	user_rf_pre_init, .-user_rf_pre_init
	.literal_position
	.literal .LC0, CSWTCH$2
	.align	4
	.weak	user_rf_cal_sector_set
	.type	user_rf_cal_sector_set, @function
user_rf_cal_sector_set:
.LFB1:
	.loc 1 13 0
	addi	sp, sp, -16
.LCFI2:
	s32i.n	a0, sp, 12
.LCFI3:
	.loc 1 14 0
	call0	system_get_flash_size_map
.LVL2:
	mov.n	a3, a2
.LVL3:
	movi.n	a2, 0
.LVL4:
	bgeui	a3, 7, .L3
	l32r	a2, .LC0
	addx2	a3, a3, a2
.LVL5:
	l16ui	a2, a3, 0
.L3:
.LVL6:
	.loc 1 41 0
	l32i.n	a0, sp, 12
	addi	sp, sp, 16
	ret.n
.LFE1:
	.size	user_rf_cal_sector_set, .-user_rf_cal_sector_set
	.section	.rodata
	.align	2
	.type	CSWTCH$2, @object
	.size	CSWTCH$2, 14
CSWTCH$2:
	.short	123
	.short	0
	.short	251
	.short	507
	.short	1019
	.short	507
	.short	1019
	.section	.debug_frame,"",@progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x3
	.string	""
	.uleb128 0x1
	.sleb128 -4
	.uleb128 0
	.byte	0xc
	.uleb128 0x1
	.uleb128 0
	.align	4
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0x80
	.uleb128 0x1
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI2-.LFB1
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0x80
	.uleb128 0x1
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 2 "c:\\espressif\\xtensa-lx106-elf\\xtensa-lx106-elf\\include\\stdint.h"
	.file 3 "C:/Espressif/ESP8266_RTOS_SDK/include/espressif/c_types.h"
	.file 4 "C:/Espressif/ESP8266_RTOS_SDK/include/espressif/esp_system.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x183
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x1
	.4byte	.LASF30
	.4byte	.LASF31
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x51
	.4byte	0x53
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0x34
	.4byte	0x48
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x4
	.4byte	0x53
	.byte	0x4
	.2byte	0x20e
	.4byte	0xdc
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x216
	.4byte	0xa4
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x1
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x121
	.uleb128 0x9
	.4byte	.LVL0
	.4byte	0x162
	.4byte	0x110
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0xb
	.4byte	.LVL1
	.4byte	0x16e
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x1
	.byte	0xc
	.4byte	0x48
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x162
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x1
	.byte	0xe
	.4byte	0xdc
	.4byte	.LLST0
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x1
	.byte	0xf
	.4byte	0x68
	.4byte	.LLST1
	.uleb128 0xe
	.4byte	.LVL2
	.4byte	0x17a
	.byte	0
	.uleb128 0xf
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x199
	.uleb128 0xf
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x174
	.uleb128 0xf
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x222
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF16:
	.string	"FLASH_SIZE_4M_MAP_256_256"
.LASF25:
	.string	"rf_cal_sec"
.LASF27:
	.string	"system_phy_set_max_tpw"
.LASF18:
	.string	"FLASH_SIZE_8M_MAP_512_512"
.LASF26:
	.string	"system_phy_set_rfoption"
.LASF17:
	.string	"FLASH_SIZE_2M"
.LASF24:
	.string	"size_map"
.LASF9:
	.string	"float"
.LASF29:
	.string	"GNU C89 5.2.0 -mlongcalls -mtext-section-literals -mno-serialize-volatile -g -Os -std=gnu90 -fno-inline-functions"
.LASF33:
	.string	"user_rf_cal_sector_set"
.LASF11:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF10:
	.string	"double"
.LASF21:
	.string	"FLASH_SIZE_16M_MAP_1024_1024"
.LASF8:
	.string	"uint32"
.LASF23:
	.string	"flash_size_map"
.LASF4:
	.string	"unsigned int"
.LASF28:
	.string	"system_get_flash_size_map"
.LASF6:
	.string	"long long unsigned int"
.LASF30:
	.string	"user/rf_init.c"
.LASF20:
	.string	"FLASH_SIZE_32M_MAP_512_512"
.LASF13:
	.string	"sizetype"
.LASF32:
	.string	"user_rf_pre_init"
.LASF5:
	.string	"long long int"
.LASF14:
	.string	"char"
.LASF31:
	.string	"D:\\\\FreeRTOS\\\\esp-rtos-basic-task -blink-led (Huy)\\\\esp-rtos-basic-task -blink-led"
.LASF2:
	.string	"short int"
.LASF19:
	.string	"FLASH_SIZE_16M_MAP_512_512"
.LASF7:
	.string	"uint32_t"
.LASF12:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF15:
	.string	"_Bool"
.LASF22:
	.string	"FLASH_SIZE_32M_MAP_1024_1024"
	.ident	"GCC: (GNU) 5.2.0"
