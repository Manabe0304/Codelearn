#include<stdio.h>
#include<string.h>

int main() {
    char c;
    char s[100];
    scanf("%c", &c);
    scanf("%s", s);

    int len = strlen(s);
    int index = -1;
    for (int i = 0; i < len; i++) {
        if (s[i] == c) {
            index = i;
            /*
            Use break statement to terminate the loop because
            we had found the first occurence of c.
            If we don't use break statement, the program will produce
            the last position of c's occurence.
            */
            break;
        }
    }
    printf("%d", index);

    return 0;
}
