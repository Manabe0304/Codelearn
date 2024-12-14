## Lý thuyết
Tên thay thế (alias) trong PostgreSQL gán một bảng hoặc một cột với tên tạm thời trong một truy vấn.

### Tên thay thế cho cột
Các tên thay thế chỉ tồn tại trong quá trình thực hiện truy vấn. Sau đây là cú pháp:

`SELECT tên_cột AS tên_thay_thế FROM bảng;`

Hoặc 

`SELECT tên_cột tên_thay_thế FROM bảng;`

Truy vấn sau đây tìm tên đầy đủ của tất cả các diễn viên:

`SELECT first_name || ' ' || last_name AS full_name FROM actor`

Ta có bảng `actor` như sau:
| actor_id | first_name	| last_name	| last_update |
|----------|------------|-----------|-------------|
| 1	| PENELOPE | GUINESS | 2006-02-15 | 04:34:33 |
| 2	| NICK | WAHLBERG | 2006-02-15 | 04:34:33 |
| 3	| ED | CHASE | 2006-02-15 | 04:34:33| 

Đầu ra sẽ là:

| full_name | 
|-----------|
| PENELOPE GUINESS | 
| NICK WAHLBERG | 
| ED CHASE | 

### Tên thay thế cho bảng
Sau đây minh họa cú pháp của tên thay thế của bảng:

`SELECT danh_sách_cột FROM tên_bảng AS tên_thay_thế;`

Hoặc

`SELECT danh_sách_cột FROM tên_bảng tên_thay_thế;`

Tương tự như tên thay thế của cột, sau từ khóa `AS` là tùy chọn. Tên thay thế của bảng có một số cách sử dụng. Đầu tiên, nếu bạn phải đủ điều kiện một tên cột có tên bảng dài, bạn có thể sử dụng tên thay thế của bảng để lưu tắt lại và làm cho truy vấn của bạn dễ đọc hơn. Ví dụ, thay vì sử dụng truy vấn sau:

`SELECT đây_là_một_cái_tên_bảng_rất_là_dài.tên_cột FROM đây_là_một_cái_tên_bảng_rất_là_dài;`

Bạn sử dụng tên thay thế của bảng như dưới đây:

`SELECT t.tên_cột FROM đây_là_một_cái_tên_bảng_rất_là_dài t;`

Trong ví dụ này, t là tên thay thế của bảng có tên là `đây_là_một_cái_tên_bảng_rất_là_dài`.
