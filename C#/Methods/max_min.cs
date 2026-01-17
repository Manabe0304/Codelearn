using System;

namespace Method {
    class Program {
        public static int Max3(int a, int b, int c) {
            if (a >= b && a >= c) {
                return a;
            }
            if (b >= c) {
                return b;
            }
            return c;
        }
        
        public static int Min3(int a, int b, int c) {
            if (a <= b && a <= c) {
                return a;
            }
            if (b <= c) {
               return b; 
            }
            return c;
        }

        static void Main(string[] args) {
            int a = int.Parse(Console.ReadLine());
            int b = int.Parse(Console.ReadLine());
            int c = int.Parse(Console.ReadLine());

            Console.WriteLine("Maximum: " + Max3(a, b, c));
            Console.WriteLine("Minimum: " + Min3(a, b, c));
        }
    }
}
