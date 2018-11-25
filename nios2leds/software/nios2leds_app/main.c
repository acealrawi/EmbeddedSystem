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
int binaryNum[4] = {0, 0, 0, 0};
int output[3] = {0, 0, 0};
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
		TwoBitFullAdder(binaryNum[0],binaryNum[1],binaryNum[2],binaryNum[3]);
		int decimalOutput = binToDecimal();
//		printf("%d ",decimalOutput);
		if(count == 0){
			decimalOutput = 0;
		}
		IOWR_ALTERA_AVALON_PIO_DATA(LED_PIO_BASE, decimalOutput);
		usleep(100000);
	}
	return 0;
}

void decToBinary(int n)
{
    // counter for binary array
    int i = 3;
    while (n > 0) {

        // storing remainder in binary array
        binaryNum[i] = n % 2;
        n = n / 2;
        i--;
    }

//	TwoBitFullAdder(binaryNum[0],binaryNum[1],binaryNum[2],binaryNum[3]);
	return binaryNum;
    // printing binary array in reverse order
//    for (int j = i - 1; j >= 0; j--)
//    	printf("%d ",binaryNum[j]);
//	printf("\n");

}

int binToDecimal(){

	int decimal = 0, weight =1;
	for (int j = 3 - 1; j >= 0; j--){
		int rem = output[j] % 10;
		decimal = decimal + rem*weight;
		weight = weight * 2;
	}
	return decimal;
}

void TwoBitFullAdder(alt_u8 a1, alt_u8 b1, alt_u8 a2,alt_u8 b2){
	alt_u8 output0 = Xor(a1, b1);
	alt_u8 a1_and_b1 = And(a1,b1);
	alt_u8 a2_xor_b2 = Xor(a2,b2);
	alt_u8 a2_and_b2 = And(a2,b2);
	alt_u8 output1 = Xor(a2_xor_b2,a1_and_b1);
	alt_u8 carry = Or(And(a2_xor_b2,a1_and_b1), a2_and_b2);
//	FullAdder(a1_and_b1,a2,b2);
	output[0] = output0;
	output[1] = output1;
	output[2] = carry;
	printf("output: %d %d %d\n",output[0],output[1],output[2]);
//	printf("output0: %d \n",output[0]);
//	printf("output1: %d \n",output[1]);
//	printf("carry: %d \n",output[2]);

}

void FullAdder(alt_u8 a1_and_b1, alt_u8 a2,alt_u8 b2){
	alt_u8 a2_xor_b2 = Xor(a2,b2);
	alt_u8 a2_and_b2 = And(a2,b2);
	alt_u8 output1 = Xor(a2_xor_b2,a1_and_b1);
	alt_u8 carry = Or(And(a2_xor_b2,a1_and_b1), a2_and_b2);
	printf("output1: %d ",output1);
	printf("\n");
	printf("carry: %d ",carry);
}

int And(int a, int b){
	alt_u8 x = a&b;
	return x;
}
int Or(int a, int b){
	return a|b;
}
int Xor(int a, int b){
	return a^b;
}
