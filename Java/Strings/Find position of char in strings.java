import java.util.Scanner;

public class Array {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String s = sc.next();
		char c = sc.next().charAt(0);
		int answer = -1;
		for (int i = 0; i < s.length(); i++) {
			if (s.charAt(i) == c) {
				/*
				 * Use break statement to terminate the loop because
				 * we had found the first occurence of c.
				 * If we don't use break statement, the program will produce
				 * the last position of c's occurence.
				 */
				answer = i;
				break;
			}
		}
		System.out.print(answer);
	}
}
