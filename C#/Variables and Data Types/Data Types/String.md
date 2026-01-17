## Lý thuyết
Ở bài trước bạn đã biết cách tạo và sử dụng biến có giá trị là số nguyên như:
```
int a;
```
Ở đoạn code này `int` là viết tắt của **integer** có nghĩa là biến `a` sẽ chỉ lưu được các giá trị là số nguyên. Vì vậy bạn không thể gán:
```
int a = "Codelearn";
```
Để tạo ra biến lưu được các ký tự như tên, địa chỉ, bạn cần khai báo biến với kiểu dữ liệu là `string` thay vì `int` giống như chương trình sau:
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
