/*****************************************************************************
 * fir_integer.c
 *****************************************************************************/

#include <cycle_count.h>
#include <stdio.h>
#include <ccblkfn.h>

#define Nsamp 1000
#define L 21

#include "signal_integer_i.h"
#include "coeffs_integer_i.h"

short delay[L];
short idx_delay = 0;
short izlbuf[Nsamp];
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
	
	// zapamti najnoviji uzorak
	// cirkularno povecaj indeks delay niza (circindex)
	
	// u petlji akumuliraj umnoske stanja i koeficijenata, uz cirkularno
	// inkrementiranje indeksa stanja pomocu circindex
	// voditi racuna o specificnostima fixed point aritmetike, odnosno
	// posmaku u lijevo za jedan nakon mnozenja da bi rezultat bio tocan
	// u 32 bitnoj frakcionalnoj aritmetici (jeste li proucili pripremu?)
	
	// zadrzi samo gornjih 16 bitova akumulatora (za sad ne brinemo oko
	// overflowa) i posmakni na najmanje znacajna dva bajta (>>16)
	
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
		obrada_integer(signal[i]);
		STOP_CYCLE_COUNT(final_count, start_count);
		
		PRINT_CYCLES("Number of cycles: ", final_count);
		printf("%d (as float: %f)\n", izlbuf[i], (float)izlbuf[i] / 32768);
	}
	
	return 0;
}
