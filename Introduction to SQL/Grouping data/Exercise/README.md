## Bài tập
Bạn là giám đốc của công ty Stars và bạn lưu trữ thông tin về các diễn viên của mình và các bộ phim của bạn trong các mối quan hệ dưới đây:

Bảng `film` là một danh sách của tất cả các bộ phim có tiềm năng:

- `film_id (smallint)`: Khóa chính thay thế được sử dụng để nhận dạng từng phim duy nhất trong bảng.
- `title (varchar[255])`: Tiêu đề của bộ phim.

Bảng `actor` liệt kê thông tin của tất cả các diễn viên.

- `actor_id (smallint)`: Khóa chính thay thế được sử dụng để nhận dạng từng diễn viên duy nhất trong bảng.
- `first_name (varchar[50])`: Tên của diễn viên.
- `last_name (varchar[50])`: Họ của diễn viên.
- `last_update (timestamp)`: Thời gian mà hàng dữ liệu được tạo hoặc cập nhật gần đây nhất.

Bảng `film_actor` được sử dụng để hỗ trợ mối quan hệ nhiều-nhiều giữa bảng `film` và bảng `actor`. Đối với mỗi diễn viên trong một bộ phim nhất định, sẽ có một hàng trong bảng `film_actor` liệt kê diễn viên và phim.

- `actor_id (smallint)`: Khóa ngoại xác định diễn viên.
- `film_id (smallint)`: Khóa ngoại xác định phim.
- `last_update (timestamp)`: Thời gian mà hàng dữ liệu được tạo hoặc cập nhật gần đây nhất.

Cho các bảng `actor, film, film_actor`, hãy xây dựng bảng kết quả phù hợp với các điều kiện sau: bảng nên có 3 cột là `first_name, last_name, films`. Bảng này sẽ chỉ có một hàng lưu trữ dữ liệu của diễn viên có nhiều phim nhất.

Nếu hai diễn viên có cùng số lượng phim, hãy sắp xếp dữ liệu theo `first_name, last_name` để tìm người phù hợp nhất.

## Ví dụ: 
Cho dữ liệu của bảng `actor`

actor_id	| first_name	| last_name	| last_update
----------|-------------|-----------|------------
1	| PENELOPE	| GUINESS	|2006-02-15 04:34:33
2	| NICK	| WAHLBERG	| 2006-02-15 04:34:33
3	| ED	| CHASE	| 2006-02-15 04:34:33

Bảng `film`

film_id | title
--------|------
1	| ACADEMY DINOSAUR
2	| ACE GOLDFINGER
3	| ADAPTATION HOLES
4	| AFFAIR PREJUDICE

Và bảng `film_actor`

actor_id	| film_id	| last_update
----------|---------|------------
1	| 1	| 2006-02-15 05:05:03
1	| 2	| 2006-02-15 05:05:03
1	| 3	| 2006-02-15 05:05:03
2	| 4	| 2006-02-15 05:05:03
3	| 2	| 2006-02-15 05:05:03

Kết quả đầu ra sẽ là

first_name	| last_name	| films
------------|-----------|------
PENELOPE	| GUINESS	| 3

Penelope Guiness có 3 phim trong khi Ace Goldfinger và Adaptation Holes đều có 2 phim và Affair Prejudice chưa tham gia bất kỳ bộ phim nào. Vì vậy, nổi tiếng nhất là Penelope Guiness với 3 bộ phim.

Gợi ý
Bạn có thể dụng `LIMIT 1` để chọn lọc duy nhất một bản ghi sau quá trình join. 
