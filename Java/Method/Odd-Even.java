import java.util.Scanner;

public class Method {

    // Method to calculate the sum of odd numbers up to n
    public static int sumOdd(int n) {
        if (n <= 0) return 0;
        if (n % 2 != 0) {
            return n + sumOdd(n - 2);
        } else {
            return sumOdd(n - 1);
        }
    }

    // Method to calculate the sum of even numbers up to n
    public static int sumEven(int n) {
        if (n <= 0) return 0;
        if (n % 2 == 0) {
            return n + sumEven(n - 2);
        } else {
            return sumEven(n - 1);
        }
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Prompting user for input
        System.out.println("Enter an integer:");

        int n = sc.nextInt();

        // Calculate sum of odd and even numbers
        int sumOdd = sumOdd(n);
        int sumEven = sumEven(n);

        // Displaying results
        System.out.println("Sum of odd numbers up to " + n + ": " + sumOdd);
        System.out.println("Sum of even numbers up to " + n + ": " + sumEven);

        sc.close();  // Close the scanner to avoid resource leaks
    }
}
