## Bài tập
Bạn hãy tạo ra lớp `Date` trong file `Date.java` với thông tin giống như sau:

![image](https://github.com/user-attachments/assets/32f5a8c9-1c5c-440f-ad10-4fd261c8565b)

Giải thích:

- `day, month, year` là các thuộc tính chỉ ngày, tháng, năm của đối tượng `Date`.
- `Date(day: int, month: int, year: int)` là phương thức khởi tạo có tham số dùng để khởi tạo giá trị cho các thuộc tính.
- `setDate(day: int, month: int, year: int)` là phương thức dùng để thay đổi giá trị cho các thuộc tính.
- `display()` là phương thức dùng để hiển thị thông tin về ngày của đối tượng theo định dạng `"dd/MM/yyyy"`. Ví dụ:
  + Nếu `day = 1, month = 7, year = 1997` thì khi gọi phương thức `display()` màn hình sẽ hiển thị ra `"01/07/1997"`
  + Nếu `day = 8, month = 12, year = 2003` thì khi gọi phương thức `display()` màn hình sẽ hiển thị ra `"08/12/1997"`
- Các phương thức khác là các setter và getter bạn đã biết.
- Để đơn giản, bạn không cần quan tâm tới ngày, tháng, năm của lớp `Date` có hợp lệ hay không.

Chương trình test lớp Date trên:
```
public class Entry {
	public static void main(String[] args) {
		Date d = new Date(1, 1, 1997);
		d.display();
		d.setDate(12, 12, 2004);
		d.display();
		d.setMonth(3);
		d.display();
	}
}
```
Kết quả khi chạy chương trình:
```
01/01/1997
12/12/2004
12/03/2004
```
