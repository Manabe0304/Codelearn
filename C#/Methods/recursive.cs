using System;

namespace Method {
    class Program {
        public static int Factorial(int n) {
            if(n == 1) {
                return 1;
            }
            return n * Factorial(n - 1);
        }

        static void Main(string[] args) {
            int n = int.Parse(Console.ReadLine());
            Console.WriteLine(Factorial(n));
        }
    }
}
