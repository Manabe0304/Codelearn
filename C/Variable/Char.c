#include<stdio.h>

int main() {
	char c = 'x';
	printf("%c\n", c);
	
	// Chuyen ki tu thanh so nguyen tuong ung
	printf("a = %d\n", 'a');
	printf("b = %d\n", 'b');
	printf("c = %d\n", 'c');
	printf("d = %d\n", 'd');
	printf("e = %d\n", 'e');
	printf("...\n");
	printf("x = %d\n", 'x');
	printf("y = %d\n", 'y');
	printf("z = %d\n", 'z');
	
	// Chuyen tu ki tu a sang ki tu d thong qua so nguyen tuong ung
	char d = 'a' + 3;
	printf("%c", d);
	return 0;
}
