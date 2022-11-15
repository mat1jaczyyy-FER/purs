void wait() {
	for (int k = 0; k < 10000000; k++);
}

#include "xparameters.h"

#include "xuartps.h"
XUartPs Uart;
const u8* sendbuf = "Vježba 5 je napravljena.";

#include "xgpiops.h"
#define LED 7
XGpioPs Gpio;

int main() {
	// setup
	XUartPs_Config* UartConfig = XUartPs_LookupConfig(XPAR_PS7_UART_1_DEVICE_ID);
	if (UartConfig == NULL)
		return XST_FAILURE;

	if (XUartPs_CfgInitialize(&Uart, UartConfig, UartConfig->BaseAddress) != XST_SUCCESS)
		return XST_FAILURE;

	XUartPs_SetBaudRate(&Uart, 9600);

	XGpioPs_Config* GpioConfig = XGpioPs_LookupConfig(XPAR_PS7_GPIO_0_DEVICE_ID);
	if (GpioConfig == NULL)
		return XST_FAILURE;

	if (XGpioPs_CfgInitialize(&Gpio, GpioConfig, GpioConfig->BaseAddr) != XST_SUCCESS)
		return XST_FAILURE;

	XGpioPs_SetDirectionPin(&Gpio, LED, 1);
	XGpioPs_SetOutputEnablePin(&Gpio, LED, 1);

	// main
	for (int i = 0; sendbuf[i] != '\0'; i += XUartPs_Send(&Uart, sendbuf + i, 1));

	while (1) {
		XGpioPs_WritePin(&Gpio, LED, 1);
		wait();
		XGpioPs_WritePin(&Gpio, LED, 0);
		wait();
	}

	return XST_SUCCESS;
}
