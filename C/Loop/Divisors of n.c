#include<stdio.h>

int main() {
    int n;
    int answer = 0;
    scanf("%d", &n);
    for (int i = 1; i <= n; i++) {
        // If n is divisible by i, i is the divisor of n
        if (n % i == 0) {
            printf("%d ", i);
        }
    }
    
    for (int i = 1; i <= n; i++) {
        if (n % i == 0) {
            answer++;
        }
    }
    printf("\n%d", answer);
    return 0;
}
