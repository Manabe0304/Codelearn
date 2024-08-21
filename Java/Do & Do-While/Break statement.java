//Cach 1
import java.util.Scanner;

public class Loop {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int k = sc.nextInt();
        for (int i = 1; i <= n; i++) {
            if (i == k) {
                break;
            }
            System.out.print(i + " ");
        }
    }
}

//Cach 2
import java.util.Scanner;

public class Loop {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);        
        int n = sc.nextInt();
        int k = sc.nextInt();
        int i = 1;
        
        while (i <= n) {
            if (i == k) {
                break;
            }
            System.out.print(i + " ");
            i++; // Increment i manually
        }
    }
}
