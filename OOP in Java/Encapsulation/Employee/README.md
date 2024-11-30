## Bài tập
Bạn hãy tạo ra lớp `Employee` trong file `Employee.java` với các thông tin giống như sau:

![image](https://github.com/user-attachments/assets/914205e1-2cf7-444f-b852-db31be381f0b)

Giải thích:

- `id, firstName, lastName, salary` là các thuộc tính chỉ mã, tên, họ, tiền lương của đối tượng nhân viên.
- `Employee(id: int, firstName: String, lastName: String, salary: int)` là phương thức khởi tạo có tham số dùng để khởi tạo giá trị cho các thuộc tính.
- `getFullName()` là phương thức trả về `firstName + lastName`.
- Các phương thức còn lại là các setter và getter.

Chương trình để test lớp `Employee` trên:
```
class Entry {
	public static void main(String[] args) {
		Employee e = new Employee(1, "Kien", "Hoang", 1000);
		System.out.println("Id: " + e.getId());
		System.out.println("Name: " + e.getFullName());
		System.out.println("Salary: " + e.getSalary());
	}
}
```
Kết quả khi chạy chương trình:
```
Id: 1
Name: Kien Hoang
Salary: 1000
```
