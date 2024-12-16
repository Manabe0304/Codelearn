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

