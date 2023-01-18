/*****************************************************************************
 * fir_integer.c
 *****************************************************************************/

#include <cycle_count.h>
#include <stdio.h>
#include <ccblkfn.h>

#define Nsamp (sizeof(signal)/sizeof(signal[0]))
#define L 21
#define Nout (Nsamp + L - 1)

#include "signal_integer_i.h"
#include "coeffs_integer_i.h"

short delay[L];
short idx_delay = 0;
short izlbuf[Nout];
short idx_izlbuf = 0;

void obrada_integer(short sample) {
	int i;
	int acc = 0;
	
	delay[idx_delay] = sample;
	idx_delay = circindex(idx_delay, 1, L);
	
	for (i = 0; i < L; i++) {
		acc += ((((int)coeffs[i] * (int)delay[idx_delay]) << 1) + 0x8000) >> 16;
		idx_delay = circindex(idx_delay, 1, L);
	}
	
	izlbuf[idx_izlbuf++] = acc;
}

int main() {
	int i;
	cycle_t start_count, final_count;
	
	for (i = 0; i < L; i++)
		delay[i] = 0;
	
	for (i = 0; i < Nout; i++) {
		short next = i >= Nsamp? 0 : signal[i];

		START_CYCLE_COUNT(start_count);
		obrada_integer(next);
		STOP_CYCLE_COUNT(final_count, start_count);
		
		PRINT_CYCLES("Number of cycles: ", final_count);
		printf("izlbuf[%d] = %d (%f)\n", i, izlbuf[i], (float)izlbuf[i] / 32768);
	}
	
	return 0;
}
