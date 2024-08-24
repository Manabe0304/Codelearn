import java.util.Scanner;

public class Array {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String s = sc.next();
		String s1 = s; 
		String s2 = s; 
		for(char c = '0'; c <= '9';c++) {
			s1 = s1.replace(c + "", "");
		}
		System.out.println(s1);
		
		for(char c = 'a'; c <= 'z'; c++) {
			s2 = s2.replace(c + "", "");
		}
        for (char c = 'A'; c <= 'Z'; c++) {
            s2 = s2.replace(c + "", ""); 
        }    
		System.out.println(s2);
		sc.close();
	}
}
