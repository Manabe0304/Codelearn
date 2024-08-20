import java.util.Scanner;

public class Input {
	public static void main(String[] args) {
		// Create object sc of class Scanner to input data
		Scanner sc = new Scanner(System.in);
		String name = sc.nextLine();
		String address = sc.nextLine();
		int age = sc.nextInt();
		double gpa = sc.nextDouble();
		System.out.println("\nHello " + name);
		System.out.println("\nName: " + name);
		System.out.println("Address: " + address);
		System.out.println("Age: " + age);
		System.out.println("Grade Point Average: " + gpa);
	}
}
