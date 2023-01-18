/*****************************************************************************
 * fir_dsplib.c
 *****************************************************************************/

#include <fract.h>
#include <filter.h>
#include <cycle_count.h>
#include <stdio.h>
#include <ccblkfn.h>

#define Nout (sizeof(signal)/sizeof(signal[0]))
#define L 21

#include "signal_fract16_i.h"
#include "coeffs_fract16_i.h"

fract16 delay[L];
int idx_delay = 0;
fract16 izlbuf[Nout];
short idx_izlbuf = 0;

int main() {
	int i;
	cycle_t start_count, final_count;
	
	for (i = 0; i < L; i++)
		delay[i] = 0;
		
	fir_state_fr16 state;
	fir_init(state, coeffs, delay, L, 1);
	
	START_CYCLE_COUNT(start_count);
	fir_fr16(signal, izlbuf, Nout, &state);
	STOP_CYCLE_COUNT(final_count, start_count);
	
	PRINT_CYCLES("Number of cycles: ", final_count);
	
	for (i = 0; i < Nout; i++) {
		printf("izlbuf[%d] = %d (%f)\n", i, izlbuf[i], (float)izlbuf[i] / 32768);
	}
	
	return 0;
}
