// Tim vi tri dau tien cua xau s2 trong s1 (Bat ke la chu hoa hoac chu thuong)
import java.util.Scanner;

public class Array {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String s1 = sc.next();
		String s2 = sc.next();
		s1 = s1.toLowerCase();
		s2 = s2.toLowerCase();
		System.out.print(s1.indexOf(s2));
	}
}
