//Phuong trinh de quy
public static void recurse() {
    ...
    recurse();
    ...
}

//Sum of numbers from 1 to n
import java.util.Scanner;

public class Method {
	public static int sum(int n) {
		if (n == 0) {
			return 0;
		}
		return n + sum(n - 1);
	}

	public static void main(String[] args) {
		System.out.print(sum(10));
	}
}

//Calculate n!
import java.util.Scanner;

public class Method {
	public static int factorial(int n) {
	    if (n == 1) return 1;
	    return n * factorial(n - 1);
	}


	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int n = sc.nextInt();
		System.out.print(factorial(n));
	}
}
