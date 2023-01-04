/*****************************************************************************
 * fir_fract16.c
 *****************************************************************************/

#include <fract.h>

#include <cycle_count.h>
#include <stdio.h>
#include <ccblkfn.h>

#define Nsamp 1000
#define L 21

#include "signal_fract16_i.h"
#include "coeffs_fract16_i.h"

#define INT_IDX_DELAY

fract16 delay[L];

#ifdef INT_IDX_DELAY
	int idx_delay = 0;
#else
	short idx_delay = 0;
#endif
	
fract16 izlbuf[Nsamp];
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
	
	// kao i u prethodnim zadacima implementirajte mnozenje i akumulaciju
	// ovaj put koristeci fract16 i fract32 tipove podataka.
	// da bi to napravili, koristite naredbe mult_fr1x32, add_fr1x32 i
	// round_fr1x32
	
	izlbuf[idx_izlbuf++] = acc;
}

int main() {
	int i;
	cycle_t start_count;
	cycle_t final_count;
	
	// init FIR
	for (i = 0; i < L; i++) {
		delay[i] = 0;
	}
	
	for (i = 0; i < Nsamp; i++) {
		START_CYCLE_COUNT(start_count);
		obrada_fract16(signal[i]);
		STOP_CYCLE_COUNT(final_count, start_count);
		
		PRINT_CYCLES("Number of cycles: ", final_count);
		printf("%d\n", izlbuf[i]);
	}
	
	return 0;
}
