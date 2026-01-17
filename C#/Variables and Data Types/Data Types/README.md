## Lý thuyết
Ở bài trước ta đã biết cách tạo và sử dụng biến có giá trị là số nguyên như:
```
int a;
```
Ở đoạn code này `int` là viết tắt của **integer** có nghĩa là biến `a` sẽ chỉ lưu được các giá trị là số nguyên. Vì vậy ta không thể gán:
```
int a = "Codelearn";
```
Để tạo ra biến lưu được các ký tự như tên, địa chỉ, ta cần khai báo biến với kiểu dữ liệu là `string` thay vì `int` giống như chương trình sau:
```
using System;

namespace Variable {
    class Program {
        static void Main(string[] args) {
            // Khai báo biến name kiểu chuỗi các ký tự và gán giá trị cho name = "Codelearn"
            string name = "Codelearn";
            Console.WriteLine(name);
        }
    }
}
```
Kết quả khi chạy chương trình:
```
Codelearn
```
## Lý thuyết
Để khai báo và gán giá trị cho biến kiểu số thực ta dùng từ khóa `double`:
```
// Khai báo biến a kiểu số thực và gán giá trị cho a = 10.5
double a = 10.5;
```
Ví dụ chương trình tạo và hiển thị biến kiểu số thực ra màn hình:
```
using System;

namespace Variable {
    class Program {
        static void Main(string[] args) {
            double a = 1.5;
            Console.WriteLine("a = " + a);
        }
    }
}
```
Kết quả khi chạy chương trình:
```
a = 1.5
```
Ngoài `double` ra thì trong C# còn một kiểu dữ liệu nữa cũng được dùng để lưu trữ số thực nữa là `float` nhưng trong hầu hết mọi trường hợp ta nên sử dụng kiểu `double`.

Lưu ý: Ta không thể dùng biến kiểu `int` để lưu trữ số thực và kết quả của phép toán giữa 2 số nguyên là một số nguyên. Ví dụ:
```
using System;

namespace Variable {
    class Program {
        static void Main(string[] args) {
            int a = 4;
            int b = 3;
            Console.WriteLine(a / b);
            Console.WriteLine(4 / 3);
        }
    }
}
```
Kết quả khi chạy chương trình:
```
1
1
```
Kết quả sẽ là `1 mà không phải `1.(3)` do cả a và b đều là biến kiểu số nguyên nên kết quả sẽ là một số nguyên. Do đó khi thực hiện các phép toán trong C# ta cần lưu ý tới kiêu dữ liệu. Để chương trình trên hiển thị đúng kết quả ta có thể làm như sau:
```
using System;

namespace Variable {
    class Program {
        static void Main(string[] args) {
            double a = 4;
            double b = 3;
            Console.WriteLine(a / b);
            Console.WriteLine(4.0 / 3);
        }
    }
}
```
Kết quả khi chạy chương trình:
```
1.3333333333333333
1.3333333333333333
```

## Lý thuyết
Kiểu ký tự trong C# là kiểu dữ liệu chỉ lưu trữ được 1 ký tự trong bảng mã UTF-16, ký tự này có thể là một chữ cái `(a, b, c, ... x, y, z)`, một chữ số  `(0, 1, 2,..., 9)`, một phép toán `(+, -, *, /)` hay một ký tự bất kỳ khác `(!, &, ...)`.

Biến kiểu ký tự được khai báo bằng từ khóa `char` (`char` là viết tắt của **character**). Ví dụ chương trình tạo và hiển thị biến kiểu ký tự:
```
using System;

namespace Variable {
    class Program {
        static void Main(string[] args) {
            // Khai báo biến c kiểu ký tự và gán giá trị cho c = ký tự 'x'
            char c = 'x';
            Console.WriteLine(c);
        }
    }
}
```
Kết quả khi chạy chương trình:
```
x
```
