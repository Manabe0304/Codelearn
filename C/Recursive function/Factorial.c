//Phuong trinh de quy
void recurse() {
    ...
    recurse();
    ...
}

//Sum of numbers from 1 to n
#include<stdio.h>

int sumOfArray(int n) {
    if (n == 0) return 0;
    return n + sumOfArray(n - 1);
}

int main() {
    printf("%d", sumOfArray(10));
    return 0;
}

//Calculate n!
#include<stdio.h>

int factorial(int n) {
    if (n == 1) return 1;
    return n * factorial(n - 1);
}

int main() {
    int n;
    scanf("%d", &n);
    printf("%d", factorial(n));
    return 0;
}
