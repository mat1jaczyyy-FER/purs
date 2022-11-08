#include "xgpiops_hw.h"

#define N_Pause 10000000
#define GPIO7_BASE 0xE000A000

void wait() {
	for (int k = 0; k < N_Pause; k++);
}

int main() {
	// set pin to output
	// DIRM[7] = 1
	*(volatile unsigned int *)(GPIO7_BASE + 0x204) = 0x80;

	// enable pin
	// OEN[7] = 1
	*(volatile unsigned int *)(GPIO7_BASE + 0x208) = 0x80;

	while (1) {
												// MASKDATA
		*(volatile unsigned int *)(GPIO7_BASE) = 0xFF7F0080;
		wait();
		*(volatile unsigned int *)(GPIO7_BASE) = 0xFF7F0000;
		wait();
	}

	return 0;
}
