//Cach 1 Dem cac vi tri cua ki tụ do (Phan biet chu thuong va hoa)
#include <stdio.h>
#include <string.h>

int main() {
    char c;
    char s[100];

    // Read character and string input
    scanf("%c", &c);
    scanf("%s", s);

    int len = strlen(s);
    int found = 0; // Flag to track if the character is found

    // Loop through the string to find all occurrences of the character 'c'
    for (int i = 0; i < len; i++) {
        if (s[i] == c) {
            printf("%d ", i);  // Print the index of each occurrence
            found = 1;         // Set flag to indicate character found
        }
    }

    // If the character was not found in the string, print -1
    if (!found) {
        printf("-1");
    }

    return 0;
}

//Cach 2: Dem cac vi tri cua ki tụ do (Khong ke chu hoa hay thuong)
#include <stdio.h>
#include <string.h>
#include <ctype.h>

int main() {
    char c;
    char s[100];
    scanf("%c", &c);
    scanf("%s", s);

    // Convert the input character to both lower and upper cases
    char lower_c = tolower(c);
    char upper_c = toupper(c);

    int len = strlen(s);
    int found = 0; // To keep track of whether we found the character or not

    for (int i = 0; i < len; i++) {
        // Check for both lower and upper case occurrences of c
        if (s[i] == lower_c || s[i] == upper_c) {
            printf("Found at index: %d\n", i);
            found = 1;
        }
    }

    if (!found) {
        printf("Character not found\n");
    }

    return 0;
}

