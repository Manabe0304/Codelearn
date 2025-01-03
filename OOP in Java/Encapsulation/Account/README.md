## Bài tập
Bạn hãy tạo ra lớp `Account` trong file `Account.java` với thông tin giống như sau:

![image](https://github.com/user-attachments/assets/41eeeffe-eff9-44ec-bbac-95e6ea929949)

Giải thích:

- `Account` là lớp dùng để mô tả thông tin về các tài khoản ngân hàng.
- `id, name` và `balance` lần lượt là các thuộc tính chỉ số tài khoản, tên chủ tài khoản và số dư trong tài khoản.
- `Account(id: int, name: String)` và `Account(id: int, name: String, balance: int)` là các phương thức khởi tạo có tham số dùng để khởi tạo giá trị cho các thuộc tính tương ứng.
- `getId(), setName(), getName(), getBalance()` là các setter, getter.
- `deposit(amount: int)` là phương thức dùng để gửi tiền vào tài khoản 1 lượng có giá trị là` amount (balance += amount)`.
- `withdraw(amount: int)` là phương thức dùng để rút tiền từ tài khoản 1 lượng có giá trị là `amount (balance -= amount`). Nếu số dư trong tài khoản không đủ (`balance < amount`) thì không thực hiện rút tiền và hiển thị ra màn hình:
```
That amount exceeds your current balance.
```

- `display()` là phương thức dùng để hiển thị ra màn hình thông tin tài khoản. Ví dụ nếu `id = 1000, name = "Tuan", balance = 2490` thì khi gọi phương thức `display()` màn hình sẽ hiển thị ra:
```
Id: 1000
Name: Tuan
Balance: 2490​
```
Chương trình để test lớp `Account`:
```
public class Entry {
	public static void main(String[] args) {
		Account account1 = new Account(1000, "Tuan", 2000);
		account1.display();
		account1.withdraw(2100);
		account1.deposit(600);
		System.out.println("Balance: " + account1.getBalance());
		account1.withdraw(2100);
		System.out.println("Balance: " + account1.getBalance());
	}
}
```
Kết quả khi chạy chương trình:
```
Id: 1000
Name: Tuan
Balance: 2000
That amount exceeds your current balance.
Balance: 2600
Balance: 500
```
