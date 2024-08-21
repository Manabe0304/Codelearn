import java.util.Scanner;

public class SelectionStatements {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int x = scanner.nextInt();
        int y = scanner.nextInt();
        
        String t1 = "This point lies in the First quadrant";
        String t2 = "This point lies in the Second quadrant";
        String t3 = "This point lies in the Third quadrant";
        String t4 = "This point lies in the Fourth quadrant";

        boolean d1 = x > 0 && y > 0;
        boolean d2 = x < 0 && y > 0;
        boolean d3 = x < 0 && y < 0;

        System.out.println(d1 ? t1 : (d2 ? t2 : ( d3 ? t3 : t4)));
    }
}
