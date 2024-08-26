#include <stdio.h>

int main() {
	int a, b;
	scanf("%d%d", &a, &b);
	if (a >= b) {
		printf("a is greater than or equal to b");
	} else {
		printf("a is smaller than b");
	}
	
    if (a != 0 && b != 0) {
        printf("a is not equal to 0 and b is not equal to 0");
    } else {
        printf("a is equal to 0 or b is equal to 0");
    }
    return 0;
}
