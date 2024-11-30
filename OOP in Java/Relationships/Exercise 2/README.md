## Bài tập
Bạn hãy tạo ra lớp `Point` và `Triangle` giống trong sơ đồ lơp sau:

![image](https://github.com/user-attachments/assets/45ece090-5b6e-4bb9-a744-70b507c65ab8)

Giải thích:

### Lớp Point

- Đây là lớp dùng để lưu thông tin về một điểm trong hệ tọa độ hai chiều.
- `x` và `y` là 2 thuộc tính chỉ tung độ và hoành độ của một điểm.
- `Point(x: int, y: int)` là phương thức khởi tạo có tham số dùng để khởi tạo giá trị cho thuộc tính `x` và `y`.
- `setX(), getX(), setY(), getY()` là các setter và getter.
### Lớp Triangle

- Đây là lớp lưu thông tin về hình tam giác.
- `vertice1, vertice2, vertice3` là 3 thuộc tính chỉ 3 đỉnh của tam giác.
- `Triangle(vertice1: Point, vertice2: Point, vertice3: Point)` là phương thức khởi tạo có tham số dùng để khởi tạo giá trị cho 3 đỉnh trong tam giác.
- `Triangle(x1: int, y1: int, x2: int, y2: int, x3: int, y3: int)` là phương thức khởi tạo có tham số dùng để khởi tạo giá trị cho 3 đỉnh trong tam giác.
- `getPerimeter()` là phương thức trả về chu vi của tam giác. Ví dụ nếu `vertice1 = (1, 3), vertice2 = (2, 3), vertice3 = (4, 2)` thì phương thức `getPerimeter()` sẽ trả về `8.48528137423857`.

Chương trình để test thử lớp `Triangle`:
```
public class Entry {
	public static void main(String[] args) {
		Point vertice1 = new Point(1, 3);
		Point vertice2 = new Point(2, 3);
		Point vertice3 = new Point(4, 2);
		Triangle triangle1 = new Triangle(vertice1, vertice2, vertice3);
		Triangle triangle2 = new Triangle(4, 5, 2, 6, 3, 7);
		System.out.println(triangle1.getPerimeter());
		System.out.println(triangle2.getPerimeter());
	}
}
```
Kết quả khi chạy chương trình:
```
6.39834563766817
5.8863495173726745
```
Lưu ý: bạn không cần quan tâm tới số các chữ số đằng sau dấu phẩy vì hệ thống chấp nhận sai số nhỏ hơn `0.000001`
