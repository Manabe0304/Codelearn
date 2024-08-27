//Syntax
void functionName() {
	/*
	code to be executed
	this code block will be executed when called
	*/
}

//Display 1 to 10
#include<stdio.h>

// Create function show
void show() {
	// Print all numbers from 1 to 10
	for (int i = 1; i <= 10; i++) {
		printf("%d ", i);
	}
}

int main() {
	// Call function show
	show();
	return 0;
}

//Display Alphabet English
#include<stdio.h>

// Create function show
void show() {
	// Display English alphabet on the screen
	for (char c = 'A'; c <= 'Z'; c++) {
		printf("%c", c);
	}
}

int main() {
	// Call function show
	show();
	return 0;
}
