/*****************************************************************************
 * fir_float.c
 *****************************************************************************/

#include <cycle_count.h>
#include <stdio.h>
#include <ccblkfn.h>

#define Nsamp 1000
#define L 21

#include "signal_float_i.h"
#include "coeffs_float_i.h"

float delay[L];
short idx_delay = 0;
float izlbuf[Nsamp];
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
	
	// zapamti najnoviji uzorak
	// cirkularno povecaj indeks delay niza (vidi napomenu)
	
	// u petlji akumuliraj umnoske stanja i koeficijenata, uz cirkularno
	// inkrementiranje indeksa stanja (delay)
	
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
		obrada_float(signal[i]);
		STOP_CYCLE_COUNT(final_count, start_count);
		PRINT_CYCLES("Number of cycles: ", final_count);
		printf("%f\n", izlbuf[i]);	
	}
	
	return 0;
}
