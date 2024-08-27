#include<stdio.h>

int main() {
    int n, a, b;
    int arr[1000];
    scanf("%d%d%d", &n, &a, &b);
    for (int i = 0; i < n; i++) {
        scanf("%d", &arr[i]);
    }
    for (int i = 0; i < n; i++) {
        if (arr[i] >= a && arr[i] <= b) {
            printf("%d ", arr[i]);
        }
    }
    return 0;
}
