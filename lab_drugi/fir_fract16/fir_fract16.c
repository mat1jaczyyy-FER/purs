/*****************************************************************************
 * fir_fract16.c
 *****************************************************************************/

#include <fract.h>
#include <cycle_count.h>
#include <stdio.h>
#include <ccblkfn.h>

#define Nsamp (sizeof(signal)/sizeof(signal[0]))
#define L 21
#define Nout (Nsamp + L - 1)

#include "signal_fract16_i.h"
#include "coeffs_fract16_i.h"

fract16 delay[L];

#define INT_IDX_DELAY
#ifdef INT_IDX_DELAY
	int idx_delay = 0;
#else
	short idx_delay = 0;
#endif

fract16 izlbuf[Nout];
short idx_izlbuf = 0;

void obrada_fract16(fract16 sample) {
	int i;
	fract32 acc = 0;
	fract32 prod;
	
	delay[idx_delay] = sample;
	idx_delay = circindex(idx_delay, 1, L);
	
	for (i = 0; i < L; i++) {
		acc = add_fr1x32(acc, round_fr1x32(mult_fr1x32(coeffs[i], delay[idx_delay])));
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
		fract16 next = i >= Nsamp? 0 : signal[i];

		START_CYCLE_COUNT(start_count);
		obrada_fract16(next);
		STOP_CYCLE_COUNT(final_count, start_count);
		
		PRINT_CYCLES("Number of cycles: ", final_count);
		printf("izlbuf[%d] = %d (%f)\n", i, izlbuf[i], (float)izlbuf[i] / 32768);
	}
	
	return 0;
}
