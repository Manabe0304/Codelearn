## Bài tập
Bạn hãy tạo ra lớp `Customer` và `Invoice` với thông tin giống như sau:

![image](https://github.com/user-attachments/assets/b089e1e4-3791-41be-8450-09c08d6e4cdf)

Giải thích:

Sơ đồ trên mô tả thông tin về khách hàng và các hóa đơn của khách hàng.

### Lớp Customer

- Đây là lớp lưu thông tin về các khách hàng.
- `id, name và discount` lần lượt là các thuộc tính chỉ mã khách hàng, tên khách hàng và phần trăm giảm giá của một hóa đơn đối với khách hàng.
- `Customer(id: int, name: String, discount: int)` là phương thức khởi tạo có tham số dùng để khởi tạo giá trị cho các thuộc tính tương ứng.
- `getId(), setName(), getName(), setDiscount(), getDiscount()` là các setter và getter. Lớp này không có phương thức `setId()` vì trên thực tế mã là thuộc tính luôn không thay đổi.
### Lớp Invoice

- Đây là lớp lưu thông tin về các hóa đơn của khách hàng.
- `id, customer, amount` lần lượt là thuộc tính chỉ mã hóa đơn, khách hàng và giá của hóa đơn.
- `Invoice(id: int, customer: Customer, amount: double)` là phương thức khởi tạo có tham số dùng để khởi tạo giá trị cho các thuộc tính tương ứng.
- `getId(), setCustomer(), getCustomer(), setAmount(), getAmount()` là các setter và getter. Lớp này cũng không có phương thức `setId()`.
- `getCustomerName()` là phương thức trả về tên của khách hàng.
- `getAmountAfterDiscount()` là phương thức tính tiền hóa đơn sau khi đã áp dụng giảm giá đối với khách hàng. Ví dụ nếu hóa đơn có thuộc tính `amount = 100000` và khách hàng sở hữu hóa đơn này có thuộc tính `discount = 20 (20%)` thì phương thức `getAmountAfterDiscount()` sẽ trả về `80000`. Giải thích: `100000 - 100000 * 0.2 = 80000`.

Chương trình để test 2 lớp trên:
```
public class Entry {
	public static void main(String[] args) {
		Customer customer1 = new Customer(1000, "Tuan", 20);
		Invoice invoice1 = new Invoice(1000, customer1, 100000);
		System.out.println("Customer name: " + invoice1.getCustomerName());
		System.out.println("Invoice after discount: " + invoice1.getAmountAfterDiscount());
	}
}
```
Kết quả khi chạy chương trình:
```
Customer name: Tuan
Invoice after discount: 80000.0
```
Lưu ý: bạn không cần quan tâm tới số các chữ số đằng sau dấu phẩy vì hệ thống chấp nhận sai số nhỏ hơn `0.000001`
