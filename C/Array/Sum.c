#include <stdio.h>

int main() {
    int a[1000], n;
    scanf("%d", &n);

    // Validate the size of the array
    if (n <= 0 || n > 1000) {
        return 1;
    }

    int sum = 0;
    for (int i = 0; i < n; i++) {
        printf("a[%d] = ", i);
        scanf("%d", &a[i]);
        sum += a[i];
    }

    printf("Sum of all elements: %d\n", sum);
    printf("Sum of the first and last elements: %d\n", a[0] + a[n - 1]);
    printf("Array in reverse order: ");
    for (int i = n - 1; i >= 0; i--) {
        printf("%d ", a[i]);
    }
    return 0;
}
