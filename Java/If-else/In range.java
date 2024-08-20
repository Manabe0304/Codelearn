import java.util.Scanner;

public class Statement {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int a = sc.nextInt();
		if (a >= 10 && a <= 100) {
			System.out.println(a + " is in the range [10, 100]");
		} else {
			System.out.println(a + " is not in the range [10, 100]");
		}
		
		int score = sc.nextInt();
		if (score >= 0 && score <= 10) {
			System.out.println("The score is valid");
		} else {
			System.out.println("The score is not valid");
		}
	}
}
