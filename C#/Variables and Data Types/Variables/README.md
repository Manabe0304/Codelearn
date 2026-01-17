## Lý thuyết
Khái niệm biến trong lập trình cũng giống khái niệm biến trong toán học, biến được dùng để đại diện cho một giá trị nào đó.

Để khai báo biến kiểu số nguyên trong C# ta sử dụng từ khóa `int` (`int` và viết tắt của `integer`) giống như sau:
```
int tên_biến;
```
Ví dụ về chương trình tạo và sử dụng biến kiểu số nguyên:
```
using System;

namespace Variable {
    class Program {
        static void Main(string[] args) {
            // Khai báo biến a kiểu số nguyên
            int a;
            // Gán giá trị cho a = 5
            a = 5;
            // Hiển thị ra màn hình giá trị của biến a
            Console.WriteLine("a = " + a);
        }
    }
}
```
Kết quả khi chạy chương trình:
```
a = 5
```
Ta còn có thể vừa khai báo vừa gán giá trị cho biến trong 1 câu lệnh giống như chương trình sau:
```
using System;

namespace Variable {
    class Program {
        static void Main(string[] args) {
            // Khai báo biến a kiểu số nguyên và gán giá trị cho a = 438
            int a = 438;
            // Khai báo biến b kiểu số nguyên và gán giá trị cho b = 238
            int b = 238;
            // Hiển thị ra màn hình hiệu của a và b
            Console.WriteLine("a - b = " + (a - b));
        }
    }
}
```
Kết quả khi chạy chương trình:
```
a - b = 200
```
Ngoài ra, ta cũng có thể khai báo và gán giá trị cho nhiều biến trong 1 câu lệnh như giống như chương trình sau:
```
using System;

namespace Variable {
    class Program {
        static void Main(string[] args) {
            int a = 438, b = 238;
            Console.WriteLine("a - b = " + (a - b));
        }
    }
}
```
Khi đặt tên cho biến ta cần tuân theo 1 số nguyên tắc sau:

- Tên biến có thể có chữ cái, chữ số và dấu gạch dưới nhưng ký tự đầu tiên của tên biến bắt buộc phải là dấu gạch dưới hoặc chữ cái.
- Tên biến không được có khoảng trắng.
- Tên biến không được trùng với các từ khóa như `int, float, double, class, ...`
Một số tên biến hợp lệ:
```
int a;
int _a;
int a10_;
```
Một số tên biến không hợp lệ:
```
int 10a;
int a 10;
int int;
```
