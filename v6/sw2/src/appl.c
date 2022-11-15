void wait() {
	for (int k = 0; k < 10000000; k++);
}

#include "xparameters.h"

#include "xuartps.h"
XUartPs UartPs;
const u8* sendbuf = "Vježba 5 je napravljena.";

#include "xgpiops.h"
#define LED 7
XGpioPs GpioPs;

int main() {
	// setup
	XUartPs_Config* UartConfig = XUartPs_LookupConfig(XPAR_PS7_UART_1_DEVICE_ID);
	if (UartConfig == NULL)
		return XST_FAILURE;

	if (XUartPs_CfgInitialize(&UartPs, UartConfig, UartConfig->BaseAddress) != XST_SUCCESS)
		return XST_FAILURE;

	XUartPs_SetBaudRate(&UartPs, 9600);

	XGpioPs_Config* GpioConfig = XGpioPs_LookupConfig(XPAR_PS7_GPIO_0_DEVICE_ID);
	if (GpioConfig == NULL)
		return XST_FAILURE;

	if (XGpioPs_CfgInitialize(&GpioPs, GpioConfig, GpioConfig->BaseAddr) != XST_SUCCESS)
		return XST_FAILURE;

	XGpioPs_SetDirectionPin(&GpioPs, LED, 1);
	XGpioPs_SetOutputEnablePin(&GpioPs, LED, 1);

	// main
	for (int i = 0; sendbuf[i] != '\0'; i += XUartPs_Send(&UartPs, sendbuf + i, 1));

	while (1) {
		XGpioPs_WritePin(&GpioPs, LED, 1);
		wait();
		XGpioPs_WritePin(&GpioPs, LED, 0);
		wait();
	}

	return XST_SUCCESS;
}
