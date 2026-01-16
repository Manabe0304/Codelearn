using System;

namespace String {
    class Program {
        static void Main(string[] args) {
			string s = Console.ReadLine();
			char c = char.Parse(Console.ReadLine());
			int answer = -1;
			for (int i = 0; i < s.Length; i++) {
				if (s[i] == c) {
					/*
					 * Gọi lệnh break để dừng vòng lặp do đã tìm thấy vị trí đầu tiên mà ký tự c
					 * xuất hiện. Nếu không có lệnh break thì kết quả của chương trình sẽ là vị trí
					 * cuối cùng mà ký tự c xuất hiện.
					 */
					answer = i;
					break;
				}
			}
			Console.WriteLine(answer);
		}
    }
}
