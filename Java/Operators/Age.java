import java.util.Scanner;

public class Input {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String name = sc.next();
		int age = sc.nextInt();
		int a = sc.nextInt();
		System.out.println("In " + a + " years, age of " + name + " will be " + (age + 15));
	}
}
