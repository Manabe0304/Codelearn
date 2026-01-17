using System;

namespace Method {
    class Program {
        public static int SumOdd(int n) {
            if (n == 1) return 1;
            if (n % 2 == 0) {
                return SumOdd(n - 1);
	        } else {
                return n + SumOdd(n - 1);
	        }
        }
        
        public static int SumEven(int n) {
            if (n == 0) return 0;
            if (n % 2 == 0) {
                return n + SumEven(n - 1);
	        } else {
                return SumEven(n - 1);
	        }
        }

        static void Main(string[] args) {
            int n = int.Parse(Console.ReadLine());
            Console.WriteLine("Sum of Odds: " + SumOdd(n));
            Console.WriteLine("Sum of Evens: " + SumEven(n));
        }
    }
}
