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

#include "xgpio.h"
XGpio LEDs, BTNs;

int main() {
	// setup
	XUartPs_Config* UartPsConfig = XUartPs_LookupConfig(XPAR_PS7_UART_1_DEVICE_ID);
	if (UartPsConfig == NULL)
		return XST_FAILURE;

	if (XUartPs_CfgInitialize(&UartPs, UartPsConfig, UartPsConfig->BaseAddress) != XST_SUCCESS)
		return XST_FAILURE;

	XUartPs_SetBaudRate(&UartPs, 9600);

	XGpioPs_Config* GpioPsConfig = XGpioPs_LookupConfig(XPAR_PS7_GPIO_0_DEVICE_ID);
	if (GpioPsConfig == NULL)
		return XST_FAILURE;

	if (XGpioPs_CfgInitialize(&GpioPs, GpioPsConfig, GpioPsConfig->BaseAddr) != XST_SUCCESS)
		return XST_FAILURE;

	XGpioPs_SetDirectionPin(&GpioPs, LED, 1);
	XGpioPs_SetOutputEnablePin(&GpioPs, LED, 1);

	XGpio_Config* LEDsConfig = XGpio_LookupConfig(XPAR_GPIO_0_DEVICE_ID);
	if (XGpio_CfgInitialize(&LEDs, LEDsConfig, LEDsConfig->BaseAddress) != XST_SUCCESS)
		return XST_FAILURE;

	XGpio_SetDataDirection(&LEDs, 1, 0x00000000); // 7 Outputs

	XGpio_Config* BTNsConfig = XGpio_LookupConfig(XPAR_GPIO_1_DEVICE_ID);
	if (XGpio_CfgInitialize(&BTNs, BTNsConfig, BTNsConfig->BaseAddress) != XST_SUCCESS)
		return XST_FAILURE;

	XGpio_SetDataDirection(&BTNs, 1, 0x00000003); // 2 Inputs

	// main
	for (int i = 0; sendbuf[i] != '\0'; i += XUartPs_Send(&UartPs, sendbuf + i, 1));

	for (int i = 0; i < 10; i++) {
		XGpioPs_WritePin(&GpioPs, LED, 1);
		wait();
		XGpioPs_WritePin(&GpioPs, LED, 0);
		wait();
	}

	s8 step = -1;
	u8 curr = 0;

	while (1) {
		XGpio_DiscreteWrite(&LEDs, 1, 1 << curr);

		wait();

		u32 btnState = XGpio_DiscreteRead(&BTNs, 1);
		if (btnState & 1) step = 1;
		if (btnState & 2) step = -1;

		curr = (curr + 7 + step) % 7;
	}

	return XST_SUCCESS;
}
