//Cach 1
#include<stdio.h>
#include<string.h>

int main() {
    char s1[100], s2[100], s3[100];
    scanf("%s %s %s", s1, s2, s3);

    int len1 = strlen(s1);
    for (int i = 0; i < len1; i++) {
        if (s1[i] >= 'A' && s1[i] <= 'Z') {
            s1[i] += 32;
        }
    }

    int len2 = strlen(s2);
    for (int i = 0; i < len2; i++) {
        if (s2[i] >= 'A' && s2[i] <= 'Z') {
            s2[i] += 32;
        }
    }

    int len3 = strlen(s3);
    for (int i = 0; i < len3; i++) {
        if (s3[i] >= 'A' && s3[i] <= 'Z') {
            s3[i] += 32;
        }
    }
   
    printf("%s\n%s\n%s", s1, s2, s3);

    return 0;
}

//Cach 2
#include<stdio.h>
#include<string.h>

void show(char s[100]) {
    int len = strlen(s);
    for (int i = 0; i < len; i++) {
        if (s[i] >= 'A' && s[i] <= 'Z') {
            s[i] += 32;
        }
    }
    printf("%s\n", s);
}

int main() {
    char s1[100], s2[100], s3[100];
    scanf("%s %s %s", s1, s2, s3);
    show(s1);
    show(s2);
    show(s3);
    return 0;
}
