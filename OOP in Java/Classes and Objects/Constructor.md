### Bạn hãy cho biết kết quả khi chạy chương trình sau:
```
class Student {
	private String name;
	private int age;
	public Student() {
		name = "Tuan";
		age = 24;
	}
	public void display() {
		System.out.println("Name: " + name);
		System.out.println("Age: " + age);
	}
}

public class Entry {
	public static void main(String[] args) {
		Student s = new Student();
		s.display();
	}
}
```
## Lý thuyết
Ta có thể quan sát thấy trong chương trình trên có đoạn code "lạ" mà ở các bài trước bạn chưa được học:
```
public Student() {
	name = "Tuan";
	age = 24;
}
```
Nếu bạn chưa biết đoạn code này là gì thì đây chính là đoạn code của constructor (phương thức khởi tạo).

#### Constructor (phương thức khởi tạo)

Trong Java, constructor là một phương thức đặc biệt, phương thức này sẽ tự động được gọi khi bạn khởi tạo một đối tượng (với các phương thức thông thường thì bạn cần dùng toán tử `"."` để gọi tới). Constructor có đặc điểm là không được định nghĩa kiểu trả về và có tên trùng với tên lớp. Xem ví dụ sau để hiểu rõ hơn:
```
class Student {
	// Phương thức khởi tạo của lớp Student
	public Student() {
		System.out.println("Constructor Called");
	}
}

public class Entry {
	public static void main(String[] args) {
		Student s = new Student();
	}
}
```
Kết quả khi chạy chương trình:

`Constructor Called`

Có thể thấy constructor đã tự động được gọi tới khi bạn khởi tạo đối tượng lớp `Student`.

Nếu một lớp không được khai báo constructor thì chương trình sẽ tự động tạo ra một constructor mặc định. Ví dụ nếu bạn khai báo lớp `Student` giống như sau:
```
class Student {
	String name;
	int age;
}
```
Thì chương trình sẽ tự động thêm vào một constructor mặc định (constructor rỗng) bên trong lớp `Student`:
```
class Student {
	String name;
	int age;

	public Student() {
	}
}
```
Lưu ý: Nếu bạn dùng từ khóa `private` để khai báo constructor thì bạn sẽ không thể khởi tạo được đối tượng của lớp này. Ví dụ chương trình sau sẽ báo lỗi do lớp Student có constructor là `private`:

![image](https://github.com/user-attachments/assets/fc8cfa73-a477-45d1-920c-9b848d042a40)
