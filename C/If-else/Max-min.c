#include <stdio.h>

int main() {
    int a, b, c;
    scanf("%d%d%d", &a, &b, &c);

    int max, min;

    // Finding the maximum
    if (a >= b && a >= c) {
        max = a;
    } else if (b >= c) {
        max = b;
    } else {
        max = c;
    }

    // Finding the minimum
    if (a <= b && a <= c) {
        min = a;
    } else if (b <= c) {
        min = b;
    } else {
        min = c;
    }

    printf("Maximum: %d\n", max);
    printf("Minimum: %d\n", min);

    return 0;
}
