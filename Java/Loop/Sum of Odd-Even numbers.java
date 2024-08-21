import java.util.Scanner;

public class Loop {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int n = sc.nextInt();
		int answer = 0;
		for (int i = 0; i <= n; i++) {
			if (i % 2 != 0) {
				answer += i;
			}
		}
		System.out.println(answer);
		
		System.out.println();
		for (int i = 0; i <= n; i++) {
			if (i % 2 == 0) {
				answer += i;
			}
		}
		System.out.println(answer);
		
		
	}
}
