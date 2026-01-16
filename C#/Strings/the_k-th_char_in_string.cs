using System;

namespace String {
    class Program {
        static void Main(string[] args) {
            string s = Console.ReadLine();
            int k = int.Parse(Console.ReadLine());
            Console.WriteLine(s[k - 1]);
        }
    }
}
