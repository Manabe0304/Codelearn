## Lý thuyết
Giả sử người quản lý cửa hàng yêu cầu bạn tìm một người mà anh ta không nhớ chính xác tên. Anh ta chỉ nhớ rằng tên của vị đấy bắt đầu bằng một âm gì đấy đọc kiểu như là `Jen`. Làm thế nào để bạn tìm thấy được chính xác người mà quản lý cửa hàng đang yêu cầu?

Bạn có thể tìm thấy diễn viên trong bảng `actor` bằng cách nhìn vào cột `first_name` để xem liệu có bất kỳ giá trị nào bắt đầu với `Jen` không. Đó không phải là cách hay.

May mắn thay, bạn có thể sử dụng toán tử `LIKE` trong PostgreSQL để truy vấn như sau:
```
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'JEN%';
```
Với bảng `actor` như sau:

| actor_id | first_name	| last_name |
|----------|------------|-----------|
| 1	| PENELOPE | GUINESS |
| 2	| NICK | WAHLBERG |
| 3	| ED | CHASE |
| 4	| JENNIFER | DAVIS |
| 5	| JOHNNY | LOLLOBRIGIDA |

Kết quả trả về sẽ là:

| first_name | last_name |
|------------|-----------|
| JENNIFER | DAVIS |

Lưu ý rằng mệnh đề `WHERE` chứa một biểu thức đặc biệt: `first_name`, toán tử `LIKE` và một chuỗi chứa một phần trăm (%) ký tự, được gọi là một mẫu (pattern).

Bạn xây dựng một mẫu bằng cách kết hợp một chuỗi với các ký tự đại diện (wildcard characters) và sử dụng toán tử `LIKE` hoặc `NOT LIKE` để tìm các kết quả khớp với mẫu. PostgreSQL cung cấp hai ký tự đại diện như sau:

- Dấu phần trăm (`%`) để khớp với bất kỳ chuỗi ký tự nào.
- Dấu gạch dưới (`_`) để khớp với bất kỳ ký tự đơn nào.

### Ví dụ về việc khớp mẫu (pattern matching) trong PostgreSQL
Xem ví dụ sau:
```
SELECT
'foo' LIKE 'foo', -- true
'foo' LIKE 'f%', -- true
'foo' LIKE '_o_', -- true
'bar' LIKE 'b_'; -- false
```
Giải thích kết quả trả về của chúng, ta có:

- Biểu thức đầu tiên trả về `true` vì mẫu của `foo` không chứa bất kỳ ký tự đại diện nào nên toán tử `LIKE` hoạt động như toán tử bằng (=).
- Biểu thức thứ hai trả về `true` vì nó khớp với bất kỳ chuỗi nào bắt đầu bằng chữ f và theo sau là bất kỳ số lượng ký tự nào.
- Biểu thức thứ ba trả về `true` vì mẫu (_o_) khớp với bất kỳ chuỗi nào bắt đầu bằng bất kỳ ký tự đơn nào, theo sau là ký tự o và kết thúc bằng bất kỳ ký tự đơn nào.
- Biểu thức thứ tư trả về `false` vì mẫu b_ khớp với bất kỳ chuỗi nào bắt đầu bằng chữ b và theo sau là bất kỳ ký tự đơn nào.

Bạn có thể sử dụng ký tự đại diện ở đầu và / hoặc cuối mẫu. Ví dụ: truy vấn sau đây trả về các khách hàng có tên đầu tiên chứa chuỗi er, ví dụ: `Jenifer`, `Kimberly`, v.v.
```
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE '_HER%';
```
Biểu thức khớp với khách hàng có tên bắt đầu bằng bất kỳ ký tự đơn nào, được theo sau bởi chuỗi ký tự `HER` và kết thúc bằng bất kỳ số lượng ký tự nào.

## Lý thuyết
### Ví dụ về NOT LIKE trong PostgreSQL
Truy vấn sau đây trả về khách hàng có `first_name` không bắt đầu bằng `Jen`:
```
SELECT first_name, last_name
FROM actor
WHERE first_name NOT LIKE 'JEN%';
```
Lưu ý rằng chúng ta sử dụng toán tử `NOT LIKE` trong mệnh đề `WHERE`.

Đối với bảng `actor` như sau:

| actor_id | first_name	| last_name |
|----------|------------|-----------|
| 1	| PENELOPE | GUINESS |
| 2	| NICK | WAHLBERG |
| 3	| ED | CHASE |
| 4	| JENNIFER | DAVIS |
| 5	| JOHNNY | LOLLOBRIGIDA |

Kết quả trả về sẽ là:

| actor_id | first_name	| last_name |
|----------|------------|-----------|
| 1	| PENELOPE | GUINESS |
| 2	| NICK | WAHLBERG |
| 3	| ED | CHASE |
| 5	| JOHNNY | LOLLOBRIGIDA |

### Phần mở rộng về toán tử LIKE trong PostgreSQL
PostgreSQL cung cấp toán tử `ILIKE` hoạt động như toán tử `LIKE`. Ngoài ra, toán tử `ILIKE` khớp với giá trị không phân biệt chữ hoa chữ thường. Xem ví dụ sau:
```
SELECT first_name, last_name
FROM actor
WHERE first_name ILIKE 'BAR%';
```
Đối với bảng `actor` như sau:

| actor_id | first_name	| last_name |
|----------|------------|-----------|
| 1	| BARR | Guiness |
| 2	| Barr | Guiness |
| 3	| Ed | Chase |
| 4	| JENNIFER | DAVIS |
| 5	| JOHNNY | LOLLOBRIGIDA |

Kết quả trả về sẽ là:

| actor_id | first_name	| last_name |
|----------|------------|-----------|
| 1	| BARR | Guiness |
| 2	| Barr | Guiness |

Mẫu `BAR%` khớp với bất kỳ chuỗi nào bắt đầu bằng `BAR`, `Bar`, `BaR`, v.v. Nếu bạn sử dụng toán tử `LIKE` thay vào đó, truy vấn sẽ không trả về bất kỳ hàng nào.

PostgreSQL cũng cung cấp một số toán tử hoạt động như toán tử `LIKE`, `NOT LIKE`, `ILIKE` và `NOT ILIKE` như dưới đây:

- ~~ tương đương với `LIKE`
- ~~* tương đương với `ILIKE`
- !~~ tương đương với `NOT LIKE`
- !~~* tương đương với `NOT ILIKE`
