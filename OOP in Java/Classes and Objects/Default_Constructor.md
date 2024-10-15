### Bạn hãy cho biết kết quả khi chạy chương trình sau:
```
class Customer{
	String name;
	public Customer(String name) {
		this.name = name;
	}
}

public class Entry {
	public static void main(String[] args) {
		Customer customer = new Customer();
		System.out.println("Welcome to Codelearn!");
	}
}
```
## Lý thuyết
Nếu một lớp đã được khai báo constructor thì chương trình sẽ không tự sinh ra constructor mặc định nữa (constructor mặc định là constructor không tham số).

Có thể thấy lớp `Customer` đã được khai báo constructor và đây lại là constructor có tham số nên trong phương thức `main()` bạn không thể khởi tạo được đối tượng thuộc lớp `customer` (do trong phương thức `main()` bạn gọi tới constructor không tham số nhưng trong lớp `Customer` lại không có constructor này). Với đoạn code trên chương trình sẽ báo lỗi như sau:
![image](https://github.com/user-attachments/assets/2bf4b0a4-0849-4c33-a6ed-990f7e4e74ee)

Chương trình báo lỗi do không tìm thấy constructor không tham số trong lớp `Customer`.

Để chương trình trên hiển thị được ra màn hình dòng chữ `"Welcome to Codelearn!"` bạn phải tự thêm vào constructor không tham số giống như sau:
```
class Customer{
	String name;
	public Customer() {
		
	}
	public Customer(String name) {
		this.name = name;
	}
}

public class Entry {
	public static void main(String[] args) {
		Customer customer = new Customer();
		System.out.println("Welcome to Codelearn!");
	}
}
```
Kết quả khi chạy chương trình:
```
Welcome to Codelearn!
```
