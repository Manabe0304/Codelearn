## Bài tập
Bạn hãy viết chương trình tạo ra `interface IShape` và hai lớp `Rectangle`, `Circle` giống như sau:

![image](https://github.com/user-attachments/assets/4792e7e6-aca7-4ab0-b525-9aceaf7ec35a)

Giải thích:

### interface IShape

- `getArea()` và `getPerimeter()` là hai phương thức trừu tượng dùng để tính chu vi và diện tích của đối tượng.
### Lớp Rectangle

- `length và width là 2 thuộc tính chỉ chiều dài và chiều rộng của hình chữ nhật.
- `rectangle(length: double, width: double)` là phương thức khởi tạo dùng để khởi tạo giá trị cho các thuộc tính.
- `getArea()` và `getPerimeter()` là hai phương thức được ghi đè từ `interface IShape`, hai phương thức này lần lượt trả về diện tích và chu vi của hình chữ nhật.
### Lớp Circle

- `radius` là thuộc tính chỉ bán kính của hình tròn.
- `Circle(radius: double)` phương thức khởi tạo dùng để gán giá trị cho thuộc tính `radius`.
- `getArea()` và `getPerimeter()` là hai phương thức được ghi đè từ `interface IShape`, hai phương thức này lần lượt trả về diện tích và chu vi của hình tròn (`π = 3.14`).
Chương tình để test kết quả:
```
public class Entry {
	public static void main(String[] args) {
		IShape[] shapes = new IShape[3];
		shapes[0] = new Rectangle(3.4, 5.3);
		shapes[1] = new Circle(5.5);
		shapes[2] = new Rectangle(7.4, 4.3);
		for (int i = 0; i < 3; i++) {
			System.out.println("Area of shapes[" + i + "]: " + shapes[i].getArea());
			System.out.println("Perimeter of shapes[" + i + "]: " + shapes[i].getPerimeter());
		}
	}
}
```
Kết quả khi chạy chương trình:
```
Area of shapes[0]: 18.02
Perimeter of shapes[0]: 17.4
Area of shapes[1]: 94.985
Perimeter of shapes[1]: 34.54
Area of shapes[2]: 31.82
Perimeter of shapes[2]: 23.4
```
