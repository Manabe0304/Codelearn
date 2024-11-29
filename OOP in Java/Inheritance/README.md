## Lý thuyết
Như bạn đã được nghe qua ở bài trước, trong lập trình hướng đối tượng có 4 tính chất là **tính đóng gói (Encapsulation)**, **tính kế thừa (Inheritance)**, **tính đa hình (Polymorphism)** và **tính trừu tượng (Abstraction)**. Trong chương này bạn sẽ học và hiểu được tính chất thứ 2 trong 4 tính chất trên, đó là tính kế thừa.

Trước tiên bạn hãy xem một ví dụ để thấy được sự cần thiết của tính kế thừa:

Giả sử bạn cần viết một chương trình lưu thông tin về các học sinh và giáo viên. Với học sinh thì bạn cần lưu các thông tin về tên, tuổi, địa chỉ, gpa (điểm trung bình) và với giáo viên thì bạn cần lưu thông tin về tên, tuổi, địa chỉ và tiền lương. Qua một hồi phân tích bạn ra được biểu đồ lớp như sau (kéo cửa sổ bài tập to ra để nhìn rõ hơn):

![image](https://github.com/user-attachments/assets/60a4b122-fd2e-4079-b4f1-e8b4e4f7ebf6)

Chắc bạn cũng đã nhận thấy được vấn đề khi nhìn vào sơ đồ này, đó là lớp `Student` và lớp `Teacher` có chung quá nhiều thuộc tính và phương thức. Vậy nếu cứ làm theo sơ đồ lớp này thì code sẽ bị trùng lặp rất nhiều và vi phạm nguyên tắc **DRY (Don't Repeat Yourself - đừng bao giờ lặp lại code)**. Kế thừa trong OOP sẽ giúp bạn giải quyết vấn đề này.

### Tính kế thừa trong lập trình hướng đối tượng

Kế thừa trong lập trình hướng đối tượng chính là thừa hưởng lại những thuộc tính và phương thức của một lớp. Có nghĩa là nếu lớp A kế thừa lớp B thì lớp A sẽ có những thuộc tính và phương thức của lớp B. Do đó, từ sơ đồ trên bạn có thể tách các thuộc tính và phương thức trùng nhau ra một lớp mới tên là `Person` và cho lớp `Student` và `Teacher` kế thừa lớp này giống như sau:

![image](https://github.com/user-attachments/assets/dc818049-3cb7-4f47-9601-24516684dd09)
 
Có thể thấy với sơ đồ này lớp `Student` và `Teacher` sẽ thừa hưởng lại các thuộc tính chung từ lớp `Person` và code sẽ không còn bị trùng lặp. Ở trong sơ đồ trên thì mũi tên với **hình tam giác rỗng ruột** chính là ký hiệu thể hiện quan hệ kế thừa.

Lớp được thừa hưởng những thuộc tính và phương thức từ lớp khác được gọi là **dẫn xuất (Derived Class)** hay **lớp Con (Subclass)** và lớp bị lớp khác kế thừa được gọi là **lớp cơ sở (Base Class)** hoặc **lớp cha (Parent Class)**. Như ở ví dụ trên thì lớp `Person` là **lớp cha (lớp cơ sở)** và `Student`, `Teacher` là **hai lớp con (lớp dẫn xuất)**.

Trong ngôn ngữ lập trình Java, để kế thừa một lớp bạn dùng từ khóa `extends`, ví dụ:
```
class Person {
	private String name;
	private int age;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
}

class Student extends Person {
	private double gpa;

	public double getGpa() {
		return gpa;
	}

	public void setGpa(double gpa) {
		this.gpa = gpa;
	}	
}

class Entry {
	public static void main(String[] args) {
		Student s = new Student();
		s.setName("Thien");
		s.setAge(32);
		s.setGpa(7);
		System.out.println("Name: " + s.getName());
		System.out.println("Age: " + s.getAge());
		System.out.println("Gpa: " + s.getGpa());
	}
}
```
Kết quả khi chạy chương trình:
```
Name: Thien
Age: 32
Gpa: 7.0
```
Có thể thấy rằng lớp `Student` đã được thừa hưởng những phương thức của lớp `Person`.

Lưu ý: các thuộc tính và phương thức có phạm vi truy cập `private` sẽ không thể được truy cập từ lớp con khi làm thực tế bạn nên tách lớp `Student` và `Person` ra làm 2 file **.java** riêng.

## Đặc điểm của tính kế thừa.

### Lớp con không được thừa hưởng các thuộc tính và phương thức private từ lớp cha.

Trong kế thừa, các lớp con chỉ có thể thừa hưởng được các thuộc tính và phương thức có phạm vi truy cập `public`, `protected` và `default` (trong trường hợp lớp con và lớp cha cùng package). Nếu bạn truy xuất tới thuộc tính `private` của lớp cha từ lớp con thì chương trình sẽ báo lỗi giống như sau:

![image](https://github.com/user-attachments/assets/0a05af25-75bb-42be-b963-21ae72b392e0)

Muốn truy xuất được tới các thuộc tính `private` của lớp cha thì bạn phải thông qua các setter và getter của lớp cha:

![image](https://github.com/user-attachments/assets/d32404a4-1f7c-4d22-be94-73181ee986f8)

Do đó trong bài này bạn không thể truy xuất trực tiếp tới thuộc tính `name` và `dob` của lớp `Person` từ lớp `Student`, thay vào đó bạn phải sử dụng các setter và getter.

### Constructor của lớp con luôn gọi tới constructor của lớp cha

Constructor của lớp con luôn gọi tới constructor luôn gọi tới constructor của lớp cha, nếu bạn không chỉ rõ là cần gọi tới constructor nào của lớp cha thì lớp con sẽ luôn gọi tới constructor mặc định của lớp cha. Ví dụ:
```
class Person{
	public Person() {
		System.out.println("Person constructor");
	}
}

class Student extends Person{
	public Student() {
		System.out.println("Student constructor");
	}
}

class Entry {
	public static void main(String[] args) {
		Student s = new Student();
	}
}
```
Kết quả khi chạy chương trình:
```
Person constructor
Student constructor
```
Có thể thấy constructor mặc định (constructor không tham số) của lớp cha đã được gọi cùng với constructor của lớp con. Do đó, khi lớp cha không có constructor mặc định mà lớp con không chỉ rõ cần gọi tới constructor nào của lớp cha thì chương trình sẽ báo lỗi giống như sau:

![image](https://github.com/user-attachments/assets/0d66803f-28a9-4b3f-b791-bb90e29dc1dd)

Lúc này bạn phải dùng từ khóa `super` để chỉ cho lớp con biết cần phải gọi tới constructor nào của lớp cha giống chương trình sau:
```
class Person {
	private String name;

	public Person(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}

class Student extends Person {
	public Student(String name) {
		super(name);
	}
}

public class Entry {
	public static void main(String[] args) {
		Student s1 = new Student("Trung");
		System.out.println(s1.getName());
	}
}
```
Kết quả khi chạy chương trình:
```
Trung
```
Trong ví dụ trên `super(name)` chính là gọi tới constructor một tham số của lớp cha.

Từ khóa `super` khác từ khóa `this` ở chỗ từ khóa `super` sẽ tham chiếu tới lớp cha còn từ khóa `this` sẽ tham chiếu tới lớp hiện tại. Do đó bạn cũng có thể truy xuất tới các thuộc tính và phương thức của lớp cha bằng từ khóa `super`.
