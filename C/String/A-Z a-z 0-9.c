#include<stdio.h>

int main() {
    for (char c = 'A'; c <= 'Z'; c++) {
        printf("%c", c);
    }
    printf("\n");
    for (char c = 'a'; c <= 'z'; c++) {
        printf("%c", c);
    }
    printf("\n");
    for (char c = '0'; c <= '9'; c++) {
        printf("%c", c);
    }
    return 0;
}
