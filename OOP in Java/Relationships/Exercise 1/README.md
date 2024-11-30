## Bài tập
Bạn hãy tạo ra lớp Point và Line giống trong sơ đồ lớp sau:

![image](https://github.com/user-attachments/assets/ec310207-8955-434a-bdf6-120b962bb408)

Giải thích:

Đây là sơ đồ mô tả mối quan hệ giữa lớp `Line` (đoạn thẳng) và lớp `Point` (điểm).

### Lớp Point

- Đây là lớp dùng để lưu thông tin về một điểm trong hệ tọa độ hai chiều.
- `x` và `y` là 2 thuộc tính chỉ hoành độ và tung độ của một điểm.
- `Point(x: int, y: int)` là phương thức khởi tạo có tham số dùng để khởi tạo giá trị cho thuộc tính `x` và `y`.
- `setX(), getX(), setY(), getY()` là các setter và getter.
### Lớp Line

- Đây là lớp dùng để lưu thông tin về một đoạn thẳng trong hệ tọa độ hai chiều.
- `begin` và `end` là hai thuộc tính chỉ điểm bắt đầu và điểm kết thúc của đoạn thẳng, hai thuộc tính này là đối tượng của lớp Point.
- `Line(begin: Point, end: Point)` và `Line(x1: int, y1: int, x2: int, y2: int)` là phương thức khởi tạo dùng để khởi tạo giá trị cho các thuộc tính.
- `setBegin(), getBegin(), setEnd(), getEnd()` là các setter và getter.
- `getLength()` là phương thức trả về độ dài đoạn thẳng. Ví dụ nếu thuộc tính `begin = (1, 1), end = (2, 2)` thì phương thức `getLength()` sẽ trả về `1.4142135623730951`.

Chương trình test thử hai lớp trên:
```
public class Entry {
	public static void main(String[] args) {
		Point begin = new Point(1, 1);
		Point end = new Point(2, 2);
		Line line1 = new Line(begin, end);
		System.out.println(line1.getLength());

		Line line2 = new Line(2, 3, 5, 4);
		System.out.println(line2.getLength());
	}
}
```
Kết quả khi chạy chương trình:
```
1.4142135623730951
3.1622776601683795
```
Lưu ý: bạn không cần quan tâm tới số các chữ số đằng sau dấu phẩy vì hệ thống chấp nhận sai số nhỏ hơn `0.000001`
