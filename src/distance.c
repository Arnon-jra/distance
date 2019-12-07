/*
 ============================================================================
 Name        : get_started_MAKEFILE.c
 Author      : Arnon
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "./../inc/get_double.h"


int main(void) {

	double x = get_double("Enter x value: ", -100, 100);
	double y = get_double("Enter y value: ", -100, 100);

	double d = sqrt(pow(x, 2) + pow(y, 2));

	printf("Distance is %lf meters\n",d);

	return EXIT_SUCCESS;
}
