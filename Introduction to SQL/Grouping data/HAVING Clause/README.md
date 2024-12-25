## Lý thuyết
### Giới thiệu về mệnh đề `HAVING` trong PostgreSQL
Chúng ta thường sử dụng mệnh đề `HAVING` kết hợp với mệnh đề `GROUP BY` để lọc các hàng nhóm không thỏa mãn một điều kiện cụ thể.

Câu lệnh sau minh họa cú pháp điển hình của mệnh đề `HAVING`:
```
SELECT cột_1, hàm_tổng_hợp(cột_2)
FROM tên_bảng
GROUP BY cột_1
HAVING điều_kiện;
```
Mệnh đề `HAVING` đặt điều kiện cho các hàng nhóm được tạo bởi mệnh đề `GROUP BY` sau khi mệnh đề `GROUP BY` áp dụng trong khi mệnh đề `WHERE` đặt điều kiện cho các hàng riêng lẻ trước khi áp dụng mệnh đề `GROUP BY`. Đây là sự khác biệt chính giữa các mệnh đề `HAVING` và `WHERE`.

Trong PostgreSQL, bạn có thể sử dụng mệnh đề `HAVING` mà không cần mệnh đề `GROUP BY`. Trong trường hợp này, mệnh đề `HAVING` sẽ biến truy vấn thành một nhóm duy nhất. Ngoài ra, danh sách `SELECT` và mệnh đề `HAVING` chỉ có thể tham chiếu đến các cột từ bên trong các hàm tổng hợp. Loại truy vấn này trả về một hàng đơn nếu điều kiện trong mệnh đề `HAVING` là đúng hoặc bằng 0 nếu nó sai.

### Ví dụ về mệnh đề `HAVING` với hàm `SUM()` trong PostgreSQL
Hãy cùng xem bảng `payment`

payment_id	| customer_id	| staff_id	| rental_id	| amount
------------|-------------|-----------|-----------|-------
1	| 1	| 1	| 76	| 2.99
2	| 2	| 1	| 320 | 4.99
3	| 2	| 1	| 435	| 1.99
4	| 3	| 1	| 1297	| 4.99
5	| 4	| 1	| 731	| 0.99

Truy vấn sau đây lấy ra tổng số tiền của mỗi khách hàng bằng cách sử dụng mệnh đề `GROUP BY`:
```
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id;
```
Kết quả là

custome_id	| sum
------------|----
1	| 2.99
2	| 6.98
3	| 4.99
4	| 0.99

Bạn có thể áp dụng mệnh đề `HAVING` để chọn khách hàng duy nhất đã chi hơn 4$ như truy vấn sau:
```
SELECT customer_id, SUM(amount)  AS sum
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 4;
```
Kết quả là
custome_id	| sum
------------|----
2	| 6.98
3	| 4.99

## Lý thuyết
### Mệnh đề HAVING cùng COUNT
Hãy tham khảo bảng `customer` sau:

customer_id	| store_id	| first_name	| last_name	| address_id	| active
------------|-----------|-------------|-----------|-------------|-------
1	| 1	| MARY	| SMITH	| 5	| 1
2	| 1	| PATRICIA	| JOHNSON	| 6	| 1
3	| 1	| LINDA	| WILLIAMS	| 7	| 1
4	| 2	| BARBARA	| JONES	| 8	| 1
5	| 1	| ELIZABETH	| BROWN	| 9	| 1

Truy vấn sau đây trả về số lượng khách hàng trên mỗi cửa hàng:
```
SELECT store_id, COUNT(customer_id)  AS count
FROM customer
GROUP BY store_id
```
Đầu ra sẽ là:
store_id	| count
----------|------
1	| 4
2	| 1

Bạn có thể sử dụng mệnh đề `HAVING` để chọn cửa hàng có nhiều hơn 3 khách hàng:
```
SELECT store_id, COUNT(customer_id) AS count
FROM customer
GROUP BY store_id
HAVING COUNT(customer_id) > 3;
```
Đầu ra sẽ là

store_id	| count
----------|------
1	| 4
