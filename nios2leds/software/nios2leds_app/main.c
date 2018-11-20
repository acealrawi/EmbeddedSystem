/*
 * main.c
 *
 *  Created on: Oct 28, 2018
 *      Author: Cell
 */


#include "alt_types.h"
#include "altera_avalon_pio_regs.h"
#include "system.h"
#include <stdio.h>
#include <unistd.h>
/* A "loop counter" variable. */
static alt_u8 count;
int main(void)
{
	printf("\n");
	printf("----------------------------------\n");
	printf("Saxion Nios II Board Led demo\n");
	printf("----------------------------------\n");
	count = 0;
	while(1) {
		count = IORD_ALTERA_AVALON_PIO_DATA(DIPSW_PIO_BASE);
		decToBinary(count);
		IOWR_ALTERA_AVALON_PIO_DATA(LED_PIO_BASE, count);
//		printf("%d ",count);
		usleep(100000);
	}
	return 0;
}

void decToBinary(int n)
{
    // array to store binary number
    int binaryNum[4] = {0, 0, 0, 0};

    // counter for binary array
    int i = 3;
    while (n > 0) {

        // storing remainder in binary array
        binaryNum[i] = n % 2;
        n = n / 2;
        i--;
    }

    for (int j = 0 ; j < 4; j++)
		printf("%d ",binaryNum[j]);
	printf("\n");
	TwoBitFullAdder(binaryNum[0],binaryNum[1],binaryNum[2],binaryNum[3]);

    // printing binary array in reverse order
//    for (int j = i - 1; j >= 0; j--)
//    	printf("%d ",binaryNum[j]);
//	printf("\n");
}

void TwoBitFullAdder(alt_u8 a1, alt_u8 b1, alt_u8 a2,alt_u8 b2){
	alt_u8 output0 = Xor(a1, b1);
	alt_u8 a1_and_b1 = And(a1,b1);
	printf("%d ",output0);
	FullAdder(a1_and_b1,a2,b2);

}

void FullAdder(alt_u8 a1_and_b1, alt_u8 a2,alt_u8 b2){
	alt_u8 a2_xor_b2 = Xor(a2,b2);
	alt_u8 a2_and_b2 = And(a2,b2);
	alt_u8 output1 = Xor(a2_xor_b2,a1_and_b1);
	alt_u8 carry = Or(And(a2_xor_b2,a1_and_b1), a2_and_b2);
	printf("%d ",output1);
	printf("/n");
	printf("%d ",carry);
}

alt_u8 And(alt_u8 a, alt_u8 b){
	return a&b;
}
alt_u8 Or(alt_u8 a, alt_u8 b){
	return a|b;
}
alt_u8 Xor(alt_u8 a, alt_u8 b){
	return a^b;
}
