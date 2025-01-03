### Bài tập
Bạn hãy tạo ra lớp `Student` trong file `Student.java` với thông tin giống như sau:

![download](https://github.com/user-attachments/assets/255548fb-d4c3-4e4d-bfc9-0f8830a3ce16)

**Giải thích**:

- `name, age, gender, gpa` lần lượt là các thuộc tính `private` chỉ tên, tuổi, giới tính và điểm GPA của đối tượng học sinh.
- `Student(name: String, age: int, gender: String, gpa: double)` là phương thức khởi tạo có tham số dùng để khởi tạo giá trị cho các thuộc tính (gán thuộc tính `name` cho tham số `name`, gán thuộc tính `age` cho tham số `age`, ...).
- `display()` là phương thức hiển thị ra màn hình thông tin của học sinh. Ví dụ nếu các thuộc tính của một học sinh có giá trị như sau: `name = "Quang", age = 24, gender = "Male", gpa = 7.7` thì khi gọi phương thức `display()` màn hình sẽ hiển thị ra:
```
Name: Quang
Age: 24
Gender: Male
GPA: 7.7​
```
Chương trình dùng để test lớp `Student`:
```
public class Entry {
	public static void main(String[] args) {
		Student s = new Student("Quang", 24, "Male", 7.7);
		s.display();
	}
}
```
Kết quả khi chạy chương trình:
```
Name: Quang
Age: 24
Gender: Male
GPA: 7.7
```
### Lý thuyết
Như ở bài trước bạn đã học, nếu tên tham số đầu vào trùng với tên thuộc tính của lớp thì bạn có thể truy xuất tới thuộc tính của lớp bằng từ khóa `this` và toán tử `.` giống như ví dụ sau:
```
class Student {
	String name;
	int age;
	public Student(String name, int age) {
		this.name = name;
		this.age = age;
	}
	public void display() {
		System.out.println("Name: " + name);
		System.out.println("Age: " + age);
	}
}

public class Entry {
	public static void main(String[] args) {
		Student s1 = new Student("Linh", 24);
		s1.display();
	}
}
```
Kết quả khi chạy chương trình:
```
Name: Linh
Age: 24
```
