## Bài tập
Bạn hãy tạo ra lớp `Math` với thông tin giống như sau:

![image](https://github.com/user-attachments/assets/1954cf5c-0145-4738-8b6a-6869443844f0)

Trong sơ đồ lớp thì các phương thức và thuộc tính được gạch dưới chính là các phương thức `static` và thuộc tính `static`.

Giải thích lớp `Math`:

- `PI` là biến static có giá trị mặc định là `3.14`
- `abs(x: int)` là hàm trả về giá trị tuyệt đối của số `x`.
- `add(x: int, y: int)` là hàm trả về tổng 2 số `x` và `y`.
- `subtract(x: int, y: int)` là hàm trả về hiệu 2 số `x` và `y`.
- `min(x: int, y: int)` là hàm trả về số nhỏ nhất trong 2 số.
- `max(x: int, y: int)` là hàm trả về số lớn nhất trong 2 số.
- `pow(x: int, y: int)` là hàm trả về `x^y`.

Chương trình để test lớp Math:
```
class Entry {
	public static void main(String[] args) {
		System.out.println(Math.PI);
		System.out.println(Math.abs(-2));
		System.out.println(Math.add(2, 3));
		System.out.println(Math.subtract(2, 3));
		System.out.println(Math.min(2, 3));
		System.out.println(Math.max(2, 3));
		System.out.println(Math.pow(2, 3));
	}
}
```
Kết quả khi chạy chương trình:
```
3.14
2
5
-1
2
3
8
```
