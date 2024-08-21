import java.util.Scanner;

public class Loop {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int a = sc.nextInt();
		int b = sc.nextInt();
		int answer = 0;
		for (int i = a; i <= b; i++) {
			// answer += i means answer = answer + i
			answer += i;
		}
		System.out.println(answer);
	}
}
