## Lý thuyết
Mệnh đề `GROUP BY` chia các hàng được trả về từ câu lệnh `SELECT` thành các nhóm. Đối với mỗi nhóm, bạn có thể áp dụng hàm tổng hợp (aggregate function), ví dụ: `SUM()` để tính tổng các mục hoặc `COUNT()` để lấy số lượng mục trong các nhóm.

Câu lệnh sau minh họa cú pháp của mệnh đề `GROUP BY`:
```
SELECT cột_1, hàm_tổng_hợp(cột_2)
FROM tên_bảng
GROUP BY cột_1;
```
Mệnh đề `GROUP BY` phải xuất hiện ngay sau mệnh đề `FROM` hoặc `WHERE`. Tiếp theo là mệnh đề `GROUP BY` là một cột hoặc danh sách các cột được phân tách bằng dấu phẩy. Bên cạnh cột bảng, bạn cũng có thể sử dụng biểu thức với mệnh đề `GROUP BY`.

## Lý thuyết
Mệnh đề `GROUP BY` rất hữu ích khi nó được sử dụng cùng với hàm tổng hợp. Ví dụ: để có được số tiền mà khách hàng đã được trả, bạn sử dụng mệnh đề `GROUP BY` để chia bảng `payment` thành các nhóm; đối với mỗi nhóm, bạn tính tổng số tiền bằng cách sử dụng hàm `SUM()` như được hiển thị trong truy vấn sau:

Cho bảng `payment`

payment_id	| customer_id	| staff_id	| rental_id	| amount
------------|-------------|-----------|-----------|-------
1	| 1	| 1	| 76	| 2.99
2	| 1	| 1	| 573 | 0.99
3	| 1	| 1	| 1185	| 5.99
4	| 1	| 2	| 1422	| 0.99
5	| 1	| 2	| 1476	| 9.99
6	| 2	| 1	| 320	| 4.99
7	| 2	| 2	| 7346	| 24.99
```
SELECT customer_id, SUM (amount)  AS sum
FROM payment
GROUP BY customer_id;
```
customer_id	| sum
------------|----
1	| 20.95
2	| 29.98

Bạn có thể sử dụng mệnh đề `ORDER BY với mệnh đề `GROUP BY` để sắp xếp các nhóm:
```
SELECT customer_id, SUM(amount)  AS sum
FROM payment
GROUP BY customer_id
ORDER BY SUM (amount) DESC;
```
customer_id	| sum
------------|----
2	| 29.98
1	| 20.95
