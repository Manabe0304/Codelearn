## Bài tập
Bạn là giám đốc của công ty Stars và bạn lưu trữ thông tin về các diễn viên của mình trong mối quan hệ dưới đây:

Bảng `actor` liệt kê thông tin cho tất cả các diễn viên.

- `actor_id (SMALLINT)`: Khóa chính thay thế được sử dụng để nhận dạng duy nhất từng diễn viên trong bảng.
- `first_name (VARCHAR[50])`: Tên của diễn viên.
- `last_name (VARCHAR[50])`: Họ của diễn viên.

Liệt kê họ của các diễn viên và số lượng diễn viên có họ đó, kết quả trả về phải là những diễn viên có họ có số lượng nhiều hơn 1. Lưu ý rằng `last_name` phải được sắp xếp tăng dần.

Ví dụ
Cho bảng `actor`

actor_id	| first_name	| last_name
----------|-------------|----------
1	| PENELOPE	| GUINESS
2	| NICK	| WAHLBERG
3	| ED	| GUINESS
4	| JENNIFER	| DAVIS
5	| JOHNNY	| LOLLOBRIGIDA

Kết quả trả về là

last_name	| number_of_last_name 
----------|--------------------
GUINESS	| 2
