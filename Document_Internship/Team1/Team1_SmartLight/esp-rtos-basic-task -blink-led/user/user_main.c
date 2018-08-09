#include "esp_common.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "uart.h"
#include "gpio.h"
#include "lwip/err.h"
#include "lwip/sockets.h"
#include "lwip/sys.h"
#include "lwip/netdb.h"
#include "lwip/dns.h"

#define LED_GPIO14        14
#define LED_GPIO12        12
#define LED_GPIO13        13
#define LED_GPIO0		   0
#define LED_GPIO4		   4
#define LOW                0
#define HIGH               1

int mode = 1;
int hot = 0;
bool lYellow = LOW;
void task_led_dark_light(void *pvParameters)
{    	
    for(;;){  
		if(mode == 1 && hot == 0) {
			uint16 temp;
			temp = system_adc_read();	   
			if (temp <= 700)
			{ 
				GPIO_OUTPUT_SET(0, LOW);
				lYellow = LOW;
			} 
			if (temp > 700)
			{
				GPIO_OUTPUT_SET(0, HIGH);
				lYellow = HIGH;
			}
		}
		vTaskDelay(1);
    }
}

bool rLight = HIGH;
bool gLight = HIGH;
bool bLight = HIGH;
bool lRed = LOW;
bool lGreen = LOW;
bool lBlue = LOW;
void task_blink_red(){
    GPIO_OUTPUT_SET(LED_GPIO14, rLight);
	lRed = rLight;
    rLight ^= 1;
}
void task_blink_green(){
    GPIO_OUTPUT_SET(LED_GPIO12, gLight);
	lGreen = gLight;
    gLight ^= 1;
}
void task_blink_blue(){
    GPIO_OUTPUT_SET(LED_GPIO13, bLight);
	lBlue = bLight;
    bLight ^= 1;
}
void change_mode(){
	printf("mode1 - %d\n", mode);
    if(mode == 0) {
		mode = 1;
	} else {
		mode = 0;
	}
	printf("mode2 - %d\n", mode);
}

int i = 0;
int count = 0;
bool pre = 0;
void task_led_impediment(void *pvParameters)
{
    for (;;){
		if(mode == 1 && hot == 0) {
			count = 0;
			pre = 0;
			if (!GPIO_INPUT_GET(5)){
				for (i = 0;i < 200;i++){
					if(!GPIO_INPUT_GET(5)) {
						pre = 1;
					} else {
						if(pre) {
							count++;
							pre = 0;
						}
					}
					os_delay_us(5000);
				}
				switch(count){
					case 1:
						task_blink_red();
						break;
					case 2:
						task_blink_green();
						break;
					case 3:
						task_blink_blue();
						break;
					default:
						//change_mode();
						break;
				}
			}
		}
        vTaskDelay(1);
    }
}
int button = 0;
void task_system_onoff(void *pvParameters) {
	for(;;) {
		//printf("%d", GPIO_INPUT_GET(4));		
		if(GPIO_INPUT_GET(4)) {
			button = 1;
		} else {
			if(button == 1) {
				change_mode();
				button = 0;
			}
		}
		
		vTaskDelay(1);
	}
}

char ssid[32] = "test";
char password[64] = "123123123"; 
struct station_config config;
struct ip_info ip1;
void ICACHE_FLASH_ATTR connect_wifi() {
	wifi_station_disconnect();		
	memcpy(config.ssid, ssid, 32);
	memcpy(config.password, password, 64);
	config.bssid_set = 0x00;
	struct ip_addr ip;
	IP4_ADDR(&ip, 192,168,5,101);
	ip1.ip = ip;
	IP4_ADDR(&ip, 192,168,5,1);
	ip1.gw = ip;
	IP4_ADDR(&ip, 255,255,255,0);
	ip1.netmask = ip;
	wifi_station_dhcpc_stop();
	wifi_set_ip_info(0x00, &ip1);
	wifi_station_set_config(&config);
	wifi_station_set_auto_connect(0x01);
}

#define WEB_SERVER "192.168.5.1"
#define WEB_PORT 80
#define WEB_PATH "/control.php"
static char path[1000];
static char onoff[5];
const struct addrinfo hints = {
			.ai_family = AF_UNSPEC, // = 0
			.ai_socktype = SOCK_STREAM, // = 1
		};
int err;
char recv_buf[215];
int r;

void http_get() {
	if(wifi_station_get_connect_status() == STATION_GOT_IP) {
		
		struct addrinfo *res;
		err = getaddrinfo(WEB_SERVER, "80", &hints, &res);
		int s = socket(res->ai_family, res->ai_socktype, 0);
		connect(s, res->ai_addr, res->ai_addrlen);
		freeaddrinfo(res);	
		write(s, path, strlen(path));				
		
		for(i = 0; i < 215; i++) {
			recv_buf[i] = 0;
		}
		r = read(s, recv_buf, 214);
		if (recv_buf[0] == '?'){
			//mode = 1;
			return;
		}
		if(recv_buf[0] == '!'){
			printf("test !");
			//change_mode();
			GPIO_OUTPUT_SET(LED_GPIO14, LOW);
			lRed = LOW;
			rLight = HIGH;
			GPIO_OUTPUT_SET(LED_GPIO12, LOW);
			lGreen = LOW;
			gLight = HIGH;
			GPIO_OUTPUT_SET(LED_GPIO13, LOW);
			lBlue = LOW;
			bLight = HIGH;
			GPIO_OUTPUT_SET(0, LOW);
			lYellow = LOW;
			hot = 1;
			
		}if(recv_buf[0] != '!'){
			hot = 0;	
		}
		
		
		if(r > 0) {	
			//rintf("%s", recv_buf);
			//mode = 1;
			onoff[0] = recv_buf[210];
			onoff[1] = recv_buf[211];
			onoff[2] = recv_buf[212];
			onoff[3] = recv_buf[213];
		}
		close(s);
	}
}

char digit[2];
void task_http_get(void *pvParameters) {
	for(;;) {
		//strcpy(path, "GET /control.php HTTP/1.1\r\n"
					 //"Host: smartlight.ddns.net\r\n"
					 //"User-Agent: esp-open-rtos/0.1 esp8266\r\n"
					 //"Connection: close\r\n"
					 //"\r\n");
		
		strcpy(path, "GET /control.php?onoff=");
		sprintf(digit, "%d", lRed);
		strcat(path, digit);
		sprintf(digit, "%d", lGreen);
		strcat(path, digit);
		sprintf(digit, "%d", lBlue);
		strcat(path, digit);
		sprintf(digit, "%d", lYellow);
		strcat(path, digit);
		strcat(path, " HTTP/1.1\r\n"
					 "Host: smartlight.ddns.net\r\n"
					 "User-Agent: esp-open-rtos/0.1 esp8266\r\n"
					 "Connection: close\r\n"
					 "\r\n");
		http_get();
		printf("%s", onoff);
		if(strlen(onoff) == 3) {
			if(onoff[2] == '0') {
				GPIO_OUTPUT_SET(LED_GPIO14, HIGH);
				lRed = HIGH;
				rLight = LOW;
				GPIO_OUTPUT_SET(LED_GPIO12, HIGH);
				lGreen = HIGH;
				gLight = LOW;
				GPIO_OUTPUT_SET(LED_GPIO13, HIGH);
				lBlue = HIGH;
				bLight = LOW;
				GPIO_OUTPUT_SET(0, HIGH);
				lYellow = HIGH;
			} else if(onoff[2] == '1') {
				GPIO_OUTPUT_SET(LED_GPIO14, HIGH);
				lRed = HIGH;
				rLight = LOW;
			} else if(onoff[2] == '2') {
				GPIO_OUTPUT_SET(LED_GPIO12, HIGH);
				lGreen = HIGH;
				gLight = LOW;
			} else if(onoff[2] == '3'){
				GPIO_OUTPUT_SET(LED_GPIO13, HIGH);
				lBlue = HIGH;
				bLight = LOW;
			} else {
				GPIO_OUTPUT_SET(0, HIGH);
				lYellow = HIGH;
			}	
		} else if(strlen(onoff) == 4){
			if(onoff[3] == '0') {
				GPIO_OUTPUT_SET(LED_GPIO14, LOW);
				lRed = LOW;
				rLight = HIGH;
				GPIO_OUTPUT_SET(LED_GPIO12, LOW);
				lGreen = LOW;
				gLight = HIGH;
				GPIO_OUTPUT_SET(LED_GPIO13, LOW);
				lBlue = LOW;
				bLight = HIGH;
				GPIO_OUTPUT_SET(0, LOW);
				lYellow = LOW;
			} else if(onoff[3] == '1') {
				GPIO_OUTPUT_SET(LED_GPIO14, LOW);
				lRed = LOW;
				rLight = HIGH;
			} else if(onoff[3] == '2') {
				GPIO_OUTPUT_SET(LED_GPIO12, LOW);
				lGreen = LOW;
				gLight = HIGH;
			} else if(onoff[3] == '3') {
				GPIO_OUTPUT_SET(LED_GPIO13, LOW);
				lBlue = LOW;
				bLight = HIGH;
			} else {
				GPIO_OUTPUT_SET(0, LOW);
				lYellow = LOW;
			}
		}
		vTaskDelay(200);
	}
}

void user_init(void)
{
    // Change baudrate UART0 to 115200 for printf()
    UART_ConfigTypeDef uart_config;
    uart_config.baud_rate    = BIT_RATE_115200;
    uart_config.data_bits     = UART_WordLength_8b;
    uart_config.parity          = USART_Parity_None;
    uart_config.stop_bits     = USART_StopBits_1;
    uart_config.flow_ctrl      = USART_HardwareFlowControl_None;
    uart_config.UART_RxFlowThresh = 120;
    uart_config.UART_InverseMask = UART_None_Inverse;
    UART_ParamConfig(UART0, &uart_config);
    /*wifi_station_disconnect();
    wifi_station_set_auto_connect(0);*/
    // Configure pin as a GPIO
	wifi_set_opmode(0x01);
	connect_wifi();

    PIN_FUNC_SELECT(GPIO_PIN_REG_12, FUNC_GPIO12);
    PIN_FUNC_SELECT(GPIO_PIN_REG_13, FUNC_GPIO13);
    PIN_FUNC_SELECT(GPIO_PIN_REG_14, FUNC_GPIO14);
    PIN_FUNC_SELECT(GPIO_PIN_REG_0, FUNC_GPIO0);
	PIN_FUNC_SELECT(GPIO_PIN_REG_4, FUNC_GPIO4);
	PIN_FUNC_SELECT(GPIO_PIN_REG_5, FUNC_GPIO5);
	

    xTaskCreate(task_led_dark_light, "task_led_dark_light", 256, NULL, 2, NULL);
    xTaskCreate(task_led_impediment, "task_led_impediment", 256, NULL, 2, NULL);
	xTaskCreate(task_http_get, "task_http_get", 256, NULL, 2, NULL);
	xTaskCreate(task_system_onoff, "task_system_onoff", 256, NULL, 2, NULL);
	
	

}

