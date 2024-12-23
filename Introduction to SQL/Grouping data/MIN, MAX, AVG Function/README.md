## Lý thuyết
### Các hàm MIN(), MAX(), AVG()
Hàm `MIN` là một trong các hàm tổng hợp trả về giá trị tối thiểu trong một tập hợp các giá trị. Để tìm giá trị tối thiểu của cột trong một bảng, bạn chuyển cột đó cho hàm `MIN` trong câu lệnh `SELECT`. Kiểu dữ liệu của cột có thể là số, chuỗi hoặc bất kỳ loại so sánh nào. Cú pháp của hàm `MIN` như sau:

`SELECT MIN(cột) FROM bảng;`

Hàm `MAX` là một hàm tổng hợp trả về giá trị tối đa trong một tập hợp các giá trị. Hàm `MAX` rất hữu ích trong nhiều trường hợp. Ví dụ: để tìm những nhân viên có mức lương cao nhất, hoặc tìm những sản phẩm đắt nhất, v.v.

`SELECT MAX(cột) FROM bảng;`

Hàm `AVG` là một trong những hàm tổng hợp được sử dụng phổ biến nhất trong PostgreSQL. Hàm `AVG` cho phép bạn tính giá trị trung bình của một cột số.

`SELECT AVG(cột) FROM bảng;`
### Ví dụ về các hàm MIN(), MAX(), AVG() trong PostgreSQL
Với bảng `payment` như sau:

payment_id	| staff_id	| rental_id	| amount	| payment_date
------------|-----------|-----------|---------|-------------
1	| 2	| 76	| 2.99	| 2005-05-25 11:30:37
2	| 1	| 14762	| 0.99	| 2005-05-28 10:35:23
3	| 2	| 14825	| 5.99	| 2005-06-15 00:54:12
4	| 1	| 15298	| 0.99	| 2005-06-15 18:02:53
5	| 2	| 15315	| 9.99	| 2005-06-15 21:08:46
6	| 1	| 320	| 4.99	| 2005-06-16 15:18:57
```
SELECT MIN(amount), MAX(amount), ROUND(AVG(amount), 2) AS avg
FROM payment
```
Kết quả đầu ra sẽ là:

min	| max	| avg
----|-----|----
0.99	| 9.99	| 4.32
