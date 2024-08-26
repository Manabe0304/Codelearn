#include<stdio.h>

int main() {
    int n;
    scanf("%d", &n);
    int a[1000];
    for (int i = 0; i < n; i++) {
        scanf("%d", &a[i]);
    }

    int maxValue = a[0];
    for (int i = 0; i < n; i++) {
        if (a[i] > maxValue) {
            maxValue = a[i];
        }
    }
    printf("%d", maxValue);
    
    int minValue = a[0];
    for (int i = 0; i < n; i++) {
        if (a[i] < minValue) {
            minValue = a[i];
        }
    }
    printf("\n%d", minValue);
    return 0;
}
