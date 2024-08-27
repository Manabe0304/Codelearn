//Syntax
public static void <method_name>(){
	// code to be executed
}

//Display 1 to 10
public class Method {
	public static void show() {
		for (int i = 1; i <= 10; i++) {
			System.out.print(i + " ");
		}
		System.out.println();
	}

	public static void main(String[] args) {
		show();
	}
}

//Sum of array
import java.util.Scanner;

public class Method {
	public static int sumOfArray(int[] arr) {
		int answer = 0;
		// arr.length is used to find the length of the given array
		for (int i = 0; i < arr.length; i++) {
			answer += arr[i];
		}
		return answer;
	}

	public static void main(String[] args) {
		int []arr1 = {1, 2, 3};
		int []arr2 = {2, 1, 7};
		int []arr3 = {3, 2, 2};
		System.out.println(sumOfArray(arr1));
		System.out.println(sumOfArray(arr2));
		System.out.println(sumOfArray(arr3));
	}
}

//Count even number
import java.util.Scanner;

public class Method {
	public static int countEven(int[] arr) {
		int answer = 0;
		// arr.length is the length of array
		for (int i = 0; i < arr.length; i++) {
			if(arr[i] % 2 == 0) {
				answer++;
			}
		}
		return answer;
	}

	public static void main(String[] args) {
		int []arr1 = {1, 2, 3};
		int []arr2 = {2, 2, 7, 3};
		int []arr3 = {8, 2, 2, 5};
		System.out.println(countEven(arr1));
		System.out.println(countEven(arr2));
		System.out.println(countEven(arr3));
	}
}
