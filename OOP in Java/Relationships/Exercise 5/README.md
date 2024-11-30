## Bài tập
Bạn hãy tạo ra lớp `Polyline` và lớp `Point` giống như trong sơ đồ lớp sau:

![image](https://github.com/user-attachments/assets/d0073625-766c-47b0-8740-bcf7b82c6497)

Để dễ hình dung khi nhìn vào sơ đồ lớp, bạn cần hiểu PolyLine là gì. PolyLine là tập các đoạn thẳng được tạo ra bằng cách nối 2 điểm liên tiếp lại với nhau. Ví dụ, một PolyLine có tọa độ các điểm là [(0, 1), (1, 2), (1, 0), (2, 3), (3, 1), (4, 2)] sẽ trông như sau.

![image](https://github.com/user-attachments/assets/80b7e1c1-da7b-41ad-a5d6-24288960e535)

Giải thích sơ đồ lớp:

### Lớp Point

- Đây lớp dùng để lưu thông tin về một điểm trong hệ tọa độ hai chiều.
- `x` và `y` là 2 thuộc tính chỉ tung độ và hoành độ của một điểm.
- `Point(x: int, y: int)` là phương thức khởi tạo có tham số dùng để khởi tạo giá trị cho thuộc tính `x` và `y`.
- `setX(), getX(), setY(), getY()` là các setter và getter.
### Lớp PolyLine

- `points` là thuộc tính lưu thông tin về các điểm trong PolyLine, thuộc tính này có kiểu dữ liệu là `List`.
- `PolyLine()` là phương thức khởi tạo không tham số dùng để khởi tạo một `ArrayList` rỗng cho thuộc tính `points`.
- `PolyLine(points: List<Point)` là phương thức khởi tạo có tham số dùng để khởi tạo giá trị cho thuộc tính `ponits`.
- `appendPoint(point: Point)` và `appendPoint(x: int, y: int)` là phương thức dùng để thêm một điểm vào cuối thuộc tính `points`.
- `getLength()` là phương thức dùng để lấy ra độ dài của PolyLine. Ví dụ nếu đối tượng PolyLine có thuộc tính `points = [(1, 1), (2, 3), (3, 0), (4, 2)]` giống như bên dưới:
![image](https://github.com/user-attachments/assets/3296d19d-d8fb-46a9-960c-a7df53d336dd)

thì phương thức `getLength()` sẽ trả về `7.63441361516796`.

Chương trình để test lớp PolyLine:
```
public class Entry {
	public static void main(String[] args) {
		PolyLine polyLine = new PolyLine();
		polyLine.appendPoint(new Point(1, 1));
		polyLine.appendPoint(new Point(2, 3));
		polyLine.appendPoint(3, 0);
		polyLine.appendPoint(4, 2);
		System.out.println(polyLine.getLength());
	}
}
```
Kết quả khi chạy chương trình:
```
7.63441361516796
```
Lưu ý: bạn không cần quan tâm tới số các chữ số đằng sau dấu phẩy vì hệ thống chấp nhận sai số nhỏ hơn `0.000001`
