#include<stdio.h>
#include"pole.h"
#include"objetosc.h"

int main(void) {
	float a = 5.0;
	printf("Pole kwadratu o boku %8.2f wynosi: %8.2f\n", a, policz_pole_kwadratu(a));
	printf("Objetosc szescianu o krawedzi %8.2f wynosi: %8.2f\n", a, policz_objetosc_szescianu(a));
	return 0;
}
