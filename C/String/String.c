#include<stdio.h>

int main() {
	char str[100];
	scanf("%s", str);
	printf("%s", str);
	return 0;
}

//Cach 1
#include<stdio.h>

int main() {
    char name[100], address[100];
    scanf("%s%s", name, address);
    printf("Name: %s\nAddress: %s", name, address);
    return 0;
}

//Cach 2: Co dau cach trong xau
#include<stdio.h>

int main() {
    char name[100], address[100];
    gets(name);
    gets(address);
    printf("Name: %s\nAddress: %s", name, address);
    return 0;
}
