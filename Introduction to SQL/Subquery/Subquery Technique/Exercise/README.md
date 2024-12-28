## Bài tập
Bạn là giám đốc của công ty Stars và bạn lưu trữ thông tin về các diễn viên của mình, các bộ phim của bạn trong các mối quan hệ dưới đây:

Bảng phim là một danh sách của tất cả các bộ phim có khả năng trong kho.

- `film_id (smallint)`: Khóa chính thay thế được sử dụng để nhận dạng duy nhất từng phim trong bảng.
- `title (varchar[255])`: Tiêu đề của bộ phim.

Bảng `actor` là một danh sách của tất cả các bộ phim có tiềm năng trong kho.

- `actor_id (smallint)`: Khóa chính thay thế được sử dụng để nhận dạng duy nhất từng diễn viên trong bảng.
- `first_name (varchar[50])`: Tên của diễn viên.
- `last_name (varchar[50])`: Họ của diễn viên.
- `last_update (timestamp)`: Thời gian mà bản ghi được tạo hoặc cập nhật gần đây nhất.

Bảng `film_actor` được sử dụng để hỗ trợ mối quan hệ nhiều-nhiều giữa phim và diễn viên. Đối với mỗi diễn viên trong một bộ phim nhất định, sẽ có một hàng trong bảng Film_Actor liệt kê diễn viên và phim.

- `actor_id (smallint)`: Khóa ngoại xác định diễn viên.
- `film_id (smallint)`: Khóa ngoại xác định phim.
- `last_update (timestamp)`: Thời gian mà hàng được tạo hoặc cập nhật gần đây nhất.

Sử dụng các truy vấn con để hiển thị tất cả các diễn viên xuất hiện trong phim `ACADEMY DINOSAUR`.

Bạn nên sắp xếp bảng kết quả đã cho theo thứ tự tăng dần theo `first_name`, `last_name` của các diễn viên

## Ví dụ
Đối với dữ liệu sau đây của bảng `actor`

actor_id	| first_name	| last_name	| last_update
----------|-------------|-----------|------------
1	| PENELOPE	| GUINESS	| 2006-02-15 04:34:33
2	| NICK	| WAHLBERG	| 2006-02-15 04:34:33
3	| ED	| CHASE	| 2006-02-15 04:34:33
4	| JENNIFER	| DAVIS	| 2006-02-15 04:34:33
5	| JOHNNY	| LOLLOBRIGIDA	| 2006-02-15 04:34:33

Bảng `film`

film_id	| title
--------|------
1	| ACADEMY DINOSAUR
2	| ACE GOLDFINGER
3	| ADAPTATION HOLES

Và bảng `film_actor`:

actor_id	| film_id	| last_update
----------|---------|------------
1	| 1	| 2006-02-15 05:05:03
4	| 1	| 2006-02-15 05:05:03
1	| 3	| 2006-02-15 05:05:03
2	| 3	| 2006-02-15 05:05:03

kết quả đầu ra sẽ là

first_name	| last_name
------------|----------
JENNIFER	| DAVIS
PENELOPE	| GUINESS
