#include<stdio.h>

int main() {
	int n;
	scanf("%d", &n);
	if (n > 0) {
		printf("n is a positive number");
	} else if (n < 0) {
		printf("n is a negative number");
	} else {
		printf("n is equal to 0");
	}
	return 0;
