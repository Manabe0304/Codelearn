import java.util.Scanner;

public class Statement {
	public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
		int a = sc.nextInt();
		int b = sc.nextInt();
		if (a >= b) {
			System.out.println("a is greater than or equal to b");
		} else {
			System.out.println("a is smaller than b");
		}

		if (a != 0 && b != 0) {
	                System.out.println("a is not equal to 0 and b is not equal to 0");
		} else {
	    	        System.out.println("a is equal to 0 or b is equal to 0");
	        }
    }
}
