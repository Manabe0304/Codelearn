#include<stdio.h>

int main() {
    long long a = 384847522;
    long long b = 988347273;
    printf("%lld\n", a * b);
    
    int c = 384847522;
    int d = 988347273;
    /* 
    Use statement (long long) 
    to declare that the result is a number of type long long
    */
    printf("%lld", (long long)c * d);
    return 0;
}

