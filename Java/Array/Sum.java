import java.util.Scanner;

public class Array {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int n = sc.nextInt();
		int[] arr = new int[n];

		for (int i = 0; i < n; i++) {
			arr[i] = sc.nextInt();
		}
		//Tong cua so hang dau va cuoi cua chuoi
        System.out.println("Sum of the first and last elements: " + (arr[0] + arr[n - 1]));
		
		//Tong cua cac so hang trong chuoi
        int sum = 0;
        for (int i = 0; i < n; i++) {
            sum += arr[i];
        }
        System.out.println("Sum of all elements: " + sum);
        
        //Dao nguoc cac so hang trong chuoi
        System.out.print("Array in reverse order: ");
        for (int i = n - 1; i >= 0; i--) {
            System.out.print(arr[i] + " ");
        }
	}
}
