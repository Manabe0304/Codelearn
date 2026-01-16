using System;

namespace String {
    class Program {
        static void Main(string[] args) {
			string s = Console.ReadLine();
            for (int i = s.Length - 1; i >= 0; i--) {
                Console.Write(s[i]);
            }
		}
    }
}
