//Cach 1
#include<stdio.h>
#include<string.h>

int main() {
    char str[100];
    scanf("%s", str);
    printf("%d", strlen(str));
    return 0;
}

//Cach 2
#include<stdio.h>

int main() {
	char str[100];
	int len = 0;
	scanf("%s", str);
	while (str[len] != '\0') {
		len++;
	}
	printf("%d", len);
	return 0;
}
