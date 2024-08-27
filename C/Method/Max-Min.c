#include<stdio.h>

// Declare function show with parameters which are a, b, c
void Max(int a, int b, int c) {
	int maxValue = a;
	if (maxValue < b) {
		maxValue = b;
	}
	if (maxValue < c) {
		maxValue = c;
	}
	// Print the largest number among three parameters
	printf("%d\n", maxValue);
}

// Declare function show with parameters which are a, b, c
void Min(int a, int b, int c) {
	int minValue = a;
	if (minValue > b) {
		minValue = b;
	}
	if (minValue > c) {
		minValue = c;
	}
	// Print the smallest number among three parameters
	printf("%d\n", minValue);
}

int main() {
    int a, b, c;
    scanf("%d%d%d", &a, &b, &c);
    Max(a, b, c);
    Min(a, b, c);
	return 0;
}
