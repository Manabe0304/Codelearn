## Lý thuyết
`string` bản chất cũng giống như một mảng các ký tự, do đó ta cũng có thể dùng vòng lặp và duyệt qua các ký tự của `string` giống như sau:
```
using System;

namespace String {
	class Program {
		static void Main(string[] args) {
			string s = "Codelearn";
			// s.Length là thuộc tính chỉ độ dài của chuỗi s
			for(int i = 0; i < s.Length; i++) {
				Console.WriteLine(s[i]);
			}
		}
	}
}
```
Sẽ hiển thị ra màn hình:
```
C
o
d
e
l
e
a
r
n
```
Trong ví dụ trên `s.Length` chính là lấy ra độ dài của xâu `s`. Do `string` cũng là một mảng, nên để lấy ra ký tự thứ `k` của xâu `s` ta có thể dùng `s[k - 1];`
