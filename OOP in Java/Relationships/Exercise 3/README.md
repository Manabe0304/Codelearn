## Bài tập
Bạn hãy tạo ra lớp `Author` và lớp `Book` với thông tin giống như trong sơ đồ lớp sau:

![image](https://github.com/user-attachments/assets/60943bfa-ebfc-4969-adce-42ddeb197c7a)

Giải thích:

### Lớp Author

- Đây là lớp dùng để lưu thông tin về tác giả của các cuốn sách.
- `name, email` là hai thuộc tính chỉ tên và địa chị email của tác giả.
- `Author(name: string, email: string)` là phương thức khởi tạo có tham số dùng để khởi tạo giá trị cho các thuộc tính tương ứng.
- `setName(), getName(), setEmail(), getEmail()` là các setter và getter.
### Lớp Book

- Đây là lớp dùng để lưu thông tin về các cuốn sách.
- `name, price, authors` lần lượt là các thuộc tính lưu trữ tên, giá bán, các tác giả của cuốn sách.
- `Book(name: String, authors: Author[], price: double)` là phương thức khởi tạo có tham số dùng để khởi tạo giá trị cho các thuộc tính tương ứng.
- `setName(), getName(), setPrice(), getPrice()` là các setter và getter.
- `getAuthorNames()` là phương thức trả về tên của các tác giả đã viết cuốn sách dưới dạng `"authorName1, authorName2, ..., authorNameN"`.

Chương trình để test 2 lớp trên:
```
public class Entry {
	public static void main(String[] args) {
		Author[] authors = new Author[3];
		authors[0] = new Author("Viet", "VietCV@codelearn.io");
		authors[1] = new Author("Tuan", "TuanLQ@codelearn.io");
		authors[2] = new Author("Kien", "KienNT@Codelearn.io");
		
		Book book1 = new Book("C++ for Beginners", authors, 210000);
		System.out.println(book1.getAuthorNames());
	}
}
```
Kết quả khi chạy chương trình:
```
Viet, Tuan, Kien
```
