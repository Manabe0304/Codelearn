## Bài tập
Bạn hãy tạo ra lớp `ArrayCalculator` trong file `ArrayCalculator.java` với thông tin giống như sau:

![image](https://github.com/user-attachments/assets/8a88eb8c-e364-4c36-b531-f246bc79199d)

![image](https://github.com/user-attachments/assets/84fb6310-0958-448f-8625-89760e8c753d)

Giải thích:

- `ArrayCalculator` là lớp không có thuộc tính nào.
- `sumOfArray(arr: int[])` là phương thức `static` có đầu vào là mảng các số nguyên và trả về tổng của mảng này.
- `sumOfArray(arr: double[])` là phương thức `static` có đầu vào là mảng các số thực và trả về tổng của mảng này.
- `maxOfArray(arr: int[])` và `maxOfArray(arr: double[])` là hai phương thức `static` được nạp chồng, hai phương thức này trả về giá trị lớn nhất trong mảng `arr`.
- `minOfArray(arr: int[])` và `minOfArray(arr: double[])` là hai phương thức `static` được nạp chồng, hai phương thức này trả về giá trị nhỏ nhất trong mảng `arr`.

Chương trình để test lớp `ArrayCalculator`:
```
class Entry {
	public static void main(String[] args) {
		int[] arr1 = new int[] {3, 4, 2};
		double[] arr2 = new double[] {1.3, 4.2, 6.7};
		System.out.println(ArrayCalculator.sumOfArray(arr1));
		System.out.println(ArrayCalculator.sumOfArray(arr2));

		System.out.println(ArrayCalculator.minOfArray(arr1));
		System.out.println(ArrayCalculator.minOfArray(arr2));
		System.out.println(ArrayCalculator.maxOfArray(arr1));
		System.out.println(ArrayCalculator.maxOfArray(arr2));
	}
}
```
Kết quả khi chạy chương trình:
```
9
12.2
2
1.3
4
6.7
```
