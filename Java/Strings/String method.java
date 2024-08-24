// The length method
import java.util.Scanner;

public class Array {
	public static void main(String[] args) {
		String s = "Code";
		System.out.print(s.length());
	}
}

// The charAt method
import java.util.Scanner;

public class Array {
	public static void main(String[] args) {
		String s = "Code";
		System.out.print(s.charAt(2));
	}
}

// The replace method
import java.util.Scanner;

public class Array {
	public static void main(String[] args) {
		System.out.println("Cod3l3arn".replace('3', 'e'));
		System.out.println("Blackcat".replace("Black", "White"));
	}
}

// The toUpperCase/toLowerCase method
import java.util.Scanner;

public class Array {
	public static void main(String[] args) {
		String s = "CoDeLeArN";
		System.out.println(s.toUpperCase());
		System.out.println(s.toLowerCase());
	}
}

// The indexOf method
import java.util.Scanner;

public class Array {
	public static void main(String[] args) {
		String s = "Codelearn";
		System.out.println(s.indexOf("learn"));
		System.out.println(s.indexOf("black"));
	}
}

// The startsWith and endsWith method
import java.util.Scanner;

public class Array {
	public static void main(String[] args) {
		String name = "Codelearn";
		System.out.println(name.startsWith("Code"));
		System.out.println(name.startsWith("abc"));
		System.out.println(name.endsWith("rn"));
		System.out.println(name.endsWith("z"));
	}
}

// The split method
import java.util.Scanner;

public class Array {
	public static void main(String[] args) {
		String s = "Welcome to codelearn!";
		String[] words = s.split(" ");
		for(String word:words) {
			System.out.println(word);
		}
	}
}

// The substring method
import java.util.Scanner;

public class Array {
	public static void main(String[] args) {
		String name = "Codelearn";
		System.out.println(name.substring(0, 2));
		System.out.println(name.substring(0, 4));
		System.out.println(name.substring(4));
	}
}
