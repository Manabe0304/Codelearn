import java.util.Scanner;

public class Array {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int n = sc.nextInt();
		int[] arr = new int[n];

		for (int i = 0; i < n; i++) {
			arr[i] = sc.nextInt();
		}

		int maxValue = arr[0];
		for (int i = 1; i < n; i++) {
			if (arr[i] > maxValue) {
				maxValue = arr[i];
			}
		}
		System.out.println(maxValue);
		
                int minValue = arr[0];
		for (int i = 1; i < n; i++) {
			if (arr[i] < minValue) {
				minValue = arr[i];
			}
		}
		System.out.println(minValue);
	}
}
