#include<stdio.h>

int main() {
	int a, b, m, n;
	scanf("%d%d%d%d", &a, &b, &m, &n);
	while (a <= b) {
		if (a % m == 0 && a % n == 0) {
			printf("%d ", a);
		}
		a++;
	}
	return 0;
}
