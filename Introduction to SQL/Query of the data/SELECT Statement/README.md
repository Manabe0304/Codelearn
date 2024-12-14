## Lý thuyết
Một trong những tác vụ phổ biến nhất, khi bạn làm việc với PostgreSQL, là truy vấn dữ liệu từ các bảng bằng cách sử dụng câu lệnh `SELECT`. Sau đây minh họa cú pháp của câu lệnh `SELECT`:

`SELECT cột_1, cột_2,... FROM tên_bảng;`

Hãy xem xét câu lệnh `SELECT` chi tiết hơn:

- Đầu tiên, chỉ định cột của bảng mà bạn muốn truy vấn dữ liệu trong mệnh đề `SELECT`. Nếu bạn truy xuất dữ liệu từ nhiều cột, hãy sử dụng danh sách các cột được phân tách bằng dấu phẩy. Trong trường hợp bạn muốn truy vấn dữ liệu từ tất cả các cột, bạn có thể sử dụng dấu hoa thị (*) là một cách viết ngắn gọn.
- Thứ hai, chỉ định tên của bảng mà bạn muốn truy vấn dữ liệu sau từ khóa `FROM`.

Giả sử bạn chỉ muốn biết `first_name`, `last_name` của các diễn viên được lưu trữ thông tin trong bảng `actor` bạn có thể chỉ định các tên cột này trong mệnh đề `SELECT` như trong truy vấn sau:

`SELECT first_name, last_name FROM actor;`

Chúng ta có bảng `actor` như sau:

| actor_id | first_name	| last_name	| last_update |
|----------|------------|-----------|-------------|
| 1	| PENELOPE | GUINESS | 2006-02-15 | 04:34:33 |
| 2	| NICK | WAHLBERG | 2006-02-15 | 04:34:33 |
| 3	| ED | CHASE | 2006-02-15 | 04:34:33| 

Đầu ra sẽ là:

| first_name | last_name | 
|------------|-----------|
| PENELOPE | GUINESS | 
| NICK | WAHLBERG | 
| ED | CHASE |

