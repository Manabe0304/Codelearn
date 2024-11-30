## Bài tập
Bạn hãy tạo ra lớp `Student` với thông tin giống như sau:

![image](https://github.com/user-attachments/assets/dbb4e93f-5dd3-4d77-9ccf-d13f20060dfd)

Giải thích:

- `id, name, age, address, score` lần lượt là các thuộc tính chỉ mã, tên, tuổi, địa chỉ và điểm của đối tượng học sinh. Trong đó, thuộc tính score luôn phải được đảm bảo là không âm và nhỏ hơn hoặc bằng 10 (nếu `score < 0` thì gán `score = 0`, nếu `score > 10` thì gán `score = 10`).
- `Student()` là phương thức khởi tạo không tham số.
- `Student(id: int, name: String, age: int, adderss: String, score: int)` là phương thức khởi tạo có tham số dùng để khởi tạo giá trị cho các thuộc tính `id, name, age, address, score`
- Các phương thức còn lại là các setter và getter.

Chương trình để test lớp Student trên:
```
public class Entry {
	public static void main(String[] args) {
		Student s = new Student(1001, "Trung", 24, "Ha Noi", 5);
		System.out.println(s.getId());
		System.out.println(s.getName());
		System.out.println(s.getAge());
		System.out.println(s.getAddress());
		System.out.println(s.getScore());
		s.setScore(-7);
		System.out.println(s.getScore());
		s.setScore(15);
		System.out.println(s.getScore());
	}
}
```
Kết quả khi chạy chương trình:
```
1001
Trung
24
Ha Noi
5
0
10
```
