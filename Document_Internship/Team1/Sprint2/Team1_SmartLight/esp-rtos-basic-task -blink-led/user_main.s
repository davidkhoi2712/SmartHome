	.file	"user_main.c"
	.text
.Ltext0:
	.literal_position
	.literal .LC0, mode
	.literal .LC1, lYellow
	.align	4
	.global	task_led_dark_light
	.type	task_led_dark_light, @function
task_led_dark_light:
.LFB0:
	.file 1 "user/user_main.c"
	.loc 1 26 0
.LVL0:
	addi	sp, sp, -16
.LCFI0:
	s32i.n	a14, sp, 0
	s32i.n	a0, sp, 12
	s32i.n	a12, sp, 8
	s32i.n	a13, sp, 4
.LCFI1:
.LBB3:
	.loc 1 31 0
	movi	a14, 0x2bc
.LVL1:
.L4:
.LBE3:
	.loc 1 28 0
	l32r	a2, .LC0
	l32i.n	a12, a2, 0
	bnei	a12, 1, .L2
.LBB4:
	.loc 1 30 0
	call0	system_adc_read
.LVL2:
	.loc 1 33 0
	movi.n	a5, 0
	l32r	a13, .LC1
	mov.n	a4, a12
	.loc 1 31 0
	bltu	a14, a2, .L3
	.loc 1 33 0
	mov.n	a2, a5
.LVL3:
	mov.n	a3, a12
	call0	gpio_output_conf
.LVL4:
	.loc 1 34 0
	movi.n	a2, 0
	s8i	a2, a13, 0
.L2:
.LBE4:
	.loc 1 42 0
	movi.n	a2, 1
	call0	vTaskDelay
.LVL5:
	.loc 1 43 0
	j	.L4
.LVL6:
.L3:
.LBB5:
	.loc 1 38 0
	mov.n	a3, a5
	mov.n	a2, a12
.LVL7:
	call0	gpio_output_conf
.LVL8:
	.loc 1 39 0
	s8i	a12, a13, 0
	j	.L2
.LBE5:
.LFE0:
	.size	task_led_dark_light, .-task_led_dark_light
	.literal_position
	.literal .LC2, 16384
	.literal .LC3, rLight
	.literal .LC4, lRed
	.align	4
	.global	task_blink_red
	.type	task_blink_red, @function
task_blink_red:
.LFB1:
	.loc 1 52 0
	addi	sp, sp, -16
.LCFI2:
	s32i.n	a12, sp, 8
.LCFI3:
	.loc 1 53 0
	l32r	a12, .LC3
	l32r	a4, .LC2
	l8ui	a2, a12, 0
	movi.n	a5, 0
	mov.n	a3, a5
	moveqz	a3, a4, a2
	slli	a2, a2, 14
	.loc 1 52 0
	s32i.n	a0, sp, 12
.LCFI4:
	.loc 1 53 0
	call0	gpio_output_conf
.LVL9:
	.loc 1 54 0
	l8ui	a3, a12, 0
	l32r	a2, .LC4
	.loc 1 56 0
	l32i.n	a0, sp, 12
	.loc 1 54 0
	s8i	a3, a2, 0
	.loc 1 55 0
	movi.n	a2, 1
	xor	a2, a3, a2
	s8i	a2, a12, 0
	.loc 1 56 0
	l32i.n	a12, sp, 8
	addi	sp, sp, 16
	ret.n
.LFE1:
	.size	task_blink_red, .-task_blink_red
	.literal_position
	.literal .LC5, 4096
	.literal .LC6, gLight
	.literal .LC7, lGreen
	.align	4
	.global	task_blink_green
	.type	task_blink_green, @function
task_blink_green:
.LFB2:
	.loc 1 57 0
	addi	sp, sp, -16
.LCFI5:
	s32i.n	a12, sp, 8
.LCFI6:
	.loc 1 58 0
	l32r	a12, .LC6
	l32r	a4, .LC5
	l8ui	a2, a12, 0
	movi.n	a5, 0
	mov.n	a3, a5
	moveqz	a3, a4, a2
	slli	a2, a2, 12
	.loc 1 57 0
	s32i.n	a0, sp, 12
.LCFI7:
	.loc 1 58 0
	call0	gpio_output_conf
.LVL10:
	.loc 1 59 0
	l8ui	a3, a12, 0
	l32r	a2, .LC7
	.loc 1 61 0
	l32i.n	a0, sp, 12
	.loc 1 59 0
	s8i	a3, a2, 0
	.loc 1 60 0
	movi.n	a2, 1
	xor	a2, a3, a2
	s8i	a2, a12, 0
	.loc 1 61 0
	l32i.n	a12, sp, 8
	addi	sp, sp, 16
	ret.n
.LFE2:
	.size	task_blink_green, .-task_blink_green
	.literal_position
	.literal .LC8, 8192
	.literal .LC9, bLight
	.literal .LC10, lBlue
	.align	4
	.global	task_blink_blue
	.type	task_blink_blue, @function
task_blink_blue:
.LFB3:
	.loc 1 62 0
	addi	sp, sp, -16
.LCFI8:
	s32i.n	a12, sp, 8
.LCFI9:
	.loc 1 63 0
	l32r	a12, .LC9
	l32r	a4, .LC8
	l8ui	a2, a12, 0
	movi.n	a5, 0
	mov.n	a3, a5
	moveqz	a3, a4, a2
	slli	a2, a2, 13
	.loc 1 62 0
	s32i.n	a0, sp, 12
.LCFI10:
	.loc 1 63 0
	call0	gpio_output_conf
.LVL11:
	.loc 1 64 0
	l8ui	a3, a12, 0
	l32r	a2, .LC10
	.loc 1 66 0
	l32i.n	a0, sp, 12
	.loc 1 64 0
	s8i	a3, a2, 0
	.loc 1 65 0
	movi.n	a2, 1
	xor	a2, a3, a2
	s8i	a2, a12, 0
	.loc 1 66 0
	l32i.n	a12, sp, 8
	addi	sp, sp, 16
	ret.n
.LFE3:
	.size	task_blink_blue, .-task_blink_blue
	.literal_position
	.literal .LC11, mode
	.literal .LC12, count
	.literal .LC13, pre
	.literal .LC14, i
	.literal .LC15, 5000
	.align	4
	.global	task_led_impediment
	.type	task_led_impediment, @function
task_led_impediment:
.LFB5:
	.loc 1 80 0
.LVL12:
	addi	sp, sp, -32
.LCFI11:
	s32i.n	a12, sp, 24
.LCFI12:
	.loc 1 83 0
	l32r	a12, .LC12
	.loc 1 80 0
	s32i.n	a0, sp, 28
	s32i.n	a13, sp, 20
	s32i.n	a14, sp, 16
	s32i.n	a15, sp, 12
.LCFI13:
.LVL13:
.L25:
	.loc 1 82 0
	l32r	a3, .LC11
	l32i.n	a2, a3, 0
	bnei	a2, 1, .L16
	.loc 1 84 0
	l32r	a15, .LC13
	.loc 1 83 0
	movi.n	a2, 0
	s32i.n	a2, a12, 0
	.loc 1 84 0
	s8i	a2, a15, 0
	.loc 1 85 0
	movi.n	a13, 0x20
	call0	gpio_input_get
.LVL14:
	and	a2, a2, a13
	bnez.n	a2, .L16
	.loc 1 86 0
	l32r	a3, .LC14
	s32i.n	a2, a3, 0
	mov.n	a14, a3
	j	.L18
.L21:
	.loc 1 87 0
	call0	gpio_input_get
.LVL15:
	bany	a2, a13, .L19
	.loc 1 88 0
	movi.n	a2, 1
	j	.L29
.L19:
	.loc 1 90 0
	l8ui	a2, a15, 0
	beqz.n	a2, .L20
	.loc 1 91 0
	l32i.n	a2, a12, 0
	addi.n	a2, a2, 1
	s32i.n	a2, a12, 0
	.loc 1 92 0
	movi.n	a2, 0
.L29:
	s8i	a2, a15, 0
.L20:
	.loc 1 95 0 discriminator 2
	l32r	a2, .LC15
	call0	os_delay_us
.LVL16:
	.loc 1 86 0 discriminator 2
	l32i.n	a2, a14, 0
	addi.n	a2, a2, 1
	s32i.n	a2, a14, 0
.L18:
	.loc 1 86 0 is_stmt 0 discriminator 1
	l32i.n	a2, a14, 0
	movi	a3, 0xc7
	bge	a3, a2, .L21
	.loc 1 97 0 is_stmt 1
	l32i.n	a2, a12, 0
	beqi	a2, 2, .L22
	beqi	a2, 3, .L23
	bnei	a2, 1, .L16
	.loc 1 99 0
	call0	task_blink_red
.LVL17:
	.loc 1 100 0
	j	.L16
.L22:
	.loc 1 102 0
	call0	task_blink_green
.LVL18:
	.loc 1 103 0
	j	.L16
.L23:
	.loc 1 105 0
	call0	task_blink_blue
.LVL19:
.L16:
	.loc 1 113 0
	movi.n	a2, 1
	call0	vTaskDelay
.LVL20:
	.loc 1 114 0
	j	.L25
.LFE5:
	.size	task_led_impediment, .-task_led_impediment
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC17:
	.string	"%d"
	.text
	.literal_position
	.literal .LC16, mode
	.literal .LC18, .LC17
	.align	4
	.global	change_mode
	.type	change_mode, @function
change_mode:
.LFB4:
	.loc 1 67 0
	.loc 1 68 0
	l32r	a2, .LC16
	.loc 1 67 0
	addi	sp, sp, -16
.LCFI14:
	.loc 1 68 0
	l32i.n	a3, a2, 0
	.loc 1 67 0
	s32i.n	a0, sp, 12
.LCFI15:
	.loc 1 68 0
	bnez.n	a3, .L31
	.loc 1 69 0
	movi.n	a3, 1
	j	.L33
.L31:
	.loc 1 71 0
	movi.n	a3, 0
.L33:
	s32i.n	a3, a2, 0
	.loc 1 73 0
	l32i.n	a3, a2, 0
	l32r	a2, .LC18
	call0	printf
.LVL21:
	.loc 1 74 0
	l32i.n	a0, sp, 12
	addi	sp, sp, 16
	ret.n
.LFE4:
	.size	change_mode, .-change_mode
	.literal_position
	.literal .LC19, button
	.literal .LC20, 16384
	.literal .LC21, lRed
	.literal .LC22, rLight
	.literal .LC23, 4096
	.literal .LC24, lGreen
	.literal .LC25, gLight
	.literal .LC26, 8192
	.literal .LC27, lBlue
	.literal .LC28, bLight
	.align	4
	.global	task_system_onoff
	.type	task_system_onoff, @function
task_system_onoff:
.LFB6:
	.loc 1 117 0
.LVL22:
	addi	sp, sp, -32
.LCFI16:
	s32i.n	a13, sp, 20
.LCFI17:
	l32r	a13, .LC19
	s32i.n	a15, sp, 12
	s32i.n	a0, sp, 28
	s32i.n	a12, sp, 24
	s32i.n	a14, sp, 16
.LCFI18:
	.loc 1 120 0
	movi.n	a15, 0x10
.LVL23:
.L37:
	call0	gpio_input_get
.LVL24:
	and	a12, a2, a15
	beqz.n	a12, .L35
	.loc 1 121 0
	movi.n	a2, 1
	s8i	a2, a13, 0
	j	.L36
.L35:
	.loc 1 123 0
	l8ui	a2, a13, 0
	beqz.n	a2, .L36
	.loc 1 124 0
	call0	change_mode
.LVL25:
	.loc 1 126 0
	l32r	a3, .LC20
	mov.n	a5, a12
	mov.n	a4, a3
	mov.n	a2, a12
	.loc 1 125 0
	s8i	a12, a13, 0
	.loc 1 126 0
	call0	gpio_output_conf
.LVL26:
	.loc 1 127 0
	l32r	a2, .LC21
	.loc 1 129 0
	l32r	a3, .LC23
	.loc 1 127 0
	s8i	a12, a2, 0
	.loc 1 128 0
	l32r	a2, .LC22
	movi.n	a14, 1
	.loc 1 129 0
	mov.n	a4, a3
	.loc 1 128 0
	s8i	a14, a2, 0
	.loc 1 129 0
	mov.n	a5, a12
	mov.n	a2, a12
	call0	gpio_output_conf
.LVL27:
	.loc 1 130 0
	l32r	a2, .LC24
	.loc 1 132 0
	l32r	a3, .LC26
	.loc 1 130 0
	s8i	a12, a2, 0
	.loc 1 131 0
	l32r	a2, .LC25
	.loc 1 132 0
	mov.n	a4, a3
	.loc 1 131 0
	s8i	a14, a2, 0
	.loc 1 132 0
	mov.n	a5, a12
	mov.n	a2, a12
	call0	gpio_output_conf
.LVL28:
	.loc 1 133 0
	l32r	a2, .LC27
	.loc 1 135 0
	movi.n	a4, 1
	.loc 1 133 0
	s8i	a12, a2, 0
	.loc 1 134 0
	l32r	a2, .LC28
	.loc 1 135 0
	mov.n	a5, a12
	.loc 1 134 0
	s8i	a14, a2, 0
	.loc 1 135 0
	mov.n	a3, a4
	mov.n	a2, a12
	call0	gpio_output_conf
.LVL29:
.L36:
	.loc 1 138 0
	movi.n	a2, 1
	call0	vTaskDelay
.LVL30:
	.loc 1 139 0
	j	.L37
.LFE6:
	.size	task_system_onoff, .-task_system_onoff
	.literal_position
	.literal .LC29, config
	.literal .LC30, ssid
	.literal .LC31, password
	.align	4
	.global	connect_wifi
	.type	connect_wifi, @function
connect_wifi:
.LFB7:
	.loc 1 146 0
	addi	sp, sp, -16
.LCFI19:
	s32i.n	a12, sp, 8
.LCFI20:
	.loc 1 147 0
	l32r	a12, .LC29
	l32r	a3, .LC30
	movi.n	a4, 0x20
	mov.n	a2, a12
	.loc 1 146 0
	s32i.n	a0, sp, 12
.LCFI21:
	.loc 1 147 0
	call0	memcpy
.LVL31:
	.loc 1 148 0
	l32r	a3, .LC31
	movi.n	a4, 0x40
	addi	a2, a12, 32
	call0	memcpy
.LVL32:
	.loc 1 149 0
	movi.n	a2, 0
	s8i	a2, a12, 96
	.loc 1 150 0
	mov.n	a2, a12
	call0	wifi_station_set_config
.LVL33:
	.loc 1 151 0
	movi.n	a2, 1
	call0	wifi_station_set_auto_connect
.LVL34:
	.loc 1 152 0
	l32i.n	a0, sp, 12
	l32i.n	a12, sp, 8
	addi	sp, sp, 16
	ret.n
.LFE7:
	.size	connect_wifi, .-connect_wifi
	.section	.rodata.str1.1
.LC35:
	.string	"80"
.LC37:
	.string	"smartlight.ddns.net"
	.text
	.literal_position
	.literal .LC34, hints
	.literal .LC36, .LC35
	.literal .LC38, .LC37
	.literal .LC39, err
	.literal .LC40, path
	.literal .LC41, recv_buf
	.literal .LC42, i
	.literal .LC43, r
	.literal .LC44, onoff
	.align	4
	.global	http_get
	.type	http_get, @function
http_get:
.LFB8:
	.loc 1 167 0
	addi	sp, sp, -32
.LCFI22:
	s32i.n	a0, sp, 28
	s32i.n	a12, sp, 24
	s32i.n	a13, sp, 20
.LCFI23:
	.loc 1 168 0
	call0	wifi_station_get_connect_status
.LVL35:
	bnei	a2, 5, .L42
.LBB9:
.LBB10:
	.loc 1 171 0
	l32r	a4, .LC34
	l32r	a3, .LC36
	l32r	a2, .LC38
	mov.n	a5, sp
	call0	lwip_getaddrinfo
.LVL36:
	l32r	a3, .LC39
	.loc 1 172 0
	movi.n	a4, 0
	.loc 1 171 0
	s32i.n	a2, a3, 0
	.loc 1 172 0
	l32i.n	a2, sp, 0
	l32i.n	a3, a2, 8
	l32i.n	a2, a2, 4
	call0	lwip_socket
.LVL37:
	mov.n	a13, a2
.LVL38:
	.loc 1 173 0
	l32i.n	a2, sp, 0
.LVL39:
	l32i.n	a4, a2, 16
	l32i.n	a3, a2, 20
	mov.n	a2, a13
	call0	lwip_connect
.LVL40:
	.loc 1 174 0
	l32i.n	a2, sp, 0
	call0	lwip_freeaddrinfo
.LVL41:
	.loc 1 175 0
	l32r	a12, .LC40
	mov.n	a2, a12
	call0	strlen
.LVL42:
	mov.n	a3, a12
	mov.n	a4, a2
	mov.n	a2, a13
	call0	lwip_write
.LVL43:
	movi.n	a2, 0
	.loc 1 178 0
	l32r	a12, .LC41
	mov.n	a5, a2
	.loc 1 177 0
	movi	a3, 0xd7
.L44:
	.loc 1 178 0
	add.n	a4, a2, a12
	s8i	a5, a4, 0
	.loc 1 177 0
	addi.n	a2, a2, 1
	bne	a2, a3, .L44
	l32r	a3, .LC42
	.loc 1 180 0
	movi	a4, 0xd6
	s32i.n	a2, a3, 0
	mov.n	a3, a12
	mov.n	a2, a13
	call0	lwip_read
.LVL44:
	l32r	a3, .LC43
	s32i.n	a2, a3, 0
	.loc 1 181 0
	blti	a2, 1, .L45
	.loc 1 183 0
	l32r	a2, .LC44
	l8ui	a3, a12, 210
	s8i	a3, a2, 0
	.loc 1 184 0
	l8ui	a3, a12, 211
	s8i	a3, a2, 1
	.loc 1 185 0
	l8ui	a3, a12, 212
	s8i	a3, a2, 2
	.loc 1 186 0
	l8ui	a3, a12, 213
	s8i	a3, a2, 3
.L45:
	.loc 1 188 0
	mov.n	a2, a13
	call0	lwip_close
.LVL45:
.L42:
.LBE10:
.LBE9:
	.loc 1 190 0
	l32i.n	a0, sp, 28
	l32i.n	a12, sp, 24
	l32i.n	a13, sp, 20
	addi	sp, sp, 32
	ret.n
.LFE8:
	.size	http_get, .-http_get
	.section	.rodata.str1.1
.LC45:
	.string	"GET /control.php?onoff="
.LC54:
	.string	" HTTP/1.1\r\nHost: smartlight.ddns.net\r\nUser-Agent: esp-open-rtos/0.1 esp8266\r\nConnection: close\r\n\r\n"
.LC57:
	.string	"%s"
	.text
	.literal_position
	.literal .LC46, .LC45
	.literal .LC47, path
	.literal .LC48, lRed
	.literal .LC49, .LC17
	.literal .LC50, digit
	.literal .LC51, lGreen
	.literal .LC52, lBlue
	.literal .LC53, lYellow
	.literal .LC55, .LC54
	.literal .LC56, onoff
	.literal .LC58, .LC57
	.literal .LC59, 16384
	.literal .LC60, rLight
	.literal .LC61, 4096
	.literal .LC62, gLight
	.literal .LC63, 8192
	.literal .LC64, bLight
	.align	4
	.global	task_http_get
	.type	task_http_get, @function
task_http_get:
.LFB9:
	.loc 1 193 0
.LVL46:
	addi	sp, sp, -32
.LCFI24:
	s32i.n	a0, sp, 28
	s32i.n	a12, sp, 24
	s32i.n	a13, sp, 20
	s32i.n	a14, sp, 16
	s32i.n	a15, sp, 12
.LCFI25:
.LVL47:
.L58:
	.loc 1 201 0
	l32r	a13, .LC47
	l32r	a3, .LC46
	mov.n	a2, a13
	call0	strcpy
.LVL48:
	.loc 1 202 0
	l32r	a14, .LC48
	l32r	a12, .LC50
	l8ui	a4, a14, 0
	l32r	a3, .LC49
	mov.n	a2, a12
	call0	sprintf
.LVL49:
	.loc 1 203 0
	mov.n	a3, a12
	mov.n	a2, a13
	call0	strcat
.LVL50:
	.loc 1 204 0
	l32r	a2, .LC51
	l32r	a3, .LC49
	l8ui	a4, a2, 0
	mov.n	a2, a12
	call0	sprintf
.LVL51:
	.loc 1 205 0
	mov.n	a3, a12
	mov.n	a2, a13
	call0	strcat
.LVL52:
	.loc 1 206 0
	l32r	a3, .LC52
	mov.n	a2, a12
	l8ui	a4, a3, 0
	l32r	a3, .LC49
	call0	sprintf
.LVL53:
	.loc 1 207 0
	mov.n	a3, a12
	mov.n	a2, a13
	call0	strcat
.LVL54:
	.loc 1 208 0
	l32r	a15, .LC53
	l32r	a3, .LC49
	l8ui	a4, a15, 0
	mov.n	a2, a12
	call0	sprintf
.LVL55:
	.loc 1 209 0
	mov.n	a3, a12
	mov.n	a2, a13
	call0	strcat
.LVL56:
	.loc 1 210 0
	l32r	a3, .LC55
	mov.n	a2, a13
	call0	strcat
.LVL57:
	.loc 1 215 0
	call0	http_get
.LVL58:
	.loc 1 216 0
	l32r	a12, .LC56
	l32r	a2, .LC58
	mov.n	a3, a12
	call0	printf
.LVL59:
	.loc 1 217 0
	mov.n	a2, a12
	call0	strlen
.LVL60:
	bnei	a2, 3, .L48
	.loc 1 218 0
	l8ui	a2, a12, 2
	movi.n	a3, 0x30
	bne	a2, a3, .L49
	.loc 1 219 0
	l32r	a2, .LC59
	movi.n	a5, 0
	mov.n	a4, a2
	mov.n	a3, a5
	call0	gpio_output_conf
.LVL61:
	.loc 1 221 0
	l32r	a2, .LC60
	movi.n	a13, 0
	s8i	a13, a2, 0
	.loc 1 222 0
	l32r	a2, .LC61
	movi.n	a5, 0
	.loc 1 220 0
	movi.n	a12, 1
	.loc 1 222 0
	mov.n	a4, a2
	mov.n	a3, a5
	.loc 1 220 0
	s8i	a12, a14, 0
	.loc 1 222 0
	call0	gpio_output_conf
.LVL62:
	.loc 1 223 0
	l32r	a2, .LC51
	.loc 1 225 0
	movi.n	a5, 0
	.loc 1 223 0
	s8i	a12, a2, 0
	.loc 1 224 0
	l32r	a2, .LC62
	.loc 1 225 0
	mov.n	a3, a5
	.loc 1 224 0
	s8i	a13, a2, 0
	.loc 1 225 0
	l32r	a2, .LC63
	mov.n	a4, a2
	call0	gpio_output_conf
.LVL63:
	.loc 1 226 0
	l32r	a3, .LC52
	.loc 1 227 0
	l32r	a2, .LC64
	.loc 1 228 0
	movi.n	a5, 0
	movi.n	a4, 1
	.loc 1 226 0
	s8i	a12, a3, 0
	.loc 1 227 0
	s8i	a13, a2, 0
	.loc 1 228 0
	mov.n	a3, a5
	mov.n	a2, a4
	j	.L59
.L49:
	.loc 1 230 0
	movi.n	a3, 0x31
	bne	a2, a3, .L51
	.loc 1 231 0
	l32r	a2, .LC59
	movi.n	a5, 0
	mov.n	a4, a2
	mov.n	a3, a5
	call0	gpio_output_conf
.LVL64:
	.loc 1 232 0
	movi.n	a2, 1
	s8i	a2, a14, 0
	.loc 1 233 0
	movi.n	a3, 0
	j	.L64
.L51:
	.loc 1 234 0
	movi.n	a3, 0x32
	bne	a2, a3, .L52
	.loc 1 235 0
	l32r	a2, .LC61
	movi.n	a5, 0
	mov.n	a4, a2
	mov.n	a3, a5
	call0	gpio_output_conf
.LVL65:
	.loc 1 236 0
	l32r	a3, .LC51
	movi.n	a2, 1
	s8i	a2, a3, 0
	.loc 1 237 0
	movi.n	a3, 0
	j	.L63
.L52:
	.loc 1 238 0
	movi.n	a3, 0x33
	bne	a2, a3, .L53
	.loc 1 239 0
	l32r	a2, .LC63
	movi.n	a5, 0
	mov.n	a4, a2
	mov.n	a3, a5
	call0	gpio_output_conf
.LVL66:
	.loc 1 240 0
	l32r	a3, .LC52
	movi.n	a2, 1
	s8i	a2, a3, 0
	.loc 1 241 0
	movi.n	a3, 0
	j	.L62
.L53:
	.loc 1 243 0
	movi.n	a5, 0
	movi.n	a4, 1
	mov.n	a2, a4
	mov.n	a3, a5
	call0	gpio_output_conf
.LVL67:
	.loc 1 244 0
	movi.n	a2, 1
	j	.L60
.L48:
	.loc 1 246 0
	bnei	a2, 4, .L50
	.loc 1 247 0
	l8ui	a2, a12, 3
	movi.n	a3, 0x30
	bne	a2, a3, .L54
	.loc 1 248 0
	l32r	a3, .LC59
	movi.n	a5, 0
	mov.n	a4, a3
	mov.n	a2, a5
	call0	gpio_output_conf
.LVL68:
	.loc 1 250 0
	l32r	a2, .LC60
	.loc 1 251 0
	l32r	a3, .LC61
	.loc 1 250 0
	movi.n	a13, 1
	.loc 1 251 0
	movi.n	a5, 0
	.loc 1 249 0
	movi.n	a12, 0
	.loc 1 251 0
	mov.n	a4, a3
	.loc 1 250 0
	s8i	a13, a2, 0
	.loc 1 251 0
	mov.n	a2, a5
	.loc 1 249 0
	s8i	a12, a14, 0
	.loc 1 251 0
	call0	gpio_output_conf
.LVL69:
	.loc 1 252 0
	l32r	a2, .LC51
	.loc 1 254 0
	l32r	a3, .LC63
	.loc 1 252 0
	s8i	a12, a2, 0
	.loc 1 253 0
	l32r	a2, .LC62
	.loc 1 254 0
	movi.n	a5, 0
	mov.n	a4, a3
	.loc 1 253 0
	s8i	a13, a2, 0
	.loc 1 254 0
	mov.n	a2, a5
	call0	gpio_output_conf
.LVL70:
	.loc 1 255 0
	l32r	a3, .LC52
	.loc 1 256 0
	l32r	a2, .LC64
	.loc 1 257 0
	movi.n	a5, 0
	movi.n	a4, 1
	.loc 1 255 0
	s8i	a12, a3, 0
	.loc 1 256 0
	s8i	a13, a2, 0
	.loc 1 257 0
	mov.n	a3, a4
	mov.n	a2, a5
.L59:
	call0	gpio_output_conf
.LVL71:
	.loc 1 258 0
	s8i	a12, a15, 0
	j	.L50
.L54:
	.loc 1 259 0
	movi.n	a3, 0x31
	bne	a2, a3, .L55
	.loc 1 260 0
	l32r	a3, .LC59
	movi.n	a5, 0
	mov.n	a4, a3
	mov.n	a2, a5
	call0	gpio_output_conf
.LVL72:
	.loc 1 261 0
	movi.n	a2, 0
	s8i	a2, a14, 0
	.loc 1 262 0
	movi.n	a3, 1
.L64:
	l32r	a2, .LC60
	j	.L61
.L55:
	.loc 1 263 0
	movi.n	a3, 0x32
	bne	a2, a3, .L56
	.loc 1 264 0
	l32r	a3, .LC61
	movi.n	a5, 0
	mov.n	a4, a3
	mov.n	a2, a5
	call0	gpio_output_conf
.LVL73:
	.loc 1 265 0
	l32r	a3, .LC51
	movi.n	a2, 0
	s8i	a2, a3, 0
	.loc 1 266 0
	movi.n	a3, 1
.L63:
	l32r	a2, .LC62
	j	.L61
.L56:
	.loc 1 267 0
	movi.n	a3, 0x33
	bne	a2, a3, .L57
	.loc 1 268 0
	l32r	a3, .LC63
	movi.n	a5, 0
	mov.n	a4, a3
	mov.n	a2, a5
	call0	gpio_output_conf
.LVL74:
	.loc 1 269 0
	l32r	a3, .LC52
	movi.n	a2, 0
	s8i	a2, a3, 0
	.loc 1 270 0
	movi.n	a3, 1
.L62:
	l32r	a2, .LC64
.L61:
	s8i	a3, a2, 0
	j	.L50
.L57:
	.loc 1 272 0
	movi.n	a5, 0
	movi.n	a4, 1
	mov.n	a2, a5
	mov.n	a3, a4
	call0	gpio_output_conf
.LVL75:
	.loc 1 273 0
	movi.n	a2, 0
.L60:
	s8i	a2, a15, 0
.L50:
	.loc 1 276 0
	movi.n	a2, 0x32
	call0	vTaskDelay
.LVL76:
	.loc 1 277 0
	j	.L58
.LFE9:
	.size	task_http_get, .-task_http_get
	.section	.rodata.str1.1
.LC72:
	.string	"task_led_dark_light"
.LC75:
	.string	"task_led_impediment"
.LC78:
	.string	"task_http_get"
.LC81:
	.string	"task_system_onoff"
	.text
	.literal_position
	.literal .LC65, 115200
	.literal .LC66, 1610614788
	.literal .LC67, 1610614792
	.literal .LC68, 1610614796
	.literal .LC69, 1610614836
	.literal .LC70, 1610614844
	.literal .LC71, 1610614848
	.literal .LC73, .LC72
	.literal .LC74, task_led_dark_light
	.literal .LC76, .LC75
	.literal .LC77, task_led_impediment
	.literal .LC79, .LC78
	.literal .LC80, task_http_get
	.literal .LC82, .LC81
	.literal .LC83, task_system_onoff
	.align	4
	.global	user_init
	.type	user_init, @function
user_init:
.LFB10:
	.loc 1 282 0
	.loc 1 285 0
	l32r	a2, .LC65
	.loc 1 282 0
	addi	sp, sp, -64
.LCFI26:
	.loc 1 285 0
	s32i.n	a2, sp, 16
	.loc 1 286 0
	movi.n	a2, 3
	.loc 1 282 0
	s32i.n	a12, sp, 56
	.loc 1 286 0
	s32i.n	a2, sp, 20
.LCFI27:
	.loc 1 289 0
	movi.n	a12, 0
	.loc 1 290 0
	movi	a2, 0x78
	.loc 1 292 0
	addi	a3, sp, 16
	.loc 1 282 0
	s32i.n	a13, sp, 52
	s32i.n	a14, sp, 48
.LCFI28:
	.loc 1 287 0
	movi.n	a13, 2
	.loc 1 288 0
	movi.n	a14, 1
	.loc 1 290 0
	s8i	a2, sp, 36
	.loc 1 292 0
	mov.n	a2, a12
	.loc 1 282 0
	s32i.n	a0, sp, 60
.LCFI29:
	.loc 1 287 0
	s32i.n	a13, sp, 24
	.loc 1 288 0
	s32i.n	a14, sp, 28
	.loc 1 289 0
	s32i.n	a12, sp, 32
	.loc 1 291 0
	s32i.n	a12, sp, 40
	.loc 1 292 0
	call0	UART_ParamConfig
.LVL77:
	.loc 1 296 0
	mov.n	a2, a14
	call0	wifi_set_opmode
.LVL78:
	.loc 1 297 0
	call0	connect_wifi
.LVL79:
	.loc 1 299 0
	l32r	a4, .LC66
	movi	a2, -0x131
	l32i.n	a3, a4, 0
	.loc 1 307 0
	mov.n	a7, a12
	.loc 1 299 0
	and	a3, a3, a2
	s32i.n	a3, a4, 0
	l32i.n	a5, a4, 0
	movi.n	a3, 0x30
	or	a5, a5, a3
	s32i.n	a5, a4, 0
	.loc 1 300 0
	l32r	a4, .LC67
	.loc 1 307 0
	mov.n	a6, a13
	.loc 1 300 0
	l32i.n	a5, a4, 0
	and	a5, a5, a2
	s32i.n	a5, a4, 0
	l32i.n	a5, a4, 0
	or	a5, a5, a3
	s32i.n	a5, a4, 0
	.loc 1 301 0
	l32r	a4, .LC68
	l32i.n	a5, a4, 0
	and	a5, a5, a2
	s32i.n	a5, a4, 0
	l32i.n	a5, a4, 0
	or	a3, a5, a3
	s32i.n	a3, a4, 0
	.loc 1 302 0
	l32r	a3, .LC69
	.loc 1 307 0
	mov.n	a5, a12
	.loc 1 302 0
	l32i.n	a4, a3, 0
	and	a4, a4, a2
	s32i.n	a4, a3, 0
	l32i.n	a4, a3, 0
	s32i.n	a4, a3, 0
	.loc 1 303 0
	l32r	a3, .LC70
	l32i.n	a4, a3, 0
	and	a4, a4, a2
	s32i.n	a4, a3, 0
	l32i.n	a4, a3, 0
	s32i.n	a4, a3, 0
	.loc 1 304 0
	l32r	a3, .LC71
	l32i.n	a4, a3, 0
	and	a2, a4, a2
	s32i.n	a2, a3, 0
	l32i.n	a2, a3, 0
	.loc 1 307 0
	movi	a4, 0x100
	.loc 1 304 0
	s32i.n	a2, a3, 0
	.loc 1 307 0
	s32i.n	a12, sp, 4
	s32i.n	a12, sp, 0
	l32r	a3, .LC73
	l32r	a2, .LC74
	call0	xTaskGenericCreate
.LVL80:
	.loc 1 308 0
	l32r	a3, .LC76
	l32r	a2, .LC77
	s32i.n	a12, sp, 4
	s32i.n	a12, sp, 0
	mov.n	a7, a12
	mov.n	a6, a13
	mov.n	a5, a12
	movi	a4, 0x100
	call0	xTaskGenericCreate
.LVL81:
	.loc 1 309 0
	l32r	a3, .LC79
	l32r	a2, .LC80
	s32i.n	a12, sp, 4
	s32i.n	a12, sp, 0
	mov.n	a7, a12
	mov.n	a6, a13
	mov.n	a5, a12
	movi	a4, 0x100
	call0	xTaskGenericCreate
.LVL82:
	.loc 1 310 0
	l32r	a3, .LC82
	l32r	a2, .LC83
	s32i.n	a12, sp, 4
	s32i.n	a12, sp, 0
	mov.n	a7, a12
	mov.n	a6, a13
	mov.n	a5, a12
	movi	a4, 0x100
	call0	xTaskGenericCreate
.LVL83:
	.loc 1 313 0
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
	.comm	config,103,1
	.global	password
	.data
	.type	password, @object
	.size	password, 64
password:
	.string	"Tma@167&sdc"
	.zero	52
	.global	ssid
	.type	ssid, @object
	.size	ssid, 32
ssid:
	.string	"SDC_F4_L6"
	.zero	22
	.global	button
	.section	.bss
	.type	button, @object
	.size	button, 1
button:
	.zero	1
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
	.byte	0x8e
	.uleb128 0x4
	.byte	0x80
	.uleb128 0x1
	.byte	0x8c
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
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
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0x80
	.uleb128 0x1
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
	.4byte	.LCFI14-.LFB4
	.byte	0xe
	.uleb128 0x10
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
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0x8f
	.uleb128 0x5
	.byte	0x80
	.uleb128 0x1
	.byte	0x8c
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x4
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI19-.LFB7
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0x80
	.uleb128 0x1
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI22-.LFB8
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0x80
	.uleb128 0x1
	.byte	0x8c
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI24-.LFB9
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
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
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI26-.LFB10
	.byte	0xe
	.uleb128 0x40
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI28-.LCFI27
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8e
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI29-.LCFI28
	.byte	0x80
	.uleb128 0x1
	.align	4
.LEFDE20:
	.text
.Letext0:
	.file 2 "c:\\espressif\\xtensa-lx106-elf\\xtensa-lx106-elf\\include\\stdint.h"
	.file 3 "C:/Espressif/ESP8266_RTOS_SDK/include/espressif/c_types.h"
	.file 4 "C:/Espressif/ESP8266_RTOS_SDK/include/espressif/esp_sta.h"
	.file 5 "C:/Espressif/ESP8266_RTOS_SDK/include/espressif/esp_wifi.h"
	.file 6 "driver/uart.h"
	.file 7 "C:/Espressif/ESP8266_RTOS_SDK/include/lwip/lwip/sockets.h"
	.file 8 "C:/Espressif/ESP8266_RTOS_SDK/include/lwip/lwip/netdb.h"
	.file 9 "C:/Espressif/ESP8266_RTOS_SDK/include/espressif/esp_system.h"
	.file 10 "driver/gpio.h"
	.file 11 "C:/Espressif/ESP8266_RTOS_SDK/include/freertos/task.h"
	.file 12 "C:/Espressif/ESP8266_RTOS_SDK/include/espressif/esp_misc.h"
	.file 13 "c:\\espressif\\xtensa-lx106-elf\\xtensa-lx106-elf\\include\\stdio.h"
	.file 14 "c:\\espressif\\xtensa-lx106-elf\\xtensa-lx106-elf\\include\\string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x10b1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF154
	.byte	0x1
	.4byte	.LASF155
	.4byte	.LASF156
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0x7
	.byte	0x4
	.4byte	0x69
	.byte	0x5
	.byte	0x33
	.4byte	0x119
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.4byte	0x94
	.4byte	0x129
	.uleb128 0xa
	.4byte	0xd3
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.4byte	0x94
	.4byte	0x139
	.uleb128 0xa
	.4byte	0xd3
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.4byte	0x94
	.4byte	0x149
	.uleb128 0xa
	.4byte	0xd3
	.byte	0x3f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0x67
	.byte	0x4
	.byte	0x34
	.4byte	0x186
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x4
	.byte	0x35
	.4byte	0x119
	.byte	0
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x4
	.byte	0x36
	.4byte	0x139
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x4
	.byte	0x37
	.4byte	0x94
	.byte	0x60
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x4
	.byte	0x38
	.4byte	0x129
	.byte	0x61
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x69
	.byte	0x4
	.byte	0xf5
	.4byte	0x1b7
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x69
	.byte	0x6
	.byte	0x25
	.4byte	0x1dc
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x6
	.byte	0x2a
	.4byte	0x1b7
	.uleb128 0x7
	.byte	0x4
	.4byte	0x69
	.byte	0x6
	.byte	0x2c
	.4byte	0x206
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x6
	.byte	0x30
	.4byte	0x1e7
	.uleb128 0x7
	.byte	0x4
	.4byte	0x69
	.byte	0x6
	.byte	0x32
	.4byte	0x22a
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x69
	.byte	0x6
	.byte	0x37
	.4byte	0x249
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x6
	.byte	0x3b
	.4byte	0x22a
	.uleb128 0x7
	.byte	0x4
	.4byte	0x69
	.byte	0x6
	.byte	0x42
	.4byte	0x2df
	.uleb128 0xd
	.4byte	.LASF52
	.2byte	0x12c
	.uleb128 0xd
	.4byte	.LASF53
	.2byte	0x258
	.uleb128 0xd
	.4byte	.LASF54
	.2byte	0x4b0
	.uleb128 0xd
	.4byte	.LASF55
	.2byte	0x960
	.uleb128 0xd
	.4byte	.LASF56
	.2byte	0x12c0
	.uleb128 0xd
	.4byte	.LASF57
	.2byte	0x2580
	.uleb128 0xd
	.4byte	.LASF58
	.2byte	0x4b00
	.uleb128 0xd
	.4byte	.LASF59
	.2byte	0x9600
	.uleb128 0xd
	.4byte	.LASF60
	.2byte	0xe100
	.uleb128 0xe
	.4byte	.LASF61
	.4byte	0x12480
	.uleb128 0xe
	.4byte	.LASF62
	.4byte	0x1c200
	.uleb128 0xe
	.4byte	.LASF63
	.4byte	0x38400
	.uleb128 0xe
	.4byte	.LASF64
	.4byte	0x70800
	.uleb128 0xe
	.4byte	.LASF65
	.4byte	0xe1000
	.uleb128 0xe
	.4byte	.LASF66
	.4byte	0x1c2000
	.uleb128 0xe
	.4byte	.LASF67
	.4byte	0x384000
	.byte	0
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x6
	.byte	0x53
	.4byte	0x254
	.uleb128 0x7
	.byte	0x4
	.4byte	0x69
	.byte	0x6
	.byte	0x55
	.4byte	0x30f
	.uleb128 0x8
	.4byte	.LASF69
	.byte	0
	.uleb128 0x8
	.4byte	.LASF70
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF71
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF72
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x6
	.byte	0x5a
	.4byte	0x2ea
	.uleb128 0x7
	.byte	0x4
	.4byte	0x69
	.byte	0x6
	.byte	0x5c
	.4byte	0x351
	.uleb128 0x8
	.4byte	.LASF74
	.byte	0
	.uleb128 0xe
	.4byte	.LASF75
	.4byte	0x80000
	.uleb128 0xe
	.4byte	.LASF76
	.4byte	0x100000
	.uleb128 0xe
	.4byte	.LASF77
	.4byte	0x400000
	.uleb128 0xe
	.4byte	.LASF78
	.4byte	0x800000
	.byte	0
	.uleb128 0xf
	.byte	0x1c
	.byte	0x6
	.byte	0x64
	.4byte	0x3ae
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0x6
	.byte	0x65
	.4byte	0x2df
	.byte	0
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0x6
	.byte	0x66
	.4byte	0x1dc
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF81
	.byte	0x6
	.byte	0x67
	.4byte	0x249
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x6
	.byte	0x68
	.4byte	0x206
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x6
	.byte	0x69
	.4byte	0x30f
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x6
	.byte	0x6a
	.4byte	0x94
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x6
	.byte	0x6b
	.4byte	0xaa
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0x6
	.byte	0x6c
	.4byte	0x351
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0x7
	.byte	0x36
	.4byte	0x7e
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0x18
	.byte	0x7
	.byte	0x55
	.4byte	0x3f5
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x7
	.byte	0x56
	.4byte	0x7e
	.byte	0
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x7
	.byte	0x57
	.4byte	0x3b9
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x7
	.byte	0x59
	.4byte	0x3f5
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0xe0
	.4byte	0x405
	.uleb128 0xa
	.4byte	0xd3
	.byte	0x15
	.byte	0
	.uleb128 0x9
	.4byte	0xe0
	.4byte	0x415
	.uleb128 0xa
	.4byte	0xd3
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0x7
	.byte	0x6c
	.4byte	0x89
	.uleb128 0xb
	.4byte	.LASF94
	.byte	0x20
	.byte	0x8
	.byte	0x53
	.4byte	0x48d
	.uleb128 0xc
	.4byte	.LASF95
	.byte	0x8
	.byte	0x54
	.4byte	0x57
	.byte	0
	.uleb128 0xc
	.4byte	.LASF96
	.byte	0x8
	.byte	0x55
	.4byte	0x57
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF97
	.byte	0x8
	.byte	0x56
	.4byte	0x57
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF98
	.byte	0x8
	.byte	0x57
	.4byte	0x57
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF99
	.byte	0x8
	.byte	0x58
	.4byte	0x415
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF100
	.byte	0x8
	.byte	0x59
	.4byte	0x48d
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF101
	.byte	0x8
	.byte	0x5a
	.4byte	0xda
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF102
	.byte	0x8
	.byte	0x5b
	.4byte	0x493
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3c4
	.uleb128 0x6
	.byte	0x4
	.4byte	0x420
	.uleb128 0x10
	.4byte	.LASF157
	.byte	0x1
	.byte	0xa7
	.byte	0x1
	.4byte	0x4bc
	.uleb128 0x11
	.uleb128 0x12
	.string	"res"
	.byte	0x1
	.byte	0xaa
	.4byte	0x493
	.uleb128 0x12
	.string	"s"
	.byte	0x1
	.byte	0xac
	.4byte	0x57
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF106
	.byte	0x1
	.byte	0x19
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x550
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x1
	.byte	0x19
	.4byte	0xca
	.4byte	.LLST0
	.uleb128 0x15
	.4byte	.Ldebug_ranges0+0
	.4byte	0x540
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x1
	.byte	0x1d
	.4byte	0x9f
	.4byte	.LLST1
	.uleb128 0x17
	.4byte	.LVL2
	.4byte	0xfa4
	.uleb128 0x18
	.4byte	.LVL4
	.4byte	0xfb0
	.4byte	0x525
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL8
	.4byte	0xfb0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL5
	.4byte	0xfbb
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF103
	.byte	0x1
	.byte	0x34
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x57c
	.uleb128 0x1a
	.4byte	.LVL9
	.4byte	0xfb0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF104
	.byte	0x1
	.byte	0x39
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5a8
	.uleb128 0x1a
	.4byte	.LVL10
	.4byte	0xfb0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF105
	.byte	0x1
	.byte	0x3e
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d4
	.uleb128 0x1a
	.4byte	.LVL11
	.4byte	0xfb0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF107
	.byte	0x1
	.byte	0x4f
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x64a
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x1
	.byte	0x4f
	.4byte	0xca
	.4byte	.LLST2
	.uleb128 0x17
	.4byte	.LVL14
	.4byte	0xfc7
	.uleb128 0x17
	.4byte	.LVL15
	.4byte	0xfc7
	.uleb128 0x18
	.4byte	.LVL16
	.4byte	0xfd3
	.4byte	0x61f
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1388
	.byte	0
	.uleb128 0x17
	.4byte	.LVL17
	.4byte	0x550
	.uleb128 0x17
	.4byte	.LVL18
	.4byte	0x57c
	.uleb128 0x17
	.4byte	.LVL19
	.4byte	0x5a8
	.uleb128 0x1a
	.4byte	.LVL20
	.4byte	0xfbb
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF109
	.byte	0x1
	.byte	0x43
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x673
	.uleb128 0x1a
	.4byte	.LVL21
	.4byte	0xfde
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF110
	.byte	0x1
	.byte	0x75
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x755
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x1
	.byte	0x75
	.4byte	0xca
	.4byte	.LLST3
	.uleb128 0x17
	.4byte	.LVL24
	.4byte	0xfc7
	.uleb128 0x17
	.4byte	.LVL25
	.4byte	0x64a
	.uleb128 0x18
	.4byte	.LVL26
	.4byte	0xfb0
	.4byte	0x6d1
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL27
	.4byte	0xfb0
	.4byte	0x6f9
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL28
	.4byte	0xfb0
	.4byte	0x721
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL29
	.4byte	0xfb0
	.4byte	0x745
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL30
	.4byte	0xfbb
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF111
	.byte	0x1
	.byte	0x92
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7d4
	.uleb128 0x18
	.4byte	.LVL31
	.4byte	0xfe9
	.4byte	0x78d
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	ssid
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x18
	.4byte	.LVL32
	.4byte	0xfe9
	.4byte	0x7b0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 32
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	password
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x18
	.4byte	.LVL33
	.4byte	0xff2
	.4byte	0x7c4
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL34
	.4byte	0xffd
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	0x499
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8cd
	.uleb128 0x1d
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0x8c3
	.uleb128 0x1e
	.4byte	0x4a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.4byte	0x4b1
	.4byte	.LLST4
	.uleb128 0x18
	.4byte	.LVL36
	.4byte	0x1008
	.4byte	0x834
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC37
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC35
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	hints
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL37
	.4byte	0x1013
	.4byte	0x847
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.4byte	.LVL40
	.4byte	0x101f
	.4byte	0x85b
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL41
	.4byte	0x102b
	.uleb128 0x18
	.4byte	.LVL42
	.4byte	0x1036
	.4byte	0x878
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL43
	.4byte	0x1041
	.4byte	0x892
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL44
	.4byte	0x104d
	.4byte	0x8b2
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0xd6
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL45
	.4byte	0x1059
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL35
	.4byte	0x1065
	.byte	0
	.uleb128 0x13
	.4byte	.LASF112
	.byte	0x1
	.byte	0xc1
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc67
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x1
	.byte	0xc1
	.4byte	0xca
	.4byte	.LLST5
	.uleb128 0x18
	.4byte	.LVL48
	.4byte	0x1071
	.4byte	0x90e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC45
	.byte	0
	.uleb128 0x18
	.4byte	.LVL49
	.4byte	0x107c
	.4byte	0x92b
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.uleb128 0x18
	.4byte	.LVL50
	.4byte	0x1087
	.4byte	0x945
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL51
	.4byte	0x107c
	.4byte	0x962
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.uleb128 0x18
	.4byte	.LVL52
	.4byte	0x1087
	.4byte	0x97c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL53
	.4byte	0x107c
	.4byte	0x999
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.uleb128 0x18
	.4byte	.LVL54
	.4byte	0x1087
	.4byte	0x9b3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL55
	.4byte	0x107c
	.4byte	0x9d0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.uleb128 0x18
	.4byte	.LVL56
	.4byte	0x1087
	.4byte	0x9ea
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL57
	.4byte	0x1087
	.4byte	0xa07
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC54
	.byte	0
	.uleb128 0x17
	.4byte	.LVL58
	.4byte	0x499
	.uleb128 0x18
	.4byte	.LVL59
	.4byte	0xfde
	.4byte	0xa2d
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC57
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL60
	.4byte	0x1036
	.4byte	0xa41
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL61
	.4byte	0xfb0
	.4byte	0xa67
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.4byte	.LVL62
	.4byte	0xfb0
	.4byte	0xa8d
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.4byte	.LVL63
	.4byte	0xfb0
	.4byte	0xab3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.4byte	.LVL64
	.4byte	0xfb0
	.4byte	0xad9
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.4byte	.LVL65
	.4byte	0xfb0
	.4byte	0xaff
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.4byte	.LVL66
	.4byte	0xfb0
	.4byte	0xb25
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.4byte	.LVL67
	.4byte	0xfb0
	.4byte	0xb47
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.4byte	.LVL68
	.4byte	0xfb0
	.4byte	0xb6d
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.4byte	.LVL69
	.4byte	0xfb0
	.4byte	0xb93
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.4byte	.LVL70
	.4byte	0xfb0
	.4byte	0xbb9
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.4byte	.LVL71
	.4byte	0xfb0
	.uleb128 0x18
	.4byte	.LVL72
	.4byte	0xfb0
	.4byte	0xbe8
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.4byte	.LVL73
	.4byte	0xfb0
	.4byte	0xc0e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.4byte	.LVL74
	.4byte	0xfb0
	.4byte	0xc34
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.4byte	.LVL75
	.4byte	0xfb0
	.4byte	0xc56
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL76
	.4byte	0xfbb
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x119
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xddc
	.uleb128 0x21
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x11c
	.4byte	0x3ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.4byte	.LVL77
	.4byte	0x1092
	.4byte	0xca6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x18
	.4byte	.LVL78
	.4byte	0x109d
	.4byte	0xcba
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL79
	.4byte	0x755
	.uleb128 0x18
	.4byte	.LVL80
	.4byte	0x10a8
	.4byte	0xd0a
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	task_led_dark_light
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC72
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL81
	.4byte	0x10a8
	.4byte	0xd51
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	task_led_impediment
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC75
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL82
	.4byte	0x10a8
	.4byte	0xd98
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	task_http_get
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC78
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL83
	.4byte	0x10a8
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	task_system_onoff
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC81
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0xe0
	.4byte	0xded
	.uleb128 0x22
	.4byte	0xd3
	.2byte	0x3e7
	.byte	0
	.uleb128 0x23
	.4byte	.LASF115
	.byte	0x1
	.byte	0x9d
	.4byte	0xddc
	.uleb128 0x5
	.byte	0x3
	.4byte	path
	.uleb128 0x9
	.4byte	0xe0
	.4byte	0xe0e
	.uleb128 0xa
	.4byte	0xd3
	.byte	0x4
	.byte	0
	.uleb128 0x23
	.4byte	.LASF116
	.byte	0x1
	.byte	0x9e
	.4byte	0xdfe
	.uleb128 0x5
	.byte	0x3
	.4byte	onoff
	.uleb128 0x24
	.4byte	.LASF117
	.byte	0x1
	.byte	0x16
	.4byte	0x57
	.uleb128 0x5
	.byte	0x3
	.4byte	mode
	.uleb128 0x24
	.4byte	.LASF118
	.byte	0x1
	.byte	0x18
	.4byte	0xe7
	.uleb128 0x5
	.byte	0x3
	.4byte	lYellow
	.uleb128 0x24
	.4byte	.LASF119
	.byte	0x1
	.byte	0x2e
	.4byte	0xe7
	.uleb128 0x5
	.byte	0x3
	.4byte	rLight
	.uleb128 0x24
	.4byte	.LASF120
	.byte	0x1
	.byte	0x2f
	.4byte	0xe7
	.uleb128 0x5
	.byte	0x3
	.4byte	gLight
	.uleb128 0x24
	.4byte	.LASF121
	.byte	0x1
	.byte	0x30
	.4byte	0xe7
	.uleb128 0x5
	.byte	0x3
	.4byte	bLight
	.uleb128 0x24
	.4byte	.LASF122
	.byte	0x1
	.byte	0x31
	.4byte	0xe7
	.uleb128 0x5
	.byte	0x3
	.4byte	lRed
	.uleb128 0x24
	.4byte	.LASF123
	.byte	0x1
	.byte	0x32
	.4byte	0xe7
	.uleb128 0x5
	.byte	0x3
	.4byte	lGreen
	.uleb128 0x24
	.4byte	.LASF124
	.byte	0x1
	.byte	0x33
	.4byte	0xe7
	.uleb128 0x5
	.byte	0x3
	.4byte	lBlue
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.byte	0x4c
	.4byte	0x57
	.uleb128 0x5
	.byte	0x3
	.4byte	i
	.uleb128 0x24
	.4byte	.LASF125
	.byte	0x1
	.byte	0x4d
	.4byte	0x57
	.uleb128 0x5
	.byte	0x3
	.4byte	count
	.uleb128 0x25
	.string	"pre"
	.byte	0x1
	.byte	0x4e
	.4byte	0xe7
	.uleb128 0x5
	.byte	0x3
	.4byte	pre
	.uleb128 0x24
	.4byte	.LASF126
	.byte	0x1
	.byte	0x74
	.4byte	0xe7
	.uleb128 0x5
	.byte	0x3
	.4byte	button
	.uleb128 0x9
	.4byte	0xe0
	.4byte	0xef9
	.uleb128 0xa
	.4byte	0xd3
	.byte	0x1f
	.byte	0
	.uleb128 0x24
	.4byte	.LASF27
	.byte	0x1
	.byte	0x8e
	.4byte	0xee9
	.uleb128 0x5
	.byte	0x3
	.4byte	ssid
	.uleb128 0x9
	.4byte	0xe0
	.4byte	0xf1a
	.uleb128 0xa
	.4byte	0xd3
	.byte	0x3f
	.byte	0
	.uleb128 0x24
	.4byte	.LASF28
	.byte	0x1
	.byte	0x8f
	.4byte	0xf0a
	.uleb128 0x5
	.byte	0x3
	.4byte	password
	.uleb128 0x24
	.4byte	.LASF127
	.byte	0x1
	.byte	0x90
	.4byte	0x149
	.uleb128 0x5
	.byte	0x3
	.4byte	config
	.uleb128 0x24
	.4byte	.LASF128
	.byte	0x1
	.byte	0x9f
	.4byte	0xf4d
	.uleb128 0x5
	.byte	0x3
	.4byte	hints
	.uleb128 0x26
	.4byte	0x420
	.uleb128 0x25
	.string	"err"
	.byte	0x1
	.byte	0xa3
	.4byte	0x57
	.uleb128 0x5
	.byte	0x3
	.4byte	err
	.uleb128 0x9
	.4byte	0xe0
	.4byte	0xf73
	.uleb128 0xa
	.4byte	0xd3
	.byte	0xd6
	.byte	0
	.uleb128 0x24
	.4byte	.LASF129
	.byte	0x1
	.byte	0xa4
	.4byte	0xf63
	.uleb128 0x5
	.byte	0x3
	.4byte	recv_buf
	.uleb128 0x25
	.string	"r"
	.byte	0x1
	.byte	0xa5
	.4byte	0x57
	.uleb128 0x5
	.byte	0x3
	.4byte	r
	.uleb128 0x24
	.4byte	.LASF130
	.byte	0x1
	.byte	0xc0
	.4byte	0x405
	.uleb128 0x5
	.byte	0x3
	.4byte	digit
	.uleb128 0x27
	.4byte	.LASF131
	.4byte	.LASF131
	.byte	0x9
	.2byte	0x12a
	.uleb128 0x28
	.4byte	.LASF132
	.4byte	.LASF132
	.byte	0xa
	.byte	0xf5
	.uleb128 0x27
	.4byte	.LASF133
	.4byte	.LASF133
	.byte	0xb
	.2byte	0x20d
	.uleb128 0x27
	.4byte	.LASF134
	.4byte	.LASF134
	.byte	0xa
	.2byte	0x125
	.uleb128 0x28
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0xc
	.byte	0x3b
	.uleb128 0x28
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0xd
	.byte	0xb3
	.uleb128 0x29
	.4byte	.LASF159
	.4byte	.LASF159
	.uleb128 0x28
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0x4
	.byte	0x60
	.uleb128 0x28
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0x4
	.byte	0xdb
	.uleb128 0x28
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0x8
	.byte	0x68
	.uleb128 0x27
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0x7
	.2byte	0x18a
	.uleb128 0x27
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0x7
	.2byte	0x181
	.uleb128 0x28
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0x8
	.byte	0x67
	.uleb128 0x28
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0xe
	.byte	0x21
	.uleb128 0x27
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0x7
	.2byte	0x18b
	.uleb128 0x27
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0x7
	.2byte	0x184
	.uleb128 0x27
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0x7
	.2byte	0x180
	.uleb128 0x27
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0x4
	.2byte	0x105
	.uleb128 0x28
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0xe
	.byte	0x1e
	.uleb128 0x28
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0xd
	.byte	0xdf
	.uleb128 0x28
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0xe
	.byte	0x1a
	.uleb128 0x28
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0x6
	.byte	0xc8
	.uleb128 0x28
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0x5
	.byte	0x6c
	.uleb128 0x27
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0xb
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47-.Ltext0
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
	.4byte	.LBB5-.Ltext0
	.4byte	.LBE5-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF60:
	.string	"BIT_RATE_57600"
.LASF69:
	.string	"USART_HardwareFlowControl_None"
.LASF95:
	.string	"ai_flags"
.LASF22:
	.string	"NULL_MODE"
.LASF149:
	.string	"sprintf"
.LASF46:
	.string	"UART0"
.LASF74:
	.string	"UART_None_Inverse"
.LASF94:
	.string	"addrinfo"
.LASF138:
	.string	"wifi_station_set_auto_connect"
.LASF34:
	.string	"STATION_NO_AP_FOUND"
.LASF28:
	.string	"password"
.LASF115:
	.string	"path"
.LASF26:
	.string	"MAX_MODE"
.LASF114:
	.string	"uart_config"
.LASF37:
	.string	"UART_WordLength_5b"
.LASF136:
	.string	"printf"
.LASF153:
	.string	"xTaskGenericCreate"
.LASF9:
	.string	"long long unsigned int"
.LASF79:
	.string	"baud_rate"
.LASF132:
	.string	"gpio_output_conf"
.LASF93:
	.string	"socklen_t"
.LASF32:
	.string	"STATION_CONNECTING"
.LASF82:
	.string	"stop_bits"
.LASF51:
	.string	"UART_ParityMode"
.LASF124:
	.string	"lBlue"
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF141:
	.string	"lwip_connect"
.LASF48:
	.string	"USART_Parity_None"
.LASF133:
	.string	"vTaskDelay"
.LASF130:
	.string	"digit"
.LASF29:
	.string	"bssid_set"
.LASF137:
	.string	"wifi_station_set_config"
.LASF43:
	.string	"USART_StopBits_1_5"
.LASF18:
	.string	"long int"
.LASF38:
	.string	"UART_WordLength_6b"
.LASF159:
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
.LASF14:
	.string	"uint32"
.LASF125:
	.string	"count"
.LASF148:
	.string	"strcpy"
.LASF66:
	.string	"BIT_RATE_1843200"
.LASF113:
	.string	"temp"
.LASF106:
	.string	"task_led_dark_light"
.LASF23:
	.string	"STATION_MODE"
.LASF75:
	.string	"UART_Rxd_Inverse"
.LASF7:
	.string	"unsigned int"
.LASF71:
	.string	"USART_HardwareFlowControl_CTS"
.LASF122:
	.string	"lRed"
.LASF27:
	.string	"ssid"
.LASF39:
	.string	"UART_WordLength_7b"
.LASF97:
	.string	"ai_socktype"
.LASF17:
	.string	"long unsigned int"
.LASF11:
	.string	"u32_t"
.LASF108:
	.string	"pvParameters"
.LASF63:
	.string	"BIT_RATE_230400"
.LASF119:
	.string	"rLight"
.LASF107:
	.string	"task_led_impediment"
.LASF5:
	.string	"short unsigned int"
.LASF86:
	.string	"UART_ConfigTypeDef"
.LASF53:
	.string	"BIT_RATE_600"
.LASF143:
	.string	"strlen"
.LASF88:
	.string	"station_config"
.LASF104:
	.string	"task_blink_green"
.LASF150:
	.string	"strcat"
.LASF155:
	.string	"user/user_main.c"
.LASF47:
	.string	"UART1"
.LASF40:
	.string	"UART_WordLength_8b"
.LASF90:
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
.LASF145:
	.string	"lwip_read"
.LASF147:
	.string	"wifi_station_get_connect_status"
.LASF56:
	.string	"BIT_RATE_4800"
.LASF77:
	.string	"UART_Txd_Inverse"
.LASF98:
	.string	"ai_protocol"
.LASF78:
	.string	"UART_RTS_Inverse"
.LASF151:
	.string	"UART_ParamConfig"
.LASF80:
	.string	"data_bits"
.LASF24:
	.string	"SOFTAP_MODE"
.LASF42:
	.string	"USART_StopBits_1"
.LASF99:
	.string	"ai_addrlen"
.LASF15:
	.string	"float"
.LASF67:
	.string	"BIT_RATE_3686400"
.LASF91:
	.string	"sa_family"
.LASF73:
	.string	"UART_HwFlowCtrl"
.LASF30:
	.string	"bssid"
.LASF157:
	.string	"http_get"
.LASF70:
	.string	"USART_HardwareFlowControl_RTS"
.LASF57:
	.string	"BIT_RATE_9600"
.LASF111:
	.string	"connect_wifi"
.LASF41:
	.string	"UART_WordLength"
.LASF109:
	.string	"change_mode"
.LASF21:
	.string	"_Bool"
.LASF129:
	.string	"recv_buf"
.LASF1:
	.string	"unsigned char"
.LASF13:
	.string	"uint16"
.LASF50:
	.string	"USART_Parity_Odd"
.LASF105:
	.string	"task_blink_blue"
.LASF116:
	.string	"onoff"
.LASF100:
	.string	"ai_addr"
.LASF2:
	.string	"short int"
.LASF58:
	.string	"BIT_RATE_19200"
.LASF59:
	.string	"BIT_RATE_38400"
.LASF102:
	.string	"ai_next"
.LASF158:
	.string	"user_init"
.LASF131:
	.string	"system_adc_read"
.LASF49:
	.string	"USART_Parity_Even"
.LASF65:
	.string	"BIT_RATE_921600"
.LASF142:
	.string	"lwip_freeaddrinfo"
.LASF6:
	.string	"uint32_t"
.LASF103:
	.string	"task_blink_red"
.LASF118:
	.string	"lYellow"
.LASF55:
	.string	"BIT_RATE_2400"
.LASF140:
	.string	"lwip_socket"
.LASF110:
	.string	"task_system_onoff"
.LASF20:
	.string	"char"
.LASF117:
	.string	"mode"
.LASF127:
	.string	"config"
.LASF64:
	.string	"BIT_RATE_460800"
.LASF89:
	.string	"sockaddr"
.LASF85:
	.string	"UART_InverseMask"
.LASF72:
	.string	"USART_HardwareFlowControl_CTS_RTS"
.LASF154:
	.string	"GNU C89 5.2.0 -mlongcalls -mtext-section-literals -mno-serialize-volatile -g -Os -std=gnu90 -fno-inline-functions"
.LASF96:
	.string	"ai_family"
.LASF134:
	.string	"gpio_input_get"
.LASF112:
	.string	"task_http_get"
.LASF84:
	.string	"UART_RxFlowThresh"
.LASF120:
	.string	"gLight"
.LASF146:
	.string	"lwip_close"
.LASF126:
	.string	"button"
.LASF25:
	.string	"STATIONAP_MODE"
.LASF36:
	.string	"STATION_GOT_IP"
.LASF123:
	.string	"lGreen"
.LASF87:
	.string	"sa_family_t"
.LASF128:
	.string	"hints"
.LASF3:
	.string	"uint8_t"
.LASF139:
	.string	"lwip_getaddrinfo"
.LASF135:
	.string	"os_delay_us"
.LASF121:
	.string	"bLight"
.LASF156:
	.string	"D:\\\\FreeRTOS\\\\esp-rtos-basic-task -blink-led (Huy)\\\\esp-rtos-basic-task -blink-led"
.LASF152:
	.string	"wifi_set_opmode"
.LASF92:
	.string	"sa_data"
.LASF68:
	.string	"UART_BautRate"
.LASF52:
	.string	"BIT_RATE_300"
.LASF101:
	.string	"ai_canonname"
.LASF144:
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
