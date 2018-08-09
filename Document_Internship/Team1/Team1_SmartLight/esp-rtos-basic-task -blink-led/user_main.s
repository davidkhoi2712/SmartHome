	.file	"user_main.c"
	.text
.Ltext0:
	.literal_position
	.literal .LC0, mode
	.literal .LC1, hot
	.literal .LC2, lYellow
	.align	4
	.global	task_led_dark_light
	.type	task_led_dark_light, @function
task_led_dark_light:
.LFB0:
	.file 1 "user/user_main.c"
	.loc 1 24 0
.LVL0:
	addi	sp, sp, -16
.LCFI0:
	s32i.n	a0, sp, 12
	s32i.n	a12, sp, 8
	s32i.n	a13, sp, 4
	s32i.n	a14, sp, 0
.LCFI1:
.LVL1:
.L4:
	.loc 1 26 0
	l32r	a2, .LC0
	l32i.n	a12, a2, 0
	bnei	a12, 1, .L2
	.loc 1 26 0 is_stmt 0 discriminator 1
	l32r	a2, .LC1
	l32i.n	a14, a2, 0
	bnez.n	a14, .L2
.LBB3:
	.loc 1 28 0 is_stmt 1
	call0	system_adc_read
.LVL2:
	.loc 1 29 0
	movi	a3, 0x2bc
	l32r	a13, .LC2
	.loc 1 31 0
	mov.n	a5, a14
	mov.n	a4, a12
	.loc 1 29 0
	bltu	a3, a2, .L3
	.loc 1 31 0
	mov.n	a3, a12
	mov.n	a2, a14
.LVL3:
	call0	gpio_output_conf
.LVL4:
	.loc 1 32 0
	s8i	a14, a13, 0
.L2:
.LBE3:
	.loc 1 40 0
	movi.n	a2, 1
	call0	vTaskDelay
.LVL5:
	.loc 1 41 0
	j	.L4
.LVL6:
.L3:
.LBB4:
	.loc 1 36 0
	mov.n	a3, a14
	mov.n	a2, a12
.LVL7:
	call0	gpio_output_conf
.LVL8:
	.loc 1 37 0
	s8i	a12, a13, 0
	j	.L2
.LBE4:
.LFE0:
	.size	task_led_dark_light, .-task_led_dark_light
	.literal_position
	.literal .LC3, 16384
	.literal .LC4, rLight
	.literal .LC5, lRed
	.align	4
	.global	task_blink_red
	.type	task_blink_red, @function
task_blink_red:
.LFB1:
	.loc 1 50 0
	addi	sp, sp, -16
.LCFI2:
	s32i.n	a12, sp, 8
.LCFI3:
	.loc 1 51 0
	l32r	a12, .LC4
	l32r	a4, .LC3
	l8ui	a2, a12, 0
	movi.n	a5, 0
	mov.n	a3, a5
	moveqz	a3, a4, a2
	slli	a2, a2, 14
	.loc 1 50 0
	s32i.n	a0, sp, 12
.LCFI4:
	.loc 1 51 0
	call0	gpio_output_conf
.LVL9:
	.loc 1 52 0
	l8ui	a3, a12, 0
	l32r	a2, .LC5
	.loc 1 54 0
	l32i.n	a0, sp, 12
	.loc 1 52 0
	s8i	a3, a2, 0
	.loc 1 53 0
	movi.n	a2, 1
	xor	a2, a3, a2
	s8i	a2, a12, 0
	.loc 1 54 0
	l32i.n	a12, sp, 8
	addi	sp, sp, 16
	ret.n
.LFE1:
	.size	task_blink_red, .-task_blink_red
	.literal_position
	.literal .LC6, 4096
	.literal .LC7, gLight
	.literal .LC8, lGreen
	.align	4
	.global	task_blink_green
	.type	task_blink_green, @function
task_blink_green:
.LFB2:
	.loc 1 55 0
	addi	sp, sp, -16
.LCFI5:
	s32i.n	a12, sp, 8
.LCFI6:
	.loc 1 56 0
	l32r	a12, .LC7
	l32r	a4, .LC6
	l8ui	a2, a12, 0
	movi.n	a5, 0
	mov.n	a3, a5
	moveqz	a3, a4, a2
	slli	a2, a2, 12
	.loc 1 55 0
	s32i.n	a0, sp, 12
.LCFI7:
	.loc 1 56 0
	call0	gpio_output_conf
.LVL10:
	.loc 1 57 0
	l8ui	a3, a12, 0
	l32r	a2, .LC8
	.loc 1 59 0
	l32i.n	a0, sp, 12
	.loc 1 57 0
	s8i	a3, a2, 0
	.loc 1 58 0
	movi.n	a2, 1
	xor	a2, a3, a2
	s8i	a2, a12, 0
	.loc 1 59 0
	l32i.n	a12, sp, 8
	addi	sp, sp, 16
	ret.n
.LFE2:
	.size	task_blink_green, .-task_blink_green
	.literal_position
	.literal .LC9, 8192
	.literal .LC10, bLight
	.literal .LC11, lBlue
	.align	4
	.global	task_blink_blue
	.type	task_blink_blue, @function
task_blink_blue:
.LFB3:
	.loc 1 60 0
	addi	sp, sp, -16
.LCFI8:
	s32i.n	a12, sp, 8
.LCFI9:
	.loc 1 61 0
	l32r	a12, .LC10
	l32r	a4, .LC9
	l8ui	a2, a12, 0
	movi.n	a5, 0
	mov.n	a3, a5
	moveqz	a3, a4, a2
	slli	a2, a2, 13
	.loc 1 60 0
	s32i.n	a0, sp, 12
.LCFI10:
	.loc 1 61 0
	call0	gpio_output_conf
.LVL11:
	.loc 1 62 0
	l8ui	a3, a12, 0
	l32r	a2, .LC11
	.loc 1 64 0
	l32i.n	a0, sp, 12
	.loc 1 62 0
	s8i	a3, a2, 0
	.loc 1 63 0
	movi.n	a2, 1
	xor	a2, a3, a2
	s8i	a2, a12, 0
	.loc 1 64 0
	l32i.n	a12, sp, 8
	addi	sp, sp, 16
	ret.n
.LFE3:
	.size	task_blink_blue, .-task_blink_blue
	.literal_position
	.literal .LC12, mode
	.literal .LC13, hot
	.literal .LC14, count
	.literal .LC15, pre
	.literal .LC16, i
	.literal .LC17, 5000
	.align	4
	.global	task_led_impediment
	.type	task_led_impediment, @function
task_led_impediment:
.LFB5:
	.loc 1 79 0
.LVL12:
	addi	sp, sp, -32
.LCFI11:
	s32i.n	a0, sp, 28
	s32i.n	a12, sp, 24
	s32i.n	a13, sp, 20
	s32i.n	a14, sp, 16
	s32i.n	a15, sp, 12
.LCFI12:
.LVL13:
.L25:
	.loc 1 81 0
	l32r	a3, .LC12
	l32i.n	a2, a3, 0
	bnei	a2, 1, .L16
	.loc 1 81 0 is_stmt 0 discriminator 1
	l32r	a3, .LC13
	l32i.n	a2, a3, 0
	bnez.n	a2, .L16
	.loc 1 82 0 is_stmt 1
	l32r	a3, .LC14
	.loc 1 83 0
	l32r	a15, .LC15
	.loc 1 82 0
	s32i.n	a2, a3, 0
	.loc 1 83 0
	s8i	a2, a15, 0
	.loc 1 84 0
	movi.n	a12, 0x20
	call0	gpio_input_get
.LVL14:
	and	a2, a2, a12
	l32r	a13, .LC14
	bnez.n	a2, .L16
	.loc 1 85 0
	l32r	a3, .LC16
	s32i.n	a2, a3, 0
	mov.n	a14, a3
	j	.L18
.L21:
	.loc 1 86 0
	call0	gpio_input_get
.LVL15:
	bany	a2, a12, .L19
	.loc 1 87 0
	movi.n	a2, 1
	j	.L29
.L19:
	.loc 1 89 0
	l8ui	a2, a15, 0
	beqz.n	a2, .L20
	.loc 1 90 0
	l32i.n	a2, a13, 0
	addi.n	a2, a2, 1
	s32i.n	a2, a13, 0
	.loc 1 91 0
	movi.n	a2, 0
.L29:
	s8i	a2, a15, 0
.L20:
	.loc 1 94 0 discriminator 2
	l32r	a2, .LC17
	call0	os_delay_us
.LVL16:
	.loc 1 85 0 discriminator 2
	l32i.n	a2, a14, 0
	addi.n	a2, a2, 1
	s32i.n	a2, a14, 0
.L18:
	.loc 1 85 0 is_stmt 0 discriminator 1
	l32i.n	a2, a14, 0
	movi	a3, 0xc7
	bge	a3, a2, .L21
	.loc 1 96 0 is_stmt 1
	l32r	a3, .LC14
	l32i.n	a2, a3, 0
	beqi	a2, 2, .L22
	beqi	a2, 3, .L23
	bnei	a2, 1, .L16
	.loc 1 98 0
	call0	task_blink_red
.LVL17:
	.loc 1 99 0
	j	.L16
.L22:
	.loc 1 101 0
	call0	task_blink_green
.LVL18:
	.loc 1 102 0
	j	.L16
.L23:
	.loc 1 104 0
	call0	task_blink_blue
.LVL19:
.L16:
	.loc 1 112 0
	movi.n	a2, 1
	call0	vTaskDelay
.LVL20:
	.loc 1 113 0
	j	.L25
.LFE5:
	.size	task_led_impediment, .-task_led_impediment
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC19:
	.string	"mode1 - %d\n"
.LC21:
	.string	"mode2 - %d\n"
	.text
	.literal_position
	.literal .LC18, mode
	.literal .LC20, .LC19
	.literal .LC22, .LC21
	.align	4
	.global	change_mode
	.type	change_mode, @function
change_mode:
.LFB4:
	.loc 1 65 0
	addi	sp, sp, -16
.LCFI13:
	s32i.n	a12, sp, 8
.LCFI14:
	.loc 1 66 0
	l32r	a12, .LC18
	l32r	a2, .LC20
	l32i.n	a3, a12, 0
	.loc 1 65 0
	s32i.n	a0, sp, 12
.LCFI15:
	.loc 1 66 0
	call0	printf
.LVL21:
	.loc 1 67 0
	l32i.n	a2, a12, 0
	bnez.n	a2, .L31
	.loc 1 68 0
	movi.n	a2, 1
	j	.L33
.L31:
	.loc 1 70 0
	movi.n	a2, 0
.L33:
	s32i.n	a2, a12, 0
	.loc 1 72 0
	l32i.n	a3, a12, 0
	l32r	a2, .LC22
	call0	printf
.LVL22:
	.loc 1 73 0
	l32i.n	a0, sp, 12
	l32i.n	a12, sp, 8
	addi	sp, sp, 16
	ret.n
.LFE4:
	.size	change_mode, .-change_mode
	.literal_position
	.literal .LC23, button
	.align	4
	.global	task_system_onoff
	.type	task_system_onoff, @function
task_system_onoff:
.LFB6:
	.loc 1 116 0
.LVL23:
	addi	sp, sp, -32
.LCFI16:
	s32i.n	a14, sp, 16
	s32i.n	a15, sp, 12
	s32i.n	a0, sp, 28
	s32i.n	a12, sp, 24
	s32i.n	a13, sp, 20
.LCFI17:
	.loc 1 119 0
	movi.n	a14, 0x10
	.loc 1 120 0
	movi.n	a15, 1
.LVL24:
.L37:
	.loc 1 119 0
	call0	gpio_input_get
.LVL25:
	and	a13, a2, a14
	l32r	a12, .LC23
	beqz.n	a13, .L35
	.loc 1 120 0
	s32i.n	a15, a12, 0
	j	.L36
.L35:
	.loc 1 122 0
	l32i.n	a2, a12, 0
	bnei	a2, 1, .L36
	.loc 1 123 0
	call0	change_mode
.LVL26:
	.loc 1 124 0
	s32i.n	a13, a12, 0
.L36:
	.loc 1 128 0
	movi.n	a2, 1
	call0	vTaskDelay
.LVL27:
	.loc 1 129 0
	j	.L37
.LFE6:
	.size	task_system_onoff, .-task_system_onoff
	.literal_position
	.literal .LC24, config
	.literal .LC25, ssid
	.literal .LC26, password
	.literal .LC27, ip1
	.literal .LC28, 1694869696
	.literal .LC29, 17148096
	.literal .LC30, 16777215
	.align	4
	.global	connect_wifi
	.type	connect_wifi, @function
connect_wifi:
.LFB7:
	.loc 1 136 0
	addi	sp, sp, -16
.LCFI18:
	s32i.n	a0, sp, 12
	s32i.n	a12, sp, 8
	s32i.n	a13, sp, 4
.LCFI19:
	.loc 1 137 0
	call0	wifi_station_disconnect
.LVL28:
	.loc 1 138 0
	l32r	a12, .LC24
	l32r	a3, .LC25
	movi.n	a4, 0x20
	mov.n	a2, a12
	call0	memcpy
.LVL29:
	.loc 1 139 0
	l32r	a3, .LC26
	movi.n	a4, 0x40
	addi	a2, a12, 32
	call0	memcpy
.LVL30:
	.loc 1 140 0
	movi.n	a2, 0
	.loc 1 143 0
	l32r	a13, .LC27
	.loc 1 140 0
	s8i	a2, a12, 96
.LVL31:
	.loc 1 143 0
	l32r	a2, .LC28
	s32i.n	a2, a13, 0
.LVL32:
	.loc 1 145 0
	l32r	a2, .LC29
	s32i.n	a2, a13, 8
.LVL33:
	.loc 1 147 0
	l32r	a2, .LC30
	s32i.n	a2, a13, 4
	.loc 1 148 0
	call0	wifi_station_dhcpc_stop
.LVL34:
	.loc 1 149 0
	mov.n	a3, a13
	movi.n	a2, 0
	call0	wifi_set_ip_info
.LVL35:
	.loc 1 150 0
	mov.n	a2, a12
	call0	wifi_station_set_config
.LVL36:
	.loc 1 151 0
	movi.n	a2, 1
	call0	wifi_station_set_auto_connect
.LVL37:
	.loc 1 152 0
	l32i.n	a0, sp, 12
	l32i.n	a12, sp, 8
	l32i.n	a13, sp, 4
	addi	sp, sp, 16
	ret.n
.LFE7:
	.size	connect_wifi, .-connect_wifi
	.section	.rodata.str1.1
.LC34:
	.string	"80"
.LC36:
	.string	"192.168.5.1"
.LC43:
	.string	"test !"
	.text
	.literal_position
	.literal .LC33, hints
	.literal .LC35, .LC34
	.literal .LC37, .LC36
	.literal .LC38, err
	.literal .LC39, path
	.literal .LC40, recv_buf
	.literal .LC41, i
	.literal .LC42, r
	.literal .LC44, .LC43
	.literal .LC45, 16384
	.literal .LC46, lRed
	.literal .LC47, rLight
	.literal .LC48, 4096
	.literal .LC49, lGreen
	.literal .LC50, gLight
	.literal .LC51, 8192
	.literal .LC52, lBlue
	.literal .LC53, bLight
	.literal .LC54, lYellow
	.literal .LC55, hot
	.literal .LC56, onoff
	.align	4
	.global	http_get
	.type	http_get, @function
http_get:
.LFB8:
	.loc 1 167 0
	addi	sp, sp, -64
.LCFI20:
	s32i.n	a0, sp, 60
	s32i.n	a12, sp, 56
	s32i.n	a13, sp, 52
	s32i.n	a14, sp, 48
	s32i.n	a15, sp, 44
.LCFI21:
	.loc 1 168 0
	call0	wifi_station_get_connect_status
.LVL38:
	bnei	a2, 5, .L39
.LBB8:
.LBB9:
	.loc 1 171 0
	l32r	a4, .LC33
	l32r	a3, .LC35
	l32r	a2, .LC37
	mov.n	a5, sp
	call0	lwip_getaddrinfo
.LVL39:
	l32r	a3, .LC38
	.loc 1 172 0
	movi.n	a4, 0
	.loc 1 171 0
	s32i.n	a2, a3, 0
	.loc 1 172 0
	l32i.n	a2, sp, 0
	l32i.n	a3, a2, 8
	l32i.n	a2, a2, 4
	call0	lwip_socket
.LVL40:
	mov.n	a13, a2
.LVL41:
	.loc 1 173 0
	l32i.n	a2, sp, 0
.LVL42:
	l32i.n	a4, a2, 16
	l32i.n	a3, a2, 20
	mov.n	a2, a13
	call0	lwip_connect
.LVL43:
	.loc 1 174 0
	l32i.n	a2, sp, 0
	call0	lwip_freeaddrinfo
.LVL44:
	.loc 1 175 0
	l32r	a12, .LC39
	mov.n	a2, a12
	call0	strlen
.LVL45:
	mov.n	a4, a2
	mov.n	a3, a12
	mov.n	a2, a13
	call0	lwip_write
.LVL46:
	movi.n	a2, 0
	.loc 1 178 0
	l32r	a3, .LC40
	mov.n	a6, a2
	.loc 1 177 0
	movi	a4, 0xd7
.L41:
	.loc 1 178 0
	add.n	a5, a2, a3
	s8i	a6, a5, 0
	.loc 1 177 0
	addi.n	a2, a2, 1
	.loc 1 178 0
	movi.n	a14, 0
	mov.n	a12, a3
	.loc 1 177 0
	bne	a2, a4, .L41
	l32r	a3, .LC41
	.loc 1 180 0
	movi	a4, 0xd6
	s32i.n	a2, a3, 0
	mov.n	a3, a12
	mov.n	a2, a13
	call0	lwip_read
.LVL47:
	l32r	a3, .LC42
	s32i.n	a2, a3, 0
	.loc 1 181 0
	l8ui	a2, a12, 0
	mov.n	a6, a3
	movi.n	a3, 0x3f
	beq	a2, a3, .L39
	.loc 1 185 0
	movi.n	a3, 0x21
	bne	a2, a3, .L43
	.loc 1 186 0
	l32r	a2, .LC44
	s32i.n	a6, sp, 16
	call0	printf
.LVL48:
	.loc 1 188 0
	l32r	a3, .LC45
	movi.n	a5, 0
	mov.n	a4, a3
	mov.n	a2, a5
	call0	gpio_output_conf
.LVL49:
	.loc 1 189 0
	l32r	a2, .LC46
	.loc 1 191 0
	l32r	a3, .LC48
	.loc 1 189 0
	s8i	a14, a2, 0
	.loc 1 190 0
	l32r	a2, .LC47
	movi.n	a15, 1
	.loc 1 191 0
	movi.n	a5, 0
	mov.n	a4, a3
	.loc 1 190 0
	s8i	a15, a2, 0
	.loc 1 191 0
	mov.n	a2, a5
	call0	gpio_output_conf
.LVL50:
	.loc 1 192 0
	l32r	a2, .LC49
	.loc 1 194 0
	l32r	a3, .LC51
	.loc 1 192 0
	s8i	a14, a2, 0
	.loc 1 193 0
	l32r	a2, .LC50
	.loc 1 194 0
	movi.n	a5, 0
	mov.n	a4, a3
	.loc 1 193 0
	s8i	a15, a2, 0
	.loc 1 194 0
	mov.n	a2, a5
	call0	gpio_output_conf
.LVL51:
	.loc 1 195 0
	l32r	a2, .LC52
	.loc 1 197 0
	movi.n	a5, 0
	.loc 1 195 0
	s8i	a14, a2, 0
	.loc 1 196 0
	l32r	a2, .LC53
	.loc 1 197 0
	movi.n	a4, 1
	.loc 1 196 0
	s8i	a15, a2, 0
	.loc 1 197 0
	mov.n	a3, a4
	mov.n	a2, a5
	call0	gpio_output_conf
.LVL52:
	.loc 1 198 0
	l32r	a2, .LC54
	.loc 1 199 0
	movi.n	a3, 1
	.loc 1 198 0
	s8i	a14, a2, 0
	.loc 1 199 0
	l32r	a2, .LC55
	l32i.n	a6, sp, 16
	s32i.n	a3, a2, 0
.L43:
	.loc 1 201 0
	l8ui	a3, a12, 0
	movi.n	a2, 0x21
	beq	a3, a2, .L44
	.loc 1 202 0
	l32r	a2, .LC55
	movi.n	a3, 0
	s32i.n	a3, a2, 0
.L44:
	.loc 1 206 0
	l32i.n	a2, a6, 0
	blti	a2, 1, .L45
	.loc 1 209 0
	l32r	a2, .LC56
	l8ui	a3, a12, 210
	s8i	a3, a2, 0
	.loc 1 210 0
	l8ui	a3, a12, 211
	s8i	a3, a2, 1
	.loc 1 211 0
	l8ui	a3, a12, 212
	s8i	a3, a2, 2
	.loc 1 212 0
	l8ui	a3, a12, 213
	s8i	a3, a2, 3
.L45:
	.loc 1 214 0
	mov.n	a2, a13
	call0	lwip_close
.LVL53:
.L39:
.LBE9:
.LBE8:
	.loc 1 216 0
	l32i.n	a0, sp, 60
	l32i.n	a12, sp, 56
	l32i.n	a13, sp, 52
	l32i.n	a14, sp, 48
	l32i.n	a15, sp, 44
	addi	sp, sp, 64
	ret.n
.LFE8:
	.size	http_get, .-http_get
	.section	.rodata.str1.1
.LC57:
	.string	"GET /control.php?onoff="
.LC61:
	.string	"%d"
.LC67:
	.string	" HTTP/1.1\r\nHost: smartlight.ddns.net\r\nUser-Agent: esp-open-rtos/0.1 esp8266\r\nConnection: close\r\n\r\n"
.LC70:
	.string	"%s"
	.text
	.literal_position
	.literal .LC58, .LC57
	.literal .LC59, path
	.literal .LC60, lRed
	.literal .LC62, .LC61
	.literal .LC63, digit
	.literal .LC64, lGreen
	.literal .LC65, lBlue
	.literal .LC66, lYellow
	.literal .LC68, .LC67
	.literal .LC69, onoff
	.literal .LC71, .LC70
	.literal .LC72, 16384
	.literal .LC73, rLight
	.literal .LC74, 4096
	.literal .LC75, gLight
	.literal .LC76, 8192
	.literal .LC77, bLight
	.align	4
	.global	task_http_get
	.type	task_http_get, @function
task_http_get:
.LFB9:
	.loc 1 219 0
.LVL54:
	addi	sp, sp, -32
.LCFI22:
	s32i.n	a13, sp, 20
.LCFI23:
	.loc 1 227 0
	l32r	a13, .LC59
	.loc 1 219 0
	s32i.n	a0, sp, 28
	s32i.n	a12, sp, 24
	s32i.n	a14, sp, 16
	s32i.n	a15, sp, 12
.LCFI24:
.LVL55:
.L58:
	.loc 1 227 0
	l32r	a3, .LC58
	mov.n	a2, a13
	call0	strcpy
.LVL56:
	.loc 1 228 0
	l32r	a14, .LC60
	l32r	a12, .LC63
	l8ui	a4, a14, 0
	l32r	a3, .LC62
	mov.n	a2, a12
	call0	sprintf
.LVL57:
	.loc 1 229 0
	mov.n	a3, a12
	mov.n	a2, a13
	call0	strcat
.LVL58:
	.loc 1 230 0
	l32r	a2, .LC64
	l32r	a3, .LC62
	l8ui	a4, a2, 0
	mov.n	a2, a12
	call0	sprintf
.LVL59:
	.loc 1 231 0
	mov.n	a3, a12
	mov.n	a2, a13
	call0	strcat
.LVL60:
	.loc 1 232 0
	l32r	a3, .LC65
	mov.n	a2, a12
	l8ui	a4, a3, 0
	l32r	a3, .LC62
	call0	sprintf
.LVL61:
	.loc 1 233 0
	mov.n	a3, a12
	mov.n	a2, a13
	call0	strcat
.LVL62:
	.loc 1 234 0
	l32r	a15, .LC66
	l32r	a3, .LC62
	l8ui	a4, a15, 0
	mov.n	a2, a12
	call0	sprintf
.LVL63:
	.loc 1 235 0
	mov.n	a3, a12
	mov.n	a2, a13
	call0	strcat
.LVL64:
	.loc 1 236 0
	l32r	a3, .LC68
	mov.n	a2, a13
	call0	strcat
.LVL65:
	.loc 1 241 0
	call0	http_get
.LVL66:
	.loc 1 242 0
	l32r	a12, .LC69
	l32r	a2, .LC71
	mov.n	a3, a12
	call0	printf
.LVL67:
	.loc 1 243 0
	mov.n	a2, a12
	call0	strlen
.LVL68:
	bnei	a2, 3, .L48
	.loc 1 244 0
	l8ui	a2, a12, 2
	movi.n	a3, 0x30
	bne	a2, a3, .L49
	.loc 1 245 0
	l32r	a2, .LC72
	movi.n	a5, 0
	mov.n	a4, a2
	mov.n	a3, a5
	call0	gpio_output_conf
.LVL69:
	.loc 1 246 0
	movi.n	a12, 1
	.loc 1 247 0
	l32r	a2, .LC73
	.loc 1 246 0
	s8i	a12, a14, 0
	.loc 1 247 0
	movi.n	a14, 0
	s8i	a14, a2, 0
	.loc 1 248 0
	l32r	a2, .LC74
	movi.n	a5, 0
	mov.n	a4, a2
	mov.n	a3, a5
	call0	gpio_output_conf
.LVL70:
	.loc 1 249 0
	l32r	a2, .LC64
	.loc 1 251 0
	movi.n	a5, 0
	.loc 1 249 0
	s8i	a12, a2, 0
	.loc 1 250 0
	l32r	a2, .LC75
	.loc 1 251 0
	mov.n	a3, a5
	.loc 1 250 0
	s8i	a14, a2, 0
	.loc 1 251 0
	l32r	a2, .LC76
	mov.n	a4, a2
	call0	gpio_output_conf
.LVL71:
	.loc 1 252 0
	l32r	a3, .LC65
	.loc 1 253 0
	l32r	a2, .LC77
	.loc 1 254 0
	movi.n	a5, 0
	movi.n	a4, 1
	.loc 1 252 0
	s8i	a12, a3, 0
	.loc 1 253 0
	s8i	a14, a2, 0
	.loc 1 254 0
	mov.n	a3, a5
	mov.n	a2, a4
	j	.L59
.L49:
	.loc 1 256 0
	movi.n	a3, 0x31
	bne	a2, a3, .L51
	.loc 1 257 0
	l32r	a2, .LC72
	movi.n	a5, 0
	mov.n	a4, a2
	mov.n	a3, a5
	call0	gpio_output_conf
.LVL72:
	.loc 1 258 0
	movi.n	a2, 1
	s8i	a2, a14, 0
	.loc 1 259 0
	movi.n	a3, 0
	j	.L64
.L51:
	.loc 1 260 0
	movi.n	a3, 0x32
	bne	a2, a3, .L52
	.loc 1 261 0
	l32r	a2, .LC74
	movi.n	a5, 0
	mov.n	a4, a2
	mov.n	a3, a5
	call0	gpio_output_conf
.LVL73:
	.loc 1 262 0
	l32r	a3, .LC64
	movi.n	a2, 1
	s8i	a2, a3, 0
	.loc 1 263 0
	movi.n	a3, 0
	j	.L63
.L52:
	.loc 1 264 0
	movi.n	a3, 0x33
	bne	a2, a3, .L53
	.loc 1 265 0
	l32r	a2, .LC76
	movi.n	a5, 0
	mov.n	a4, a2
	mov.n	a3, a5
	call0	gpio_output_conf
.LVL74:
	.loc 1 266 0
	l32r	a3, .LC65
	movi.n	a2, 1
	s8i	a2, a3, 0
	.loc 1 267 0
	movi.n	a3, 0
	j	.L62
.L53:
	.loc 1 269 0
	movi.n	a5, 0
	movi.n	a4, 1
	mov.n	a2, a4
	mov.n	a3, a5
	call0	gpio_output_conf
.LVL75:
	.loc 1 270 0
	movi.n	a2, 1
	j	.L60
.L48:
	.loc 1 272 0
	bnei	a2, 4, .L50
	.loc 1 273 0
	l8ui	a2, a12, 3
	movi.n	a3, 0x30
	bne	a2, a3, .L54
	.loc 1 274 0
	l32r	a3, .LC72
	movi.n	a5, 0
	mov.n	a4, a3
	mov.n	a2, a5
	call0	gpio_output_conf
.LVL76:
	.loc 1 275 0
	movi.n	a12, 0
	.loc 1 276 0
	l32r	a2, .LC73
	.loc 1 277 0
	l32r	a3, .LC74
	movi.n	a5, 0
	.loc 1 275 0
	s8i	a12, a14, 0
	.loc 1 276 0
	movi.n	a14, 1
	.loc 1 277 0
	mov.n	a4, a3
	.loc 1 276 0
	s8i	a14, a2, 0
	.loc 1 277 0
	mov.n	a2, a5
	call0	gpio_output_conf
.LVL77:
	.loc 1 278 0
	l32r	a2, .LC64
	.loc 1 280 0
	l32r	a3, .LC76
	.loc 1 278 0
	s8i	a12, a2, 0
	.loc 1 279 0
	l32r	a2, .LC75
	.loc 1 280 0
	movi.n	a5, 0
	mov.n	a4, a3
	.loc 1 279 0
	s8i	a14, a2, 0
	.loc 1 280 0
	mov.n	a2, a5
	call0	gpio_output_conf
.LVL78:
	.loc 1 281 0
	l32r	a3, .LC65
	.loc 1 282 0
	l32r	a2, .LC77
	.loc 1 283 0
	movi.n	a5, 0
	movi.n	a4, 1
	.loc 1 281 0
	s8i	a12, a3, 0
	.loc 1 282 0
	s8i	a14, a2, 0
	.loc 1 283 0
	mov.n	a3, a4
	mov.n	a2, a5
.L59:
	call0	gpio_output_conf
.LVL79:
	.loc 1 284 0
	s8i	a12, a15, 0
	j	.L50
.L54:
	.loc 1 285 0
	movi.n	a3, 0x31
	bne	a2, a3, .L55
	.loc 1 286 0
	l32r	a3, .LC72
	movi.n	a5, 0
	mov.n	a4, a3
	mov.n	a2, a5
	call0	gpio_output_conf
.LVL80:
	.loc 1 287 0
	movi.n	a2, 0
	s8i	a2, a14, 0
	.loc 1 288 0
	movi.n	a3, 1
.L64:
	l32r	a2, .LC73
	j	.L61
.L55:
	.loc 1 289 0
	movi.n	a3, 0x32
	bne	a2, a3, .L56
	.loc 1 290 0
	l32r	a3, .LC74
	movi.n	a5, 0
	mov.n	a4, a3
	mov.n	a2, a5
	call0	gpio_output_conf
.LVL81:
	.loc 1 291 0
	l32r	a3, .LC64
	movi.n	a2, 0
	s8i	a2, a3, 0
	.loc 1 292 0
	movi.n	a3, 1
.L63:
	l32r	a2, .LC75
	j	.L61
.L56:
	.loc 1 293 0
	movi.n	a3, 0x33
	bne	a2, a3, .L57
	.loc 1 294 0
	l32r	a3, .LC76
	movi.n	a5, 0
	mov.n	a4, a3
	mov.n	a2, a5
	call0	gpio_output_conf
.LVL82:
	.loc 1 295 0
	l32r	a3, .LC65
	movi.n	a2, 0
	s8i	a2, a3, 0
	.loc 1 296 0
	movi.n	a3, 1
.L62:
	l32r	a2, .LC77
.L61:
	s8i	a3, a2, 0
	j	.L50
.L57:
	.loc 1 298 0
	movi.n	a5, 0
	movi.n	a4, 1
	mov.n	a2, a5
	mov.n	a3, a4
	call0	gpio_output_conf
.LVL83:
	.loc 1 299 0
	movi.n	a2, 0
.L60:
	s8i	a2, a15, 0
.L50:
	.loc 1 302 0
	movi	a2, 0xc8
	call0	vTaskDelay
.LVL84:
	.loc 1 303 0
	j	.L58
.LFE9:
	.size	task_http_get, .-task_http_get
	.section	.rodata.str1.1
.LC85:
	.string	"task_led_dark_light"
.LC88:
	.string	"task_led_impediment"
.LC91:
	.string	"task_http_get"
.LC94:
	.string	"task_system_onoff"
	.text
	.literal_position
	.literal .LC78, 115200
	.literal .LC79, 1610614788
	.literal .LC80, 1610614792
	.literal .LC81, 1610614796
	.literal .LC82, 1610614836
	.literal .LC83, 1610614844
	.literal .LC84, 1610614848
	.literal .LC86, .LC85
	.literal .LC87, task_led_dark_light
	.literal .LC89, .LC88
	.literal .LC90, task_led_impediment
	.literal .LC92, .LC91
	.literal .LC93, task_http_get
	.literal .LC95, .LC94
	.literal .LC96, task_system_onoff
	.align	4
	.global	user_init
	.type	user_init, @function
user_init:
.LFB10:
	.loc 1 307 0
	.loc 1 310 0
	l32r	a2, .LC78
	.loc 1 307 0
	addi	sp, sp, -64
.LCFI25:
	.loc 1 310 0
	s32i.n	a2, sp, 16
	.loc 1 311 0
	movi.n	a2, 3
	.loc 1 307 0
	s32i.n	a12, sp, 56
	.loc 1 311 0
	s32i.n	a2, sp, 20
.LCFI26:
	.loc 1 314 0
	movi.n	a12, 0
	.loc 1 315 0
	movi	a2, 0x78
	.loc 1 317 0
	addi	a3, sp, 16
	.loc 1 307 0
	s32i.n	a13, sp, 52
	s32i.n	a14, sp, 48
.LCFI27:
	.loc 1 312 0
	movi.n	a13, 2
	.loc 1 313 0
	movi.n	a14, 1
	.loc 1 315 0
	s8i	a2, sp, 36
	.loc 1 317 0
	mov.n	a2, a12
	.loc 1 307 0
	s32i.n	a0, sp, 60
.LCFI28:
	.loc 1 312 0
	s32i.n	a13, sp, 24
	.loc 1 313 0
	s32i.n	a14, sp, 28
	.loc 1 314 0
	s32i.n	a12, sp, 32
	.loc 1 316 0
	s32i.n	a12, sp, 40
	.loc 1 317 0
	call0	UART_ParamConfig
.LVL85:
	.loc 1 321 0
	mov.n	a2, a14
	call0	wifi_set_opmode
.LVL86:
	.loc 1 322 0
	call0	connect_wifi
.LVL87:
	.loc 1 324 0
	l32r	a4, .LC79
	movi	a2, -0x131
	l32i.n	a3, a4, 0
	.loc 1 332 0
	mov.n	a7, a12
	.loc 1 324 0
	and	a3, a3, a2
	s32i.n	a3, a4, 0
	l32i.n	a5, a4, 0
	movi.n	a3, 0x30
	or	a5, a5, a3
	s32i.n	a5, a4, 0
	.loc 1 325 0
	l32r	a4, .LC80
	.loc 1 332 0
	mov.n	a6, a13
	.loc 1 325 0
	l32i.n	a5, a4, 0
	and	a5, a5, a2
	s32i.n	a5, a4, 0
	l32i.n	a5, a4, 0
	or	a5, a5, a3
	s32i.n	a5, a4, 0
	.loc 1 326 0
	l32r	a4, .LC81
	l32i.n	a5, a4, 0
	and	a5, a5, a2
	s32i.n	a5, a4, 0
	l32i.n	a5, a4, 0
	or	a3, a5, a3
	s32i.n	a3, a4, 0
	.loc 1 327 0
	l32r	a3, .LC82
	.loc 1 332 0
	mov.n	a5, a12
	.loc 1 327 0
	l32i.n	a4, a3, 0
	and	a4, a4, a2
	s32i.n	a4, a3, 0
	l32i.n	a4, a3, 0
	s32i.n	a4, a3, 0
	.loc 1 328 0
	l32r	a3, .LC83
	l32i.n	a4, a3, 0
	and	a4, a4, a2
	s32i.n	a4, a3, 0
	l32i.n	a4, a3, 0
	s32i.n	a4, a3, 0
	.loc 1 329 0
	l32r	a3, .LC84
	l32i.n	a4, a3, 0
	and	a2, a4, a2
	s32i.n	a2, a3, 0
	l32i.n	a2, a3, 0
	.loc 1 332 0
	movi	a4, 0x100
	.loc 1 329 0
	s32i.n	a2, a3, 0
	.loc 1 332 0
	s32i.n	a12, sp, 4
	s32i.n	a12, sp, 0
	l32r	a3, .LC86
	l32r	a2, .LC87
	call0	xTaskGenericCreate
.LVL88:
	.loc 1 333 0
	l32r	a3, .LC89
	l32r	a2, .LC90
	s32i.n	a12, sp, 4
	s32i.n	a12, sp, 0
	mov.n	a7, a12
	mov.n	a6, a13
	mov.n	a5, a12
	movi	a4, 0x100
	call0	xTaskGenericCreate
.LVL89:
	.loc 1 334 0
	l32r	a3, .LC92
	l32r	a2, .LC93
	s32i.n	a12, sp, 4
	s32i.n	a12, sp, 0
	mov.n	a7, a12
	mov.n	a6, a13
	mov.n	a5, a12
	movi	a4, 0x100
	call0	xTaskGenericCreate
.LVL90:
	.loc 1 335 0
	l32r	a3, .LC95
	l32r	a2, .LC96
	s32i.n	a12, sp, 4
	s32i.n	a12, sp, 0
	mov.n	a7, a12
	mov.n	a6, a13
	mov.n	a5, a12
	movi	a4, 0x100
	call0	xTaskGenericCreate
.LVL91:
	.loc 1 339 0
	l32i.n	a0, sp, 60
	l32i.n	a12, sp, 56
	l32i.n	a13, sp, 52
	l32i.n	a14, sp, 48
	addi	sp, sp, 64
	ret.n
.LFE10:
	.size	user_init, .-user_init
	.comm	digit,2,1
	.comm	r,4,4
	.comm	recv_buf,215,1
	.comm	err,4,4
	.global	hints
	.section	.rodata
	.align	4
	.type	hints, @object
	.size	hints, 32
hints:
	.zero	4
	.word	0
	.word	1
	.zero	20
	.local	onoff
	.comm	onoff,5,1
	.local	path
	.comm	path,1000,1
	.comm	ip1,12,4
	.comm	config,103,1
	.global	password
	.data
	.type	password, @object
	.size	password, 64
password:
	.string	"123123123"
	.zero	54
	.global	ssid
	.type	ssid, @object
	.size	ssid, 32
ssid:
	.string	"test"
	.zero	27
	.global	button
	.section	.bss
	.align	4
	.type	button, @object
	.size	button, 4
button:
	.zero	4
	.global	pre
	.type	pre, @object
	.size	pre, 1
pre:
	.zero	1
	.global	count
	.align	4
	.type	count, @object
	.size	count, 4
count:
	.zero	4
	.global	i
	.align	4
	.type	i, @object
	.size	i, 4
i:
	.zero	4
	.global	lBlue
	.type	lBlue, @object
	.size	lBlue, 1
lBlue:
	.zero	1
	.global	lGreen
	.type	lGreen, @object
	.size	lGreen, 1
lGreen:
	.zero	1
	.global	lRed
	.type	lRed, @object
	.size	lRed, 1
lRed:
	.zero	1
	.global	bLight
	.data
	.type	bLight, @object
	.size	bLight, 1
bLight:
	.byte	1
	.global	gLight
	.type	gLight, @object
	.size	gLight, 1
gLight:
	.byte	1
	.global	rLight
	.type	rLight, @object
	.size	rLight, 1
rLight:
	.byte	1
	.global	lYellow
	.section	.bss
	.type	lYellow, @object
	.size	lYellow, 1
lYellow:
	.zero	1
	.global	hot
	.align	4
	.type	hot, @object
	.size	hot, 4
hot:
	.zero	4
	.global	mode
	.data
	.align	4
	.type	mode, @object
	.size	mode, 4
mode:
	.word	1
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
	.byte	0x8c
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8e
	.uleb128 0x4
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
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0x80
	.uleb128 0x1
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI5-.LFB2
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0x80
	.uleb128 0x1
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI8-.LFB3
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0x80
	.uleb128 0x1
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI11-.LFB5
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0x80
	.uleb128 0x1
	.byte	0x8c
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8e
	.uleb128 0x4
	.byte	0x8f
	.uleb128 0x5
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI13-.LFB4
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0x80
	.uleb128 0x1
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI16-.LFB6
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0x8e
	.uleb128 0x4
	.byte	0x8f
	.uleb128 0x5
	.byte	0x80
	.uleb128 0x1
	.byte	0x8c
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI18-.LFB7
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0x80
	.uleb128 0x1
	.byte	0x8c
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI20-.LFB8
	.byte	0xe
	.uleb128 0x40
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0x80
	.uleb128 0x1
	.byte	0x8c
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8e
	.uleb128 0x4
	.byte	0x8f
	.uleb128 0x5
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI22-.LFB9
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0x80
	.uleb128 0x1
	.byte	0x8c
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x4
	.byte	0x8f
	.uleb128 0x5
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI25-.LFB10
	.byte	0xe
	.uleb128 0x40
	.byte	0x4
	.4byte	.LCFI26-.LCFI25
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8e
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI28-.LCFI27
	.byte	0x80
	.uleb128 0x1
	.align	4
.LEFDE20:
	.text
.Letext0:
	.file 2 "c:\\espressif\\xtensa-lx106-elf\\xtensa-lx106-elf\\include\\stdint.h"
	.file 3 "C:/Espressif/ESP8266_RTOS_SDK/include/espressif/c_types.h"
	.file 4 "C:/Espressif/ESP8266_RTOS_SDK/include/lwip/ipv4/lwip/ip4_addr.h"
	.file 5 "C:/Espressif/ESP8266_RTOS_SDK/include/espressif/esp_wifi.h"
	.file 6 "C:/Espressif/ESP8266_RTOS_SDK/include/espressif/esp_sta.h"
	.file 7 "driver/uart.h"
	.file 8 "C:/Espressif/ESP8266_RTOS_SDK/include/lwip/lwip/sockets.h"
	.file 9 "C:/Espressif/ESP8266_RTOS_SDK/include/lwip/lwip/netdb.h"
	.file 10 "C:/Espressif/ESP8266_RTOS_SDK/include/espressif/esp_system.h"
	.file 11 "driver/gpio.h"
	.file 12 "C:/Espressif/ESP8266_RTOS_SDK/include/freertos/task.h"
	.file 13 "C:/Espressif/ESP8266_RTOS_SDK/include/espressif/esp_misc.h"
	.file 14 "c:\\espressif\\xtensa-lx106-elf\\xtensa-lx106-elf\\include\\stdio.h"
	.file 15 "c:\\espressif\\xtensa-lx106-elf\\xtensa-lx106-elf\\include\\string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1170
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF156
	.byte	0x1
	.4byte	.LASF157
	.4byte	.LASF158
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2a
	.4byte	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x36
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x51
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x24
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x28
	.4byte	0x5e
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2b
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x30
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x34
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF16
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF18
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF19
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF20
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x4
	.byte	0x4
	.byte	0x2c
	.4byte	0x100
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x4
	.byte	0x2d
	.4byte	0x89
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0xc
	.byte	0x5
	.byte	0x84
	.4byte	0x136
	.uleb128 0x9
	.string	"ip"
	.byte	0x5
	.byte	0x85
	.4byte	0xe7
	.byte	0
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x5
	.byte	0x86
	.4byte	0xe7
	.byte	0x4
	.uleb128 0x9
	.string	"gw"
	.byte	0x5
	.byte	0x87
	.4byte	0xe7
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.4byte	0x94
	.4byte	0x146
	.uleb128 0xb
	.4byte	0xd3
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.4byte	0x94
	.4byte	0x156
	.uleb128 0xb
	.4byte	0xd3
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.4byte	0x94
	.4byte	0x166
	.uleb128 0xb
	.4byte	0xd3
	.byte	0x3f
	.byte	0
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x67
	.byte	0x6
	.byte	0x34
	.4byte	0x1a3
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x6
	.byte	0x35
	.4byte	0x136
	.byte	0
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x6
	.byte	0x36
	.4byte	0x156
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x6
	.byte	0x37
	.4byte	0x94
	.byte	0x60
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x6
	.byte	0x38
	.4byte	0x146
	.byte	0x61
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x69
	.byte	0x6
	.byte	0xf5
	.4byte	0x1d4
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x3
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x69
	.byte	0x7
	.byte	0x25
	.4byte	0x1f9
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x7
	.byte	0x2a
	.4byte	0x1d4
	.uleb128 0xc
	.byte	0x4
	.4byte	0x69
	.byte	0x7
	.byte	0x2c
	.4byte	0x223
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x7
	.byte	0x30
	.4byte	0x204
	.uleb128 0xc
	.byte	0x4
	.4byte	0x69
	.byte	0x7
	.byte	0x32
	.4byte	0x247
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x69
	.byte	0x7
	.byte	0x37
	.4byte	0x266
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x7
	.byte	0x3b
	.4byte	0x247
	.uleb128 0xc
	.byte	0x4
	.4byte	0x69
	.byte	0x7
	.byte	0x42
	.4byte	0x2fc
	.uleb128 0xe
	.4byte	.LASF52
	.2byte	0x12c
	.uleb128 0xe
	.4byte	.LASF53
	.2byte	0x258
	.uleb128 0xe
	.4byte	.LASF54
	.2byte	0x4b0
	.uleb128 0xe
	.4byte	.LASF55
	.2byte	0x960
	.uleb128 0xe
	.4byte	.LASF56
	.2byte	0x12c0
	.uleb128 0xe
	.4byte	.LASF57
	.2byte	0x2580
	.uleb128 0xe
	.4byte	.LASF58
	.2byte	0x4b00
	.uleb128 0xe
	.4byte	.LASF59
	.2byte	0x9600
	.uleb128 0xe
	.4byte	.LASF60
	.2byte	0xe100
	.uleb128 0xf
	.4byte	.LASF61
	.4byte	0x12480
	.uleb128 0xf
	.4byte	.LASF62
	.4byte	0x1c200
	.uleb128 0xf
	.4byte	.LASF63
	.4byte	0x38400
	.uleb128 0xf
	.4byte	.LASF64
	.4byte	0x70800
	.uleb128 0xf
	.4byte	.LASF65
	.4byte	0xe1000
	.uleb128 0xf
	.4byte	.LASF66
	.4byte	0x1c2000
	.uleb128 0xf
	.4byte	.LASF67
	.4byte	0x384000
	.byte	0
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x7
	.byte	0x53
	.4byte	0x271
	.uleb128 0xc
	.byte	0x4
	.4byte	0x69
	.byte	0x7
	.byte	0x55
	.4byte	0x32c
	.uleb128 0xd
	.4byte	.LASF69
	.byte	0
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF72
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x7
	.byte	0x5a
	.4byte	0x307
	.uleb128 0xc
	.byte	0x4
	.4byte	0x69
	.byte	0x7
	.byte	0x5c
	.4byte	0x36e
	.uleb128 0xd
	.4byte	.LASF74
	.byte	0
	.uleb128 0xf
	.4byte	.LASF75
	.4byte	0x80000
	.uleb128 0xf
	.4byte	.LASF76
	.4byte	0x100000
	.uleb128 0xf
	.4byte	.LASF77
	.4byte	0x400000
	.uleb128 0xf
	.4byte	.LASF78
	.4byte	0x800000
	.byte	0
	.uleb128 0x10
	.byte	0x1c
	.byte	0x7
	.byte	0x64
	.4byte	0x3cb
	.uleb128 0x8
	.4byte	.LASF79
	.byte	0x7
	.byte	0x65
	.4byte	0x2fc
	.byte	0
	.uleb128 0x8
	.4byte	.LASF80
	.byte	0x7
	.byte	0x66
	.4byte	0x1f9
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF81
	.byte	0x7
	.byte	0x67
	.4byte	0x266
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF82
	.byte	0x7
	.byte	0x68
	.4byte	0x223
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF83
	.byte	0x7
	.byte	0x69
	.4byte	0x32c
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF84
	.byte	0x7
	.byte	0x6a
	.4byte	0x94
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF85
	.byte	0x7
	.byte	0x6b
	.4byte	0xaa
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0x7
	.byte	0x6c
	.4byte	0x36e
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0x8
	.byte	0x36
	.4byte	0x7e
	.uleb128 0x7
	.4byte	.LASF88
	.byte	0x18
	.byte	0x8
	.byte	0x55
	.4byte	0x412
	.uleb128 0x8
	.4byte	.LASF89
	.byte	0x8
	.byte	0x56
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.4byte	.LASF90
	.byte	0x8
	.byte	0x57
	.4byte	0x3d6
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF91
	.byte	0x8
	.byte	0x59
	.4byte	0x412
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0xe0
	.4byte	0x422
	.uleb128 0xb
	.4byte	0xd3
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.4byte	0xe0
	.4byte	0x432
	.uleb128 0xb
	.4byte	0xd3
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF92
	.byte	0x8
	.byte	0x6c
	.4byte	0x89
	.uleb128 0x7
	.4byte	.LASF93
	.byte	0x20
	.byte	0x9
	.byte	0x53
	.4byte	0x4aa
	.uleb128 0x8
	.4byte	.LASF94
	.byte	0x9
	.byte	0x54
	.4byte	0x57
	.byte	0
	.uleb128 0x8
	.4byte	.LASF95
	.byte	0x9
	.byte	0x55
	.4byte	0x57
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF96
	.byte	0x9
	.byte	0x56
	.4byte	0x57
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF97
	.byte	0x9
	.byte	0x57
	.4byte	0x57
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF98
	.byte	0x9
	.byte	0x58
	.4byte	0x432
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF99
	.byte	0x9
	.byte	0x59
	.4byte	0x4aa
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF100
	.byte	0x9
	.byte	0x5a
	.4byte	0xda
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF101
	.byte	0x9
	.byte	0x5b
	.4byte	0x4b0
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3e1
	.uleb128 0x6
	.byte	0x4
	.4byte	0x43d
	.uleb128 0x11
	.4byte	.LASF159
	.byte	0x1
	.byte	0xa7
	.byte	0x1
	.4byte	0x4d9
	.uleb128 0x12
	.uleb128 0x13
	.string	"res"
	.byte	0x1
	.byte	0xaa
	.4byte	0x4b0
	.uleb128 0x13
	.string	"s"
	.byte	0x1
	.byte	0xac
	.4byte	0x57
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0x1
	.byte	0x17
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x56b
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x1
	.byte	0x17
	.4byte	0xca
	.4byte	.LLST0
	.uleb128 0x16
	.4byte	.Ldebug_ranges0+0
	.4byte	0x55b
	.uleb128 0x17
	.4byte	.LASF111
	.byte	0x1
	.byte	0x1b
	.4byte	0x9f
	.4byte	.LLST1
	.uleb128 0x18
	.4byte	.LVL2
	.4byte	0x1041
	.uleb128 0x19
	.4byte	.LVL4
	.4byte	0x104d
	.4byte	0x544
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL8
	.4byte	0x104d
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL5
	.4byte	0x1058
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF102
	.byte	0x1
	.byte	0x32
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x597
	.uleb128 0x1b
	.4byte	.LVL9
	.4byte	0x104d
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4000
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF103
	.byte	0x1
	.byte	0x37
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5c3
	.uleb128 0x1b
	.4byte	.LVL10
	.4byte	0x104d
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF104
	.byte	0x1
	.byte	0x3c
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ef
	.uleb128 0x1b
	.4byte	.LVL11
	.4byte	0x104d
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2000
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0x1
	.byte	0x4e
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x665
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x1
	.byte	0x4e
	.4byte	0xca
	.4byte	.LLST2
	.uleb128 0x18
	.4byte	.LVL14
	.4byte	0x1064
	.uleb128 0x18
	.4byte	.LVL15
	.4byte	0x1064
	.uleb128 0x19
	.4byte	.LVL16
	.4byte	0x1070
	.4byte	0x63a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1388
	.byte	0
	.uleb128 0x18
	.4byte	.LVL17
	.4byte	0x56b
	.uleb128 0x18
	.4byte	.LVL18
	.4byte	0x597
	.uleb128 0x18
	.4byte	.LVL19
	.4byte	0x5c3
	.uleb128 0x1b
	.4byte	.LVL20
	.4byte	0x1058
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF108
	.byte	0x1
	.byte	0x41
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6a5
	.uleb128 0x19
	.4byte	.LVL21
	.4byte	0x107b
	.4byte	0x691
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL22
	.4byte	0x107b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF109
	.byte	0x1
	.byte	0x74
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6ec
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x1
	.byte	0x74
	.4byte	0xca
	.4byte	.LLST3
	.uleb128 0x18
	.4byte	.LVL25
	.4byte	0x1064
	.uleb128 0x18
	.4byte	.LVL26
	.4byte	0x665
	.uleb128 0x1b
	.4byte	.LVL27
	.4byte	0x1058
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF110
	.byte	0x1
	.byte	0x88
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7a4
	.uleb128 0x1d
	.string	"ip"
	.byte	0x1
	.byte	0x8d
	.4byte	0xe7
	.4byte	.LLST4
	.uleb128 0x18
	.4byte	.LVL28
	.4byte	0x1086
	.uleb128 0x19
	.4byte	.LVL29
	.4byte	0x1091
	.4byte	0x73b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	ssid
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x19
	.4byte	.LVL30
	.4byte	0x1091
	.4byte	0x75e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 32
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	password
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x18
	.4byte	.LVL34
	.4byte	0x109a
	.uleb128 0x19
	.4byte	.LVL35
	.4byte	0x10a6
	.4byte	0x780
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL36
	.4byte	0x10b1
	.4byte	0x794
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL37
	.4byte	0x10bc
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	0x4b6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x948
	.uleb128 0x1f
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0x93e
	.uleb128 0x20
	.4byte	0x4c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.4byte	0x4ce
	.4byte	.LLST5
	.uleb128 0x19
	.4byte	.LVL39
	.4byte	0x10c7
	.4byte	0x804
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC36
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	hints
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL40
	.4byte	0x10d2
	.4byte	0x817
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.4byte	.LVL43
	.4byte	0x10de
	.4byte	0x82b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL44
	.4byte	0x10ea
	.uleb128 0x19
	.4byte	.LVL45
	.4byte	0x10f5
	.4byte	0x848
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL46
	.4byte	0x1100
	.4byte	0x862
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL47
	.4byte	0x110c
	.4byte	0x882
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0xd6
	.byte	0
	.uleb128 0x19
	.4byte	.LVL48
	.4byte	0x107b
	.4byte	0x899
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC43
	.byte	0
	.uleb128 0x19
	.4byte	.LVL49
	.4byte	0x104d
	.4byte	0x8bf
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4000
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4000
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.4byte	.LVL50
	.4byte	0x104d
	.4byte	0x8e5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.4byte	.LVL51
	.4byte	0x104d
	.4byte	0x90b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2000
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2000
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.4byte	.LVL52
	.4byte	0x104d
	.4byte	0x92d
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL53
	.4byte	0x1118
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL38
	.4byte	0x1124
	.byte	0
	.uleb128 0x14
	.4byte	.LASF112
	.byte	0x1
	.byte	0xdb
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xce2
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x1
	.byte	0xdb
	.4byte	0xca
	.4byte	.LLST6
	.uleb128 0x19
	.4byte	.LVL56
	.4byte	0x1130
	.4byte	0x989
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC57
	.byte	0
	.uleb128 0x19
	.4byte	.LVL57
	.4byte	0x113b
	.4byte	0x9a6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC61
	.byte	0
	.uleb128 0x19
	.4byte	.LVL58
	.4byte	0x1146
	.4byte	0x9c0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL59
	.4byte	0x113b
	.4byte	0x9dd
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC61
	.byte	0
	.uleb128 0x19
	.4byte	.LVL60
	.4byte	0x1146
	.4byte	0x9f7
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL61
	.4byte	0x113b
	.4byte	0xa14
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC61
	.byte	0
	.uleb128 0x19
	.4byte	.LVL62
	.4byte	0x1146
	.4byte	0xa2e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL63
	.4byte	0x113b
	.4byte	0xa4b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC61
	.byte	0
	.uleb128 0x19
	.4byte	.LVL64
	.4byte	0x1146
	.4byte	0xa65
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL65
	.4byte	0x1146
	.4byte	0xa82
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC67
	.byte	0
	.uleb128 0x18
	.4byte	.LVL66
	.4byte	0x4b6
	.uleb128 0x19
	.4byte	.LVL67
	.4byte	0x107b
	.4byte	0xaa8
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC70
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL68
	.4byte	0x10f5
	.4byte	0xabc
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL69
	.4byte	0x104d
	.4byte	0xae2
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4000
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4000
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.4byte	.LVL70
	.4byte	0x104d
	.4byte	0xb08
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.4byte	.LVL71
	.4byte	0x104d
	.4byte	0xb2e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2000
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2000
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.4byte	.LVL72
	.4byte	0x104d
	.4byte	0xb54
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4000
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4000
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.4byte	.LVL73
	.4byte	0x104d
	.4byte	0xb7a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.4byte	.LVL74
	.4byte	0x104d
	.4byte	0xba0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2000
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2000
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.4byte	.LVL75
	.4byte	0x104d
	.4byte	0xbc2
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.4byte	.LVL76
	.4byte	0x104d
	.4byte	0xbe8
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4000
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4000
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.4byte	.LVL77
	.4byte	0x104d
	.4byte	0xc0e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.4byte	.LVL78
	.4byte	0x104d
	.4byte	0xc34
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2000
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2000
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.4byte	.LVL79
	.4byte	0x104d
	.uleb128 0x19
	.4byte	.LVL80
	.4byte	0x104d
	.4byte	0xc63
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4000
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4000
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.4byte	.LVL81
	.4byte	0x104d
	.4byte	0xc89
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.4byte	.LVL82
	.4byte	0x104d
	.4byte	0xcaf
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2000
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2000
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.4byte	.LVL83
	.4byte	0x104d
	.4byte	0xcd1
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL84
	.4byte	0x1058
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0xc8
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x132
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe57
	.uleb128 0x23
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x135
	.4byte	0x3cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.4byte	.LVL85
	.4byte	0x1151
	.4byte	0xd21
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x19
	.4byte	.LVL86
	.4byte	0x115c
	.4byte	0xd35
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL87
	.4byte	0x6ec
	.uleb128 0x19
	.4byte	.LVL88
	.4byte	0x1167
	.4byte	0xd85
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	task_led_dark_light
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC85
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL89
	.4byte	0x1167
	.4byte	0xdcc
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	task_led_impediment
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC88
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL90
	.4byte	0x1167
	.4byte	0xe13
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	task_http_get
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC91
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL91
	.4byte	0x1167
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	task_system_onoff
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC94
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0xe0
	.4byte	0xe68
	.uleb128 0x24
	.4byte	0xd3
	.2byte	0x3e7
	.byte	0
	.uleb128 0x25
	.4byte	.LASF114
	.byte	0x1
	.byte	0x9d
	.4byte	0xe57
	.uleb128 0x5
	.byte	0x3
	.4byte	path
	.uleb128 0xa
	.4byte	0xe0
	.4byte	0xe89
	.uleb128 0xb
	.4byte	0xd3
	.byte	0x4
	.byte	0
	.uleb128 0x25
	.4byte	.LASF115
	.byte	0x1
	.byte	0x9e
	.4byte	0xe79
	.uleb128 0x5
	.byte	0x3
	.4byte	onoff
	.uleb128 0x26
	.4byte	.LASF116
	.byte	0x1
	.byte	0x14
	.4byte	0x57
	.uleb128 0x5
	.byte	0x3
	.4byte	mode
	.uleb128 0x27
	.string	"hot"
	.byte	0x1
	.byte	0x15
	.4byte	0x57
	.uleb128 0x5
	.byte	0x3
	.4byte	hot
	.uleb128 0x26
	.4byte	.LASF117
	.byte	0x1
	.byte	0x16
	.4byte	0x100
	.uleb128 0x5
	.byte	0x3
	.4byte	lYellow
	.uleb128 0x26
	.4byte	.LASF118
	.byte	0x1
	.byte	0x2c
	.4byte	0x100
	.uleb128 0x5
	.byte	0x3
	.4byte	rLight
	.uleb128 0x26
	.4byte	.LASF119
	.byte	0x1
	.byte	0x2d
	.4byte	0x100
	.uleb128 0x5
	.byte	0x3
	.4byte	gLight
	.uleb128 0x26
	.4byte	.LASF120
	.byte	0x1
	.byte	0x2e
	.4byte	0x100
	.uleb128 0x5
	.byte	0x3
	.4byte	bLight
	.uleb128 0x26
	.4byte	.LASF121
	.byte	0x1
	.byte	0x2f
	.4byte	0x100
	.uleb128 0x5
	.byte	0x3
	.4byte	lRed
	.uleb128 0x26
	.4byte	.LASF122
	.byte	0x1
	.byte	0x30
	.4byte	0x100
	.uleb128 0x5
	.byte	0x3
	.4byte	lGreen
	.uleb128 0x26
	.4byte	.LASF123
	.byte	0x1
	.byte	0x31
	.4byte	0x100
	.uleb128 0x5
	.byte	0x3
	.4byte	lBlue
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.byte	0x4b
	.4byte	0x57
	.uleb128 0x5
	.byte	0x3
	.4byte	i
	.uleb128 0x26
	.4byte	.LASF124
	.byte	0x1
	.byte	0x4c
	.4byte	0x57
	.uleb128 0x5
	.byte	0x3
	.4byte	count
	.uleb128 0x27
	.string	"pre"
	.byte	0x1
	.byte	0x4d
	.4byte	0x100
	.uleb128 0x5
	.byte	0x3
	.4byte	pre
	.uleb128 0x26
	.4byte	.LASF125
	.byte	0x1
	.byte	0x73
	.4byte	0x57
	.uleb128 0x5
	.byte	0x3
	.4byte	button
	.uleb128 0xa
	.4byte	0xe0
	.4byte	0xf85
	.uleb128 0xb
	.4byte	0xd3
	.byte	0x1f
	.byte	0
	.uleb128 0x26
	.4byte	.LASF27
	.byte	0x1
	.byte	0x84
	.4byte	0xf75
	.uleb128 0x5
	.byte	0x3
	.4byte	ssid
	.uleb128 0xa
	.4byte	0xe0
	.4byte	0xfa6
	.uleb128 0xb
	.4byte	0xd3
	.byte	0x3f
	.byte	0
	.uleb128 0x26
	.4byte	.LASF28
	.byte	0x1
	.byte	0x85
	.4byte	0xf96
	.uleb128 0x5
	.byte	0x3
	.4byte	password
	.uleb128 0x26
	.4byte	.LASF126
	.byte	0x1
	.byte	0x86
	.4byte	0x166
	.uleb128 0x5
	.byte	0x3
	.4byte	config
	.uleb128 0x27
	.string	"ip1"
	.byte	0x1
	.byte	0x87
	.4byte	0x107
	.uleb128 0x5
	.byte	0x3
	.4byte	ip1
	.uleb128 0x26
	.4byte	.LASF127
	.byte	0x1
	.byte	0x9f
	.4byte	0xfea
	.uleb128 0x5
	.byte	0x3
	.4byte	hints
	.uleb128 0x28
	.4byte	0x43d
	.uleb128 0x27
	.string	"err"
	.byte	0x1
	.byte	0xa3
	.4byte	0x57
	.uleb128 0x5
	.byte	0x3
	.4byte	err
	.uleb128 0xa
	.4byte	0xe0
	.4byte	0x1010
	.uleb128 0xb
	.4byte	0xd3
	.byte	0xd6
	.byte	0
	.uleb128 0x26
	.4byte	.LASF128
	.byte	0x1
	.byte	0xa4
	.4byte	0x1000
	.uleb128 0x5
	.byte	0x3
	.4byte	recv_buf
	.uleb128 0x27
	.string	"r"
	.byte	0x1
	.byte	0xa5
	.4byte	0x57
	.uleb128 0x5
	.byte	0x3
	.4byte	r
	.uleb128 0x26
	.4byte	.LASF129
	.byte	0x1
	.byte	0xda
	.4byte	0x422
	.uleb128 0x5
	.byte	0x3
	.4byte	digit
	.uleb128 0x29
	.4byte	.LASF130
	.4byte	.LASF130
	.byte	0xa
	.2byte	0x12a
	.uleb128 0x2a
	.4byte	.LASF131
	.4byte	.LASF131
	.byte	0xb
	.byte	0xf5
	.uleb128 0x29
	.4byte	.LASF132
	.4byte	.LASF132
	.byte	0xc
	.2byte	0x20d
	.uleb128 0x29
	.4byte	.LASF133
	.4byte	.LASF133
	.byte	0xb
	.2byte	0x125
	.uleb128 0x2a
	.4byte	.LASF134
	.4byte	.LASF134
	.byte	0xd
	.byte	0x3b
	.uleb128 0x2a
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0xe
	.byte	0xb3
	.uleb128 0x2a
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0x6
	.byte	0x8f
	.uleb128 0x2b
	.4byte	.LASF161
	.4byte	.LASF161
	.uleb128 0x29
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0x6
	.2byte	0x15f
	.uleb128 0x2a
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0x5
	.byte	0xa9
	.uleb128 0x2a
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0x6
	.byte	0x60
	.uleb128 0x2a
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0x6
	.byte	0xdb
	.uleb128 0x2a
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0x9
	.byte	0x68
	.uleb128 0x29
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0x8
	.2byte	0x18a
	.uleb128 0x29
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0x8
	.2byte	0x181
	.uleb128 0x2a
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0x9
	.byte	0x67
	.uleb128 0x2a
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0xf
	.byte	0x21
	.uleb128 0x29
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0x8
	.2byte	0x18b
	.uleb128 0x29
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0x8
	.2byte	0x184
	.uleb128 0x29
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0x8
	.2byte	0x180
	.uleb128 0x29
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0x6
	.2byte	0x105
	.uleb128 0x2a
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0xf
	.byte	0x1e
	.uleb128 0x2a
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0xe
	.byte	0xdf
	.uleb128 0x2a
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0xf
	.byte	0x1a
	.uleb128 0x2a
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0x7
	.byte	0xc8
	.uleb128 0x2a
	.4byte	.LASF154
	.4byte	.LASF154
	.byte	0x5
	.byte	0x6c
	.uleb128 0x29
	.4byte	.LASF155
	.4byte	.LASF155
	.byte	0xc
	.2byte	0x5c4
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x87
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
	.uleb128 0x15
	.uleb128 0x5
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
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x8
	.byte	0xc
	.4byte	0x6505a8c0
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x8
	.byte	0xc
	.4byte	0x105a8c0
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x8
	.byte	0xc
	.4byte	0xffffff
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB3-.Ltext0
	.4byte	.LBE3-.Ltext0
	.4byte	.LBB4-.Ltext0
	.4byte	.LBE4-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF60:
	.string	"BIT_RATE_57600"
.LASF69:
	.string	"USART_HardwareFlowControl_None"
.LASF94:
	.string	"ai_flags"
.LASF151:
	.string	"sprintf"
.LASF46:
	.string	"UART0"
.LASF74:
	.string	"UART_None_Inverse"
.LASF93:
	.string	"addrinfo"
.LASF140:
	.string	"wifi_station_set_auto_connect"
.LASF34:
	.string	"STATION_NO_AP_FOUND"
.LASF28:
	.string	"password"
.LASF114:
	.string	"path"
.LASF113:
	.string	"uart_config"
.LASF37:
	.string	"UART_WordLength_5b"
.LASF135:
	.string	"printf"
.LASF155:
	.string	"xTaskGenericCreate"
.LASF9:
	.string	"long long unsigned int"
.LASF24:
	.string	"addr"
.LASF131:
	.string	"gpio_output_conf"
.LASF92:
	.string	"socklen_t"
.LASF32:
	.string	"STATION_CONNECTING"
.LASF82:
	.string	"stop_bits"
.LASF51:
	.string	"UART_ParityMode"
.LASF123:
	.string	"lBlue"
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF143:
	.string	"lwip_connect"
.LASF48:
	.string	"USART_Parity_None"
.LASF132:
	.string	"vTaskDelay"
.LASF129:
	.string	"digit"
.LASF29:
	.string	"bssid_set"
.LASF139:
	.string	"wifi_station_set_config"
.LASF43:
	.string	"USART_StopBits_1_5"
.LASF18:
	.string	"long int"
.LASF23:
	.string	"ip_info"
.LASF38:
	.string	"UART_WordLength_6b"
.LASF161:
	.string	"memcpy"
.LASF12:
	.string	"uint8"
.LASF54:
	.string	"BIT_RATE_1200"
.LASF4:
	.string	"uint16_t"
.LASF16:
	.string	"double"
.LASF33:
	.string	"STATION_WRONG_PASSWORD"
.LASF25:
	.string	"netmask"
.LASF14:
	.string	"uint32"
.LASF124:
	.string	"count"
.LASF79:
	.string	"baud_rate"
.LASF150:
	.string	"strcpy"
.LASF53:
	.string	"BIT_RATE_600"
.LASF111:
	.string	"temp"
.LASF105:
	.string	"task_led_dark_light"
.LASF75:
	.string	"UART_Rxd_Inverse"
.LASF7:
	.string	"unsigned int"
.LASF71:
	.string	"USART_HardwareFlowControl_CTS"
.LASF121:
	.string	"lRed"
.LASF27:
	.string	"ssid"
.LASF39:
	.string	"UART_WordLength_7b"
.LASF96:
	.string	"ai_socktype"
.LASF17:
	.string	"long unsigned int"
.LASF11:
	.string	"u32_t"
.LASF107:
	.string	"pvParameters"
.LASF63:
	.string	"BIT_RATE_230400"
.LASF118:
	.string	"rLight"
.LASF106:
	.string	"task_led_impediment"
.LASF5:
	.string	"short unsigned int"
.LASF86:
	.string	"UART_ConfigTypeDef"
.LASF137:
	.string	"wifi_station_dhcpc_stop"
.LASF145:
	.string	"strlen"
.LASF26:
	.string	"station_config"
.LASF103:
	.string	"task_blink_green"
.LASF138:
	.string	"wifi_set_ip_info"
.LASF152:
	.string	"strcat"
.LASF157:
	.string	"user/user_main.c"
.LASF47:
	.string	"UART1"
.LASF40:
	.string	"UART_WordLength_8b"
.LASF89:
	.string	"sa_len"
.LASF81:
	.string	"parity"
.LASF62:
	.string	"BIT_RATE_115200"
.LASF10:
	.string	"u8_t"
.LASF83:
	.string	"flow_ctrl"
.LASF19:
	.string	"sizetype"
.LASF147:
	.string	"lwip_read"
.LASF149:
	.string	"wifi_station_get_connect_status"
.LASF56:
	.string	"BIT_RATE_4800"
.LASF77:
	.string	"UART_Txd_Inverse"
.LASF97:
	.string	"ai_protocol"
.LASF22:
	.string	"ip_addr"
.LASF78:
	.string	"UART_RTS_Inverse"
.LASF153:
	.string	"UART_ParamConfig"
.LASF80:
	.string	"data_bits"
.LASF158:
	.string	"D:\\\\FreeRTOS\\\\Team1_SmartLight\\\\esp-rtos-basic-task -blink-led"
.LASF66:
	.string	"BIT_RATE_1843200"
.LASF42:
	.string	"USART_StopBits_1"
.LASF98:
	.string	"ai_addrlen"
.LASF15:
	.string	"float"
.LASF67:
	.string	"BIT_RATE_3686400"
.LASF90:
	.string	"sa_family"
.LASF73:
	.string	"UART_HwFlowCtrl"
.LASF30:
	.string	"bssid"
.LASF159:
	.string	"http_get"
.LASF70:
	.string	"USART_HardwareFlowControl_RTS"
.LASF57:
	.string	"BIT_RATE_9600"
.LASF110:
	.string	"connect_wifi"
.LASF41:
	.string	"UART_WordLength"
.LASF108:
	.string	"change_mode"
.LASF21:
	.string	"_Bool"
.LASF128:
	.string	"recv_buf"
.LASF1:
	.string	"unsigned char"
.LASF13:
	.string	"uint16"
.LASF50:
	.string	"USART_Parity_Odd"
.LASF104:
	.string	"task_blink_blue"
.LASF115:
	.string	"onoff"
.LASF99:
	.string	"ai_addr"
.LASF2:
	.string	"short int"
.LASF58:
	.string	"BIT_RATE_19200"
.LASF59:
	.string	"BIT_RATE_38400"
.LASF101:
	.string	"ai_next"
.LASF160:
	.string	"user_init"
.LASF130:
	.string	"system_adc_read"
.LASF49:
	.string	"USART_Parity_Even"
.LASF65:
	.string	"BIT_RATE_921600"
.LASF144:
	.string	"lwip_freeaddrinfo"
.LASF6:
	.string	"uint32_t"
.LASF102:
	.string	"task_blink_red"
.LASF117:
	.string	"lYellow"
.LASF55:
	.string	"BIT_RATE_2400"
.LASF142:
	.string	"lwip_socket"
.LASF109:
	.string	"task_system_onoff"
.LASF20:
	.string	"char"
.LASF116:
	.string	"mode"
.LASF126:
	.string	"config"
.LASF64:
	.string	"BIT_RATE_460800"
.LASF88:
	.string	"sockaddr"
.LASF85:
	.string	"UART_InverseMask"
.LASF72:
	.string	"USART_HardwareFlowControl_CTS_RTS"
.LASF156:
	.string	"GNU C89 5.2.0 -mlongcalls -mtext-section-literals -mno-serialize-volatile -g -Os -std=gnu90 -fno-inline-functions"
.LASF95:
	.string	"ai_family"
.LASF136:
	.string	"wifi_station_disconnect"
.LASF133:
	.string	"gpio_input_get"
.LASF112:
	.string	"task_http_get"
.LASF84:
	.string	"UART_RxFlowThresh"
.LASF119:
	.string	"gLight"
.LASF148:
	.string	"lwip_close"
.LASF125:
	.string	"button"
.LASF36:
	.string	"STATION_GOT_IP"
.LASF122:
	.string	"lGreen"
.LASF87:
	.string	"sa_family_t"
.LASF127:
	.string	"hints"
.LASF3:
	.string	"uint8_t"
.LASF141:
	.string	"lwip_getaddrinfo"
.LASF134:
	.string	"os_delay_us"
.LASF120:
	.string	"bLight"
.LASF154:
	.string	"wifi_set_opmode"
.LASF91:
	.string	"sa_data"
.LASF68:
	.string	"UART_BautRate"
.LASF52:
	.string	"BIT_RATE_300"
.LASF100:
	.string	"ai_canonname"
.LASF146:
	.string	"lwip_write"
.LASF61:
	.string	"BIT_RATE_74880"
.LASF76:
	.string	"UART_CTS_Inverse"
.LASF45:
	.string	"UART_StopBits"
.LASF31:
	.string	"STATION_IDLE"
.LASF35:
	.string	"STATION_CONNECT_FAIL"
.LASF44:
	.string	"USART_StopBits_2"
	.ident	"GCC: (GNU) 5.2.0"
