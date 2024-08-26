import java.util.Scanner;

public class Loop {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int a = sc.nextInt();
		int b = sc.nextInt();
		int m = sc.nextInt();
		int n = sc.nextInt();
		while (a <= b) {
			if (a % m == 0 && a % n == 0) {
				System.out.print(a + " ");
			}
			a++;
		}
	}
}
