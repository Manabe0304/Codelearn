## Lý thuyết
Trong các chương trước ta đã biết cách sử dụng các phương thức có sẵn như phương thức `ToUpper(), ToLower(), IndexOf(), ...` qua bài này ta sẽ hiểu được cách tạo và sử dụng phương thức trong C#.

Phương thức được hiểu đơn giản là 1 đoạn code, khi ta gọi phương thức thì thực ra là ta đang gọi tới đoạn code này. Cú pháp để khai báo một phương thức đơn giản sẽ giống như sau:
```
public static void <tên_phương_thức>(){
	// Các đoạn code bên trong phương thức
}
```
Ví dụ về phương thức hiển thị ra màn hình các số từ 1 tới 10:
```
using System;

namespace Method {
    class Program {
        public static void show() {
            for (int i = 1; i <= 10; i++) {
                Console.Write(i + " ");
            }
            Console.WriteLine();
        }
        static void Main(string[] args) {
            show();
            show();
            show();
        }
    }
}
```
Kết quả khi chạy chương trình:
```
1 2 3 4 5 6 7 8 9 10 
1 2 3 4 5 6 7 8 9 10 
1 2 3 4 5 6 7 8 9 10
```
Có thể thấy cách tạo và sử dụng phương thức rất đơn giản, chương trình trên hiển thị ra màn hình 3 lần các số từ 1 tới 10 do gọi tới phương thức `show()` 3 lần.

Ngoài ra ta cũng có thể truyền các biến vào phương thức và trả về kết quả bằng từ khóa `return <giá_trị_trả_về>;`. Ví dụ về phương thức trả về tổng của một mảng các số nguyên:
```
using System;

namespace Method {
    class Program {
        public static int SumOfArray(int[] arr) {
            int answer = 0;
            // arr.Length chính là lấy ra độ dài của mảng
            for (int i = 0; i < arr.Length; i++) {
                answer += arr[i];
            }
            return answer;
        }
        static void Main(string[] args) {
            int[] arr1 = { 1, 2, 3 };
            int[] arr2 = { 2, 1, 7 };
            int[] arr3 = { 3, 2, 2 };
            Console.WriteLine(SumOfArray(arr1));
            Console.WriteLine(SumOfArray(arr2));
            Console.WriteLine(SumOfArray(arr3));
        }
    }
}
```
Kết quả khi chạy chương trình:
```
6
10
7
```
Trong ví dụ trên khi ta gọi tới `SumOfArray(arr1);` thì biến `arr1` trong phương thức `Main()` sẽ được truyền vào biến `arr` trong phương thức `SumOfArray().`

Lưu ý: nếu phương thức có giá trị trả về thì ta cần khai báo phương thức với kiểu dữ liệu cần trả về như `int, string, double, ...` thay vì `void` vì phương thức `void` là phương thức không có giá trị trả về (ta hãy hiểu đơn giản phương thức `void `là phương thức chỉ thực thi 1 đoạn code, thực thi xong không cần có kết quả). 

Ví dụ khác về phương thức trả về số các số chẵn trong mảng:
```
using System;

namespace Method {
    class Program {
        public static int CountEven(int[] arr) {
            int answer = 0;
            // arr.length chính là lấy ra độ dài của mảng
            for (int i = 0; i < arr.Length; i++) {
                if (arr[i] % 2 == 0) {
                    answer++;
                }
            }
            return answer;
        }

        static void Main(string[] args) {
            int[] arr1 = { 1, 2, 3 };
            int[] arr2 = { 2, 2, 7, 3 };
            int[] arr3 = { 8, 2, 2, 5 };
            Console.WriteLine(CountEven(arr1));
            Console.WriteLine(CountEven(arr2));
            Console.WriteLine(CountEven(arr3));
        }
    }
}
```
Kết quả khi chạy chương trình:
```
1
2
3
```
Việc tách chương trình ra thành các phương thức nhỏ thay vì viết tất cả các đoạn code trong phương thức `Main()` sẽ giúp ta tái sử dụng lại được code, làm cho chương trình trở nên đơn giản, dễ hiểu hơn.
