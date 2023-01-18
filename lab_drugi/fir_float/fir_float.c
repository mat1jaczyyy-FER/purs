/*****************************************************************************
 * fir_float.c
 *****************************************************************************/

#include <cycle_count.h>
#include <stdio.h>
#include <ccblkfn.h>

#define Nsamp (sizeof(signal)/sizeof(signal[0]))
#define L 21
#define Nout (Nsamp + L - 1)

#include "signal_float_i.h"
#include "coeffs_float_i.h"

float delay[L];
short idx_delay = 0;
float izlbuf[Nout];
short idx_izlbuf = 0;

#define USE_CIRCINDEX

void obrada_float(float sample) {
	int i;
	float acc = 0;
	
	delay[idx_delay] = sample;
	
	#ifdef USE_CIRCINDEX
		idx_delay = circindex(idx_delay, 1, L);
	#else
		idx_delay = (idx_delay + 1) % L;
	#endif
		
	
	for (i = 0; i < L; i++) {
		acc += coeffs[i] * delay[idx_delay];
	
		#ifdef USE_CIRCINDEX
			idx_delay = circindex(idx_delay, 1, L);
		#else
			idx_delay = (idx_delay + 1) % L;
		#endif
	}
	
	izlbuf[idx_izlbuf++] = acc;
}

int main() {
	int i;
	cycle_t start_count, final_count;
	
	for (i = 0; i < L; i++)
		delay[i] = 0;
	
	for (i = 0; i < Nout; i++) {
		float next = i >= Nsamp? 0.0f : signal[i];
		
		START_CYCLE_COUNT(start_count);
		obrada_float(next);
		STOP_CYCLE_COUNT(final_count, start_count);
		
		PRINT_CYCLES("Number of cycles: ", final_count);
		printf("izlbuf[%d] = %f\n", i, izlbuf[i]);
	}
	
	return 0;
}
