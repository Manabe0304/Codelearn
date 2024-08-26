//Example 1
#include<stdio.h>

int main() {
	int n;
	scanf("%d", &n);
	switch (n) {
	case 1:
		printf("Monday");
		break;
	case 2:
		printf("Tuesday");
		break;
	case 3:
		printf("Wednesday");
		break;
	case 4:
		printf("Thursday");
		break;
	case 5:
		printf("Friday");
		break;
	case 6:
		printf("Saturday");
		break;
	case 7:
		printf("Sunday");
		break;
	default:
		printf("Invalid input! Please enter week number between 1-7");
	}
	return 0;
}

//Example 2
#include<stdio.h>

int main() {
	int a, b;
	char c;
	scanf("%d %c %d", &a, &c, &b);
	switch (c) {
	case '+':
		printf("%d", a + b);
		break;
	case '-':
		printf("%d", a - b);
		break;
	case '*':
		printf("%d", a * b);
		break;
	case '/':
		printf("%d", a / b);
		break;
	}
	return 0;
}
