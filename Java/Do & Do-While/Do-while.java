import java.util.Scanner;

public class Loop {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
	int n = sc.nextInt();
	int i = 1;
	do {
		System.out.print(i + " ");
		i++;
	} while (i <= n);
		
        System.out.println();
        i = 1;
        do {
	    	if(i % 10 == 0) {
	    	System.out.print(i + " ");
	    	}
	    	i++;
	} while (i <= n);
    }
}
