## Bài tập
Bạn hãy cho biết kết quả khi chạy chương trình sau:
```
class Student{
	public String name;
	public String address;
	
	public Student(String name, String address) {
		this.name = name;
		this.address = address;
	}
}

public class Entry {
	public static void main(String[] args) {
		Student s1 = new Student("Viet", "Bac Ninh");
		Student s2 = new Student("Viet", "Bac Ninh");
		System.out.println(s1 == s2);
	}
}
```
## Lý thuyết
Đầu tiên, bạn có thể quan sát thấy hai đối tượng `s1` và `s2` được khai báo và khởi tạo giống hệt nhau, hai đối tượng này có cùng tên và địa chỉ nhưng kết quả của phép so sánh `s1 == s2` lại là `false`. Trước hết mình sẽ giải thích kết quả này dựa theo tư duy ngoài đời thực:

Ví dụ, trong một lớp có 3 học sinh có tên giống nhau là Linh, vậy khi giáo viên gọi "bạn Linh" thì ai sẽ là người trả lời? rõ ràng thuộc tính tên không thể đại diện được cho 1 đối tượng vì sẽ có rất nhiều đối tượng có trùng tên. Trong ví dụ trên cũng vậy, bạn không thể nói rằng `s1` và `s2` là cùng một đối tượng vì chúng có cùng tên cùng địa chỉ. Vậy theo cách tư duy này, để nói rằng hai đối tượng là giống nhau thì bạn cần dựa vào những đặc điểm riêng của đối tượng như số chứng minh thư, số điện thoại, ... ví dụ trong trường hợp trên nếu nói Linh thì không ai biết là Linh nào nhưng nếu nói Linh có mã sinh viên là 1000 thì mọi người đều biết là ai.

Đó là tư duy ngoài đời thực về việc so sánh các đối tượng, còn về lập trình thì kết quả của biểu thức `s1 == s2` là `false` là do toán tử `==` trong Java là toán tử so sánh địa chỉ nơi đối tượng được cấp phát chứ toán tử này không hề so sánh tới các thuộc tính của đối tượng.

Vậy trong trường hợp lớp `Student` có thêm thuộc tính `id` (mã học sinh) thì làm thế nào để kiểm tra xem hai đối tượng có phải là một hay không?

Rõ ràng bạn không thể sử dụng toán tử `==` vì đây là toán tử so sánh địa chỉ nơi đối tượng được cấp phát, thay vào đó bạn phải tự viết phương thức để so sánh hoặc sử dụng phương thức `equals()` mà lớp `Object` đã cung cấp sẵn, bạn chỉ cần ghi đè lại phương thức này giống như chương trình sau:
```
class Student {
	public int id;
	public String name;
	public String address;

	public Student(int id, String name, String address) {
		this.id = id;
		this.name = name;
		this.address = address;
	}

	@Override
	public boolean equals(Object obj) {
		return this.id == ((Student) obj).id;
	}
}

public class Entry {
	public static void main(String[] args) {
		Student s1 = new Student(1000, "Viet", "Bac Ninh");
		Student s2 = new Student(1000, "Viet", "Bac Ninh");
		System.out.println(s1.equals(s2));
	}
}
```
Kết quả khi chạy chương trình:
```
true
```
