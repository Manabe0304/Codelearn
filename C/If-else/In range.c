#include<stdio.h>

int main() {
	int a;
	scanf("%d", &a);
	if (a >= 10 && a <= 100) {
		printf("%d is in range (10, 100)", a);
	} else {
		printf("%d is not in range (10, 100)", a);
	}
	
	int score;
	scanf("%d", &score);
	if (score < 0 || score > 10) {
		printf("The score is not valid");
	} else {
		printf("The score is valid");
	}
	return 0;
}
