import java.util.Scanner;

public class Loop {
	public static void main(String[] args) {
		for (int i = 0; i < 5; i++) {
			for (int j = 0; j < 5; j++) {
				System.out.print(i + " ");
			}
			System.out.println();
		}

		System.out.println();
		for (int i = 1; i <= 10; i++) {
			for (int j = 1; j <= 10; j++) {
				System.out.print(i * j + " ");
			}
			System.out.println();
		}
		
		System.out.println();
		//Cach 1
		int count = 0;
		for (int i = 0; i < 5; i++) {
			for (int j = 0; j < 5; j++) {
				System.out.print(count + " ");
				count += 1;
			}
			System.out.println();
		}
		
		System.out.println();
		//Cacb 2
		for (int i = 0; i < 5; i++) {
			for (int j = 0; j < 5; j++) {
				System.out.print(i * 5 + j + " ");
			}
			System.out.println();
		}
	}
}
