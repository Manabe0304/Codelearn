## Bài tập
Bạn hãy tạo ra 3 lớp `Person, Employee` và `Customer` với thông tin giống như sau:

![image](https://github.com/user-attachments/assets/38c580e8-2e42-460c-89b4-0f92f633ff80)

### Lớp Person

- `Person` là lớp trừ tượng dùng để lưu thông tin chung về đối tượng con người.
- `name` và `address` là 2 thuộc tính `private` chỉ tên và địa chỉ của đối tượng.
- `Person(name: String, address: String)` là phương thức khởi tạo có tham số dùng để khởi tạo giá trị cho các thuộc tính.
- `display()` là phương thức trừu tượng dùng để hiển thị thông tin của đối tượng.
### Lớp Employee

- `Employee` là lớp kế thừa từ lớp trừu tượng `Person`
- `salary` là thuộc tính lưu thông tin về tiền lương của nhân viên.
- `Employee(name: String, address: String, salary: int)` là phương thức khởi tạo dùng để khởi tạo giá trị cho các thuộc tính.
- `display()` là phương thức ghi đè từ lớp trừu tượng, phương thức này dùng để hiển thị thông tin nhân viên ra màn hình. Ví dụ nếu `name = "Trung", address = "HN", salary = 3300` thì khi gọi phương thức `display()` màn hình sẽ hiển thị ra:
```
Employee name: Trung
Employee address: HN
Employee salary: 3300​
```
### Lớp Customer

- `Customer` là lớp kế thừa từ lớp trừu tượng `Person`.
- `balance` là thuộc tính lưu thông tin về số dư trong tài khoản của khách hàng.
- `Customer(name: String, address: String, balance: int)` là phương thức khởi tạo dùng để khởi tạo giá trị cho các thuộc tính.
- `display()` là phương thức ghi đè từ lớp trừu tượng, phương thức này dùng để hiển thị thông tin nhân viên ra màn hình. Ví dụ nếu `name = "Linh", address = "BN", balance = 10400` thì khi gọi phương thức `display()` màn hình sẽ hiển thị ra:
```
Customer name: Linh
Customer address: BN
Customer balance: 10400
```
Lưu ý: Trong sơ đồ lớp thì nếu tên một lớp được in nghiêng thì đó là lớp trừ tượng, nếu tên phương thức được in nghiêng thì đó là phương thức trừu tượng.

Chương trình để test 3 lớp trên:
```
public class Entry {
	public static void main(String[] args) {
		Person person1 = new Employee("Trung", "HN", 3300);
		Person person2 = new Customer("Linh", "BN", 10400);
		person1.display();
		person2.display();
	}
}
```
Kết quả khi chạy chương trình:
```
Employee name: Trung
Employee address: HN
Employee salary: 3300
Customer name: Linh
Customer address: BN
Customer balance: 10400
```
