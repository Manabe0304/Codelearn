using System;

namespace String {
    class Program {
        static void Main(string[] args) {
			string s = Console.ReadLine();
			char c = char.Parse(Console.ReadLine());
			int answer = 0;
			for (int i = 0; i < s.Length; i++) {
				if (s[i] == c) {
					answer++;
				}
			}
			Console.WriteLine(answer);
		}
    }
}
