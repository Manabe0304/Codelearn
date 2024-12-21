## Lý thuyết
Giả sử bạn muốn lấy dữ liệu từ hai bảng có tên A và B. Bảng B có trường `fka` liên quan đến khóa chính (là một cột hoặc một nhóm các cột được sử dụng để xác định một hàng duy nhất trong một bảng - chúng tôi sẽ đề cập đến điều này sau) của bảng A.

![image](https://github.com/user-attachments/assets/2281191d-acbb-44e3-a0dc-1fe17e5b87d5)

Để lấy dữ liệu từ cả hai bảng, bạn sử dụng mệnh đề `INNER JOIN` trong câu lệnh `SELECT` như sau:
```
SELECT A.pka, A.c1, B.pkb, B.c2
FROM A INNER JOIN B ON A .pka = B.fka;
```
Để tham gia bảng A đến bảng B:

- Đầu tiên, bạn chỉ định cột trong cả hai bảng mà bạn muốn chọn dữ liệu trong mệnh đề `SELECT`
- Thứ hai, bạn chỉ định bảng chính tức là A trong mệnh đề `FROM`.
- Thứ ba, bạn chỉ định bảng mà bảng chính tham gia (join) vào tức là, B trong mệnh đề `INNER JOIN`. Ngoài ra, bạn đặt điều kiện tham gia sau từ khóa `ON` ví dụ như A.pka = B.fka.

Đối với mỗi hàng trong bảng A, PostgreSQL sẽ quét bảng B để kiểm tra xem có hàng nào phù hợp với điều kiện tức là, A.pka = B.fka không. Nếu tìm thấy kết quả khớp, nó kết hợp các cột của cả hai hàng thành một hàng và thêm hàng kết hợp vào tập kết quả được trả về.

Đôi khi, bảng A và B có cùng tên cột, vì vậy chúng ta phải gọi cột là `tên_bảng.tên_cột` để tránh sự mơ hồ. Trong trường hợp tên của bảng dài, bạn có thể sử dụng bí danh bảng (alias), ví dụ: tbland gọi cột là tbl.column_name.

Biểu đồ Venn sau đây minh họa cách hoạt động của mệnh đề PostgreSQL `INNER JOIN`.

![image](https://github.com/user-attachments/assets/e78b1971-e6ce-4973-9a78-58e9b17f6262)

##### PostgreSQL INNER JOIN Venn Diagram

Mệnh đề `INNER JOIN` trả về các hàng trong bảng A có các hàng tương ứng trong bảng B.

Hãy xem qua bảng `customer` và bảng `payment`

Bảng `customer`

| customer_id	| store_id | first_name	| last_name	| address_id | active |
|-------------|----------|------------|-----------|------------|--------|
| 1	| 1	| MARY | SMITH | 5 | 1 |
| 2	| 1	| PATRICIA | JOHNSON | 6 | 1 |
| 3	| 1	| LINDA	| WILLIAMS | 7 | 1 |
| 4	| 2	| BARBARA	| JONES | 8 |	1 |
| 5	| 1	| ELIZABETH	| BROWN	| 9	| 1 |

Bảng `payment`

| payment_id | customer_id | staff_id	| rental_id	| amount | payment_date |
|------------|-------------|----------|-----------|---------|-------------|
| 1	| 1	| 1	| 76 | 2.99	| 2005-05-25 11:30:37 |
| 2	| 1	| 1	| 573	| 0.99 | 2005-05-28 10:35:23 |
| 3	| 1	| 1	| 1185 | 5.99	| 2005-06-15 00:54:12 |
| 4	| 1	| 2	| 1422 | 0.99	| 2005-06-15 18:02:53 |
| 5	| 1	| 2	| 1476 | 9.99	| 2005-06-15 1:08:46 |

Mỗi khách hàng có thể có 0 hoặc nhiều khoản thanh toán (payment). Mỗi khoản thanh toán thuộc về một và chỉ một khách hàng. Trường `customer_id` thiết lập liên kết giữa hai bảng. Bạn có thể sử dụng mệnh đề `INNER JOIN` để tham gia bảng `customer` vào bảng `payment` như sau:
```
SELECT customer.customer_id, first_name, last_name, amount, payment_date
FROM customer
INNER JOIN payment ON payment.customer_id = customer.customer_id;
```
| customer_id	| store_id | first_name	| last_name	| address_id | active |
|-------------|----------|------------|-----------|------------|--------|
| 1	| MARY | SMITH | 2.99	| 2005-05-25 11:30:37 | 
| 1	| MARY | SMITH | 0.99	| 2005-05-28 10:35:23 |
| 1	| MARY | SMITH | 5.99	| 2005-06-15 00:54:12 | 
| 1	| MARY | SMITH | 0.99	| 2005-06-15 18:02:53 | 
| 1	| MARY | SMITH | 9.99	| 2005-06-15 21:08:46 |
