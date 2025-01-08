#include<stdio.h>
#include<string.h>

int main() {
    char c;
    char s[100];
    scanf("%c\n", &c);
    gets(s);
    int count = 0;
    int len = strlen(s);
    for (int i = 0; i < len; i++) {
        if (s[i] == c) {
            count++;
        }
    }
    printf("%d", count);
    return 0;
}
