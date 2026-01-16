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

## Lý thuyết
Lớp `String` (ta cũng có thể hiểu là kiểu dữ liệu `string`) đã cung cấp sẵn khá nhiều phương thức cho việc xử lý xâu, sau đây là một số phương thức hay được sử dụng:

### 1. Phương thức Replace

Phương thức này dùng để thay thế các chuỗi/ký tự được tìm thấy thành chuỗi/ký tự khác. Ví dụ:
```
using System;

namespace String {
    class Program {
        static void Main(string[] args) {
            Console.WriteLine("Cod3l3arn".Replace('3', 'e'));
            Console.WriteLine("Blackcat".Replace("Black", "White"));
        }
    }
}
```
Kết quả khi chạy chương trình:
```
Codelearn
Whitecat
```
### 2. Phương thức ToUpper/ToLower

Đây là hai phương thức dùng để chuyển các ký tự của một xâu từ in thường về in hoa và ngược lại. Ví dụ:
```
using System;

namespace String {
    class Program {
        static void Main(string[] args) {
            string s = "CoDeLeArN";
            Console.WriteLine(s.ToUpper());
            Console.WriteLine(s.ToLower());
        }
    }
}
```
Kết quả khi chạy chương trình:
```
CODELEARN
codelearn
```
### 3. Phương thức IndexOf

Phương thức này trả về vị trí xuất hiện đầu tiên của một `string` trong `string` khác, nếu không tìm thấy thì trả về `-1`. Ví dụ:
```
using System;

namespace String {
    class Program {
        static void Main(string[] args) {
            string s = "Codelearn";
            Console.WriteLine(s.IndexOf("learn"));
            Console.WriteLine(s.IndexOf("black"));
        }
    }
}
```
Kết quả khi chạy chương trình:
```
4
-1
```
### 4. Phương thức StartsWith và EndsWith

Phương thức này dùng để kiểm tra một xâu có bắt đầu hoặc kết thúc băng một xâu khác không. Ví dụ:
```
using System;

namespace String {
    class Program {
        static void Main(string[] args) {
            string name = "Codelearn";
            Console.WriteLine(name.StartsWith("Code"));
            Console.WriteLine(name.StartsWith("abc"));
            Console.WriteLine(name.EndsWith("rn"));
            Console.WriteLine(name.EndsWith("z"));
        }
    }
}
```
Kết quả khi chạy chương trình:
```
true
false
true
false
```
### 5. Phương thức Split

Phương thức này dùng để tách một xâu ra thành mảng các xâu dựa trên một ký tự cho trước. Ví dụ:
```
using System;

namespace String {
    class Program {
        static void Main(string[] args) {
            string s = "Welcome to Codelearn!";
            string[] words = s.Split(' ');
            for (int i = 0; i < words.Length; i++) {
                Console.WriteLine(words[i]);
            }
        }
    }
}
```
Kết quả khi chạy chương trình:
```
Welcome
to
Codelearn!
```
### 6. Phương thức Substring

Đây là phương thức dùng để lấy ra một xâu con dựa trên chỉ số bắt đầu và chỉ số kết thúc của một xâu khác. Ví dụ:
```
using System;

namespace String {
    class Program {
        static void Main(string[] args) {
            string name = "Codelearn";
            Console.WriteLine(name.Substring(0, 2));
            Console.WriteLine(name.Substring(0, 4));
            Console.WriteLine(name.Substring(4));
        }
    }
}
```
Kết quả khi chạy chương trình:
```
Co
Code
learn
```

## Lý thuyết
Như ta đã được học về kiểu dữ liệu ký tự, kiểu ký tự bản chất cũng là một kiểu số nguyên, do đó ta có thể duyệt và hiển thị các ký tự từ `'0' -> '9'`, từ `'a' -> 'z'` bằng vòng lặp giống như sau:
```
using System;

namespace String {
    class Program {
        static void Main(string[] args) {
			for (char c = '0'; c <= '9'; c++) {
				Console.Write(c);
			}
			Console.WriteLine();
			for (char c = 'a'; c <= 'z'; c++) {
				Console.Write(c);
			}
		}
    }
}
```
Kết quả khi chạy chương trình:
```
0123456789
abcdefghijklmnopqrstuvwxyz
```
Do đó ta có thể lặp qua các ký tự số từ `'0'` tới `'9'` và sử dụng phương thức `Replace()` để loại bỏ các số.
