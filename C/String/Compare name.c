#include<stdio.h>
#include<string.h>

int main() {
    char a[100], b[100];
    scanf("%s%s", a, b);
    if (strcmp(a, b) == 0) {
        printf("Same name");
    } else {
        printf("Not same name");
    }
    return 0;
}
