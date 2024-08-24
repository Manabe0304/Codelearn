//Cach 1 Dem cac vi tri cua ki tụ do (Phan biet chu thuong va hoa)
import java.util.Scanner;

public class Array {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String s = sc.next(); 
        char c = sc.next().charAt(0); 

        StringBuilder positions = new StringBuilder(); // To store positions of the character

        for (int i = 0; i < s.length(); i++) {
            if (s.charAt(i) == c) {
                positions.append(i).append(" "); // Append the index to the positions StringBuilder
            }
        }

        if (positions.length() > 0) {
            System.out.println(positions.toString().trim()); // Print all positions found
        } else {
            System.out.println("-1"); // Print -1 if the character is not found
        }
        
        sc.close();
    }
}

//Cach 2: Dem cac vi tri cua ki tụ do (Khong ke chu hoa hay thuong)
import java.util.Scanner;

public class Array {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String s = sc.next();  // Read input string
        char c = sc.next().charAt(0);  // Read input character

        // Convert both the string and the character to lower case for case-insensitive comparison
        s = s.toLowerCase();
        c = Character.toLowerCase(c);

        String positions = "";  // To store positions of the character in the string
        boolean found = false;  // To track if the character is found

        for (int i = 0; i < s.length(); i++) {
            if (s.charAt(i) == c) {  // Compare lower case character
                positions += i + " ";  // Append position to the result string
                found = true;  // Mark that at least one character has been found
            }
        }

        // Print the result based on whether the character was found
        if (found) {
            System.out.print("Character found at positions: " + positions.trim());
        } else {
            System.out.print("-1");  // If no character is found, print -1
        }

        sc.close();
    }
}
