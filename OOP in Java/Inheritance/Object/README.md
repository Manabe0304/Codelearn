## Lý thuyết
Bài này sẽ giúp bạn hiểu rõ hơn về lớp `Object`. Trước hết bạn hãy xem ví dụ sau:
```
class Student{
}

public class Entry {
	public static void main(String[] args) {
		Student s = new Student();
		System.out.println(s.hashCode());
		System.out.println(s.toString());
		System.out.println(s.getClass());		
	}
}
```
Kết quả khi chạy chương trình:
```
1554547125
OOP.Student@5ca881b5
class OOP.Student
```
Nhìn vào ví dụ trên chắc bạn sẽ thắc mắc là tại sao lớp `Student` lại có những phương thức như `hashCode(), toString(), getClass()` trong khi bạn không khai báo các phương thức này. Lý do là tất cả các lớp trong Java đều được kế thừa từ lớp `Object` và trong lớp `Object` có các phương thức này.

Ngoài các phương thức trên, lớp `Object` còn có một số phương thức khác, trong đó `toString()` là phương thức dùng để biểu diễn đối tượng dưới dạng xâu (`String`). Trong thực tế bạn sẽ sử dụng phương thức `toString()` rất nhiều. Ví dụ khi bạn gọi hàm `System.out.println()` với một đối tượng thì chương trình sẽ hiển thị phương thức `toString()` của đối tượng đó:
```
public class Student {
	private String name;
	private String address;
	private double gpa;

	public Student(String name, String address, double gpa) {
		this.name = name;
		this.address = address;
		this.gpa = gpa;
	}

	@Override
	public String toString() {
		return "Name: " + name + ", address: " + address + ", GPA: " + gpa;
	}
}
```
Kết quả khi chạy chương trình:
```
Name: Kien, age: 23
```
Có thể thấy, bạn hoàn toàn có thể sử dụng phương thức `toString()` để thay thế cho phương thức `display()` mà bạn đã học ở các bài trước.
