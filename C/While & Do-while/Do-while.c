#include<stdio.h>

int main() {
	int n;
	scanf("%d", &n);
	int i = 1;
	do {
		printf("%d ", i);
		i++;
	} while (i <= n);
	
	printf("\n");
	i = 1;
    do {
        if (i % 10 == 0) {
            printf("%d ", i);
        }
        i++;
    } while (i <= n);
	return 0;
}
