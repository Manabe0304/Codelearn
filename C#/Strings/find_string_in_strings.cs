using System;

namespace String {
    class Program {
        static void Main(string[] args) {
            string s1 = Console.ReadLine();
            string s2 = Console.ReadLine();
            s1 = s1.ToLower();
            s2 = s2.ToLower();
            Console.WriteLine(s1.IndexOf(s2));
        }
    }
}
