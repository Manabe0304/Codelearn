import java.util.Scanner;

public class Method {

    // Method to find the maximum of three integers
    public static int max3(int a, int b, int c) {
        if (a >= b && a >= c) {
            return a;
        }
        if (b >= c) {
            return b;
        }
        return c;
    }

    // Method to find the minimum of three integers
    public static int min3(int a, int b, int c) {
        if (a <= b && a <= c) {
            return a;
        }
        if (b <= c) {
            return b;
        }
        return c;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Prompting user for input
        System.out.println("Enter three integers:");

        int a = sc.nextInt();
        int b = sc.nextInt();
        int c = sc.nextInt();

        // Displaying the maximum and minimum values
        System.out.println("Maximum of three numbers: " + max3(a, b, c));
        System.out.println("Minimum of three numbers: " + min3(a, b, c));

        sc.close();  // Closing the scanner to avoid resource leak
    }
}
