import java.util.Scanner;

public class Array {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int n = sc.nextInt();
		int[] arr = new int[n];

		for (int i = 0; i < n; i++) {
			arr[i] = sc.nextInt();
		}
		//In ra cac so chan trong mang
		for(int i=0;i<n;i++) {
			if (arr[i] % 2 == 0) {
				System.out.print(arr[i] + " ");
			} 
		}
		
		System.out.println();
		//In ra cac so le trong mang
		for(int i=0;i<n;i++) {
			if (arr[i] % 2 != 0) {
			    System.out.print(arr[i] + " ");
			}
		}	
	}
}
