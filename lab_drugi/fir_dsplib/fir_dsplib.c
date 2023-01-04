/*****************************************************************************
 * fir_dsplib.c
 *****************************************************************************/

#include <fract.h>
#include <filter.h>

#include <cycle_count.h>
#include <stdio.h>
#include <ccblkfn.h>

#define Nsamp 1000
#define L 21

#include "signal_fract16_i.h"
#include "coeffs_fract16_i.h"

fract16 delay[L];
int idx_delay = 0;
fract16 izlbuf[Nsamp];
short idx_izlbuf = 0;

int main() {
	int i;
	cycle_t start_count;
	cycle_t final_count;
	
	// init FIR
	for (i = 0; i < L; i++) {
		delay[i] = 0;
	}
	
	fir_state_fr16 state;
	fir_init(state, coeffs, delay, L, 1);
	
	START_CYCLE_COUNT(start_count);
	
	fir_fr16(signal, izlbuf, Nsamp, &state);
	
	STOP_CYCLE_COUNT(final_count, start_count);
	
	PRINT_CYCLES("Number of cycles: ", final_count);
	
	for (i = 0; i < Nsamp; i++) {
		printf("izlbuf[%d] = %d\n", i, izlbuf[i]);
	}
	
	return 0;
}
