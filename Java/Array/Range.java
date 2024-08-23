import java.util.Scanner;

public class Array {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int n = sc.nextInt();
		int i = sc.nextInt();
		int j = sc.nextInt();
		int[] arr = new int[n];

		for (int k = 0; k < n; k++) {
			arr[k] = sc.nextInt();
		}

		for (int k = 0; k < n; k++) {
			if (arr[k] >= i && arr[i] <= j) {
				System.out.print(arr[k] + " ");
			}
		}
	}
}
