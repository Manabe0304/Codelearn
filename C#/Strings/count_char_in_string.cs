using System;

namespace String {
    class Program {
        static void Main(string[] args) {
            string s = Console.ReadLine();
            int upper = 0;
            int lower = 0;
            int number = 0;
            for (int i = 0; i < s.Length; i++) {
                if (s[i] >= 'A' && s[i] <= 'Z') {
                    upper++;
                }
                if (s[i] >= 'a' && s[i] <= 'z') {
                    lower++;
                }
                if (s[i] >= '0' && s[i] <= '9') {
                    number++;
                }
            }
            Console.WriteLine("Upperline: " + upper);
            Console.WriteLine("Lowerline: "+ lower);
            Console.WriteLine("Number: " + number);
		}
    }
}
