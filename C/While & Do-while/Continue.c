//Cach 1
#include<stdio.h>

int main() {
    int n, k;
    scanf("%d%d", &n, &k);
    for (int i = 1; i <= n; i++) {
        if (i % k == 0) {
            continue;
        }
        printf("%d ", i);
    }
    return 0;
}

//Cach 2
#include<stdio.h>

int main() {
    int n, k;
    scanf("%d%d", &n, &k);
    int i = 1;
    while (i <= n) {
        if (i % k == 0) {
            i++;
            continue;
        }
        printf("%d ", i);
        i++;
    }
    return 0;
}
