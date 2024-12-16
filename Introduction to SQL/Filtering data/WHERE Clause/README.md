## Lý thuyết
Trong hướng dẫn trước, bạn đã học cách sử dụng câu lệnh `SELECT` để truy vấn dữ liệu từ một bảng. Điều gì xảy ra nếu bạn muốn truy vấn chỉ các hàng cụ thể từ một bảng cần thỏa mãn một điều kiện nhất định? Trong trường hợp này, bạn cần sử dụng mệnh đề `WHERE`. Cú pháp của mệnh đề `WHERE` PostgreSQL như sau:
```
SELECT danh_sách_chọn
FROM tên_bảng
WHERE điều_kiện;
```
Mệnh đề `WHERE` xuất hiện ngay sau mệnh đề `FROM` của câu lệnh `SELECT`. Mệnh đề `WHERE` sử dụng điều kiện để lọc các hàng được trả về từ câu lệnh `SELECT`. Điều kiện phải đánh giá là đúng, sai hoặc không biết. Nó có thể là biểu thức Boolean hoặc kết hợp các biểu thức Boolean bằng toán tử `AND` và `OR`. 

Câu truy vấn sẽ trả về các hàng thỏa mãn điều kiện trong mệnh đề `WHERE`. Nói cách khác, chỉ các hàng khiến điều kiện ước tính là `true` sẽ được đưa vào tập kết quả.

Bảng dưới đây minh họa các toán tử so sánh tiêu chuẩn.

| So sánh	| Mô tả |
|---------|-------|
| =	| Bằng |
| >	| Lớn hơn |
| <	| Bé hơn | 
| >= | Lớn hơn hoặc bằng |
| <= | Bé hơn hoặc bằng |
| <> | Không bằng |
| AND	| Toán tử AND |
| OR | Toán tử OR |

Nếu bạn muốn có được tất cả các khách hàng có tên đầu tiên là `Ed`, bạn có thể sử dụng mệnh đề `WHERE` với toán tử bằng (=) như sau:
```
SELECT * FROM customer
WHERE first_name = 'ED';
```
Cho bảng `actor`:

| actor_id | first_name	| last_name |
|----------|------------|-----------|
| 1	| PENELOPE | GUINESS | 
| 2	| NICK | WAHLBERG |
| 3	| ED | CHASE |
| 4	| JENNIFER | DAVIS |

Kết quả đầu ra sẽ là:

| actor_id | first_name	| last_name |
|----------|------------|-----------|
| 3 | ED | CHASE |

## Lý thuyết
Nếu bạn muốn khớp một chuỗi với bất kỳ chuỗi nào trong một danh sách, hãy sử dụng toán tử `IN`. Ví dụ: câu lệnh sau trả về khách hàng có tên đầu tiên là `Penelope` hoặc `Nick`:
```
SELECT first_name, last_name
FROM actor
WHERE first_name IN ('PENELOPE','NICK');
```
Cho bảng `actor`:

| actor_id | first_name	| last_name |
|----------|------------|-----------|
| 1	| PENELOPE | GUINESS |
| 2	| NICK | WAHLBERG |
| 3 | ED | CHASE |
| 4	| JENNIFER | DAVIS |

Kết quả sẽ trả về là:

| actor_id | first_name	| last_name |
|----------|------------|-----------|
| 1	| PENELOPE | GUINESS |
| 2	| NICK | WAHLBERG |

## Dưới đây là trình tự xử lý các câu lệnh SQL:

1. **FROM**: Bước đầu tiên trong một câu lệnh `SELECT` là xác định bảng (hoặc bảng kết hợp) từ đó bạn muốn truy xuất dữ liệu. Dòng `FROM` xác định nguồn dữ liệu của truy vấn.

2. **WHERE**: Nếu bạn muốn áp dụng điều kiện để lọc các dòng từ bảng, bạn có thể sử dụng phần `WHERE`. Điều này cho phép bạn chọn chỉ những dòng thỏa mãn một điều kiện cụ thể.

3. **GROUP BY**: Nếu bạn muốn nhóm dữ liệu dựa trên giá trị của một hoặc nhiều cột, bạn có thể sử dụng phần `GROUP BY`. Điều này thường đi kèm với các hàm tổng hợp như `SUM, AVG, COUNT, MAX, MIN` để tính toán thông tin thống kê trên các nhóm dữ liệu.

4. **HAVING**: Nếu bạn muốn lọc kết quả của `GROUP BY` bằng một điều kiện sau khi đã thực hiện nhóm, bạn có thể sử dụng phần `HAVING`.

5. **SELECT**: Đây là nơi bạn xác định cột hoặc biểu thức mà bạn muốn lấy từ kết quả truy vấn. `SELECT` xác định dữ liệu cụ thể bạn muốn truy xuất.

6. **ORDER BY**: Nếu bạn muốn sắp xếp kết quả truy vấn theo một hoặc nhiều cột, bạn có thể sử dụng phần `ORDER BY`. Điều này xác định thứ tự sắp xếp (`ASC` hoặc `DESC`) và cột sắp xếp.

7. **LIMIT / OFFSET**: Nếu bạn muốn hạn chế số lượng kết quả trả về hoặc bỏ qua một số hàng đầu tiên, bạn có thể sử dụng phần `LIMIT` và `OFFSET`.

8. **JOIN**: Nếu bạn muốn kết hợp dữ liệu từ nhiều bảng, bạn có thể sử dụng các phép `JOIN` như `INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL OUTER JOIN` để kết hợp dữ liệu từ các bảng khác nhau.

9. **UNION / INTERSECT / EXCEPT**: Nếu bạn muốn kết hợp hoặc so sánh kết quả của nhiều câu truy vấn, bạn có thể sử dụng các toán tử như `UNION`, `INTERSECT` và `EXCEPT`.

10. **Subqueries (Câu lệnh con)**: Bạn có thể sử dụng câu lệnh con để thực hiện một truy vấn nhỏ bên trong truy vấn lớn hơn.

11. **Functions (Hàm)**: SQL cung cấp nhiều hàm tích hợp sẵn như `SUM, AVG, COUNT, MAX, MIN`, và các hàm người dùng tự định nghĩa để thực hiện các phép tính hoặc biểu đồ dữ liệu.
