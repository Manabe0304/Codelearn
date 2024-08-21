import java.util.Scanner;

public class Loop {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int n = sc.nextInt();
		int answer = 0;
		for (int i = 1; i <= n; i++) {
			if (n % i == 0) {
				System.out.print(i + " ");
			}
		}
		System.out.println();
		for (int i = 1; i <= n; i++) {
			if(n % i == 0) {
				answer++;
			}
		}
		System.out.println(answer);
	}
}
