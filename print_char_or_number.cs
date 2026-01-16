using System;

namespace String {
    class Program {
        static void Main(string[] args) {
            string s = Console.ReadLine();
            string n = Console.ReadLine();
            for(char c = '0'; c <= '9'; c++) {
                s = s.Replace(c + "", "");
            }
            Console.WriteLine(s);
            
            for(char c = 'a'; c <= 'z'; c++) {
                n = n.Replace(c + "", "");
            }
            Console.WriteLine(n);
		}
    }
}
