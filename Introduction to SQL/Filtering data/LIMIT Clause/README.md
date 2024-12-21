## Lý thuyết
PostgreSQL `LIMIT` là một mệnh đề tùy chọn của câu lệnh `SELECT` trả về một tập hợp con các hàng được trả về bởi truy vấn. Sau đây minh họa cú pháp của mệnh đề `LIMIT`:

`SELECT * FROM tên_bảng LIMIT n;`

Câu lệnh trả về `n` hàng được tạo bởi truy vấn. Nếu `n` bằng 0, truy vấn trả về một tập hợp trống. Trong trường hợp n là NULL, truy vấn trả về cùng một kết quả bỏ qua mệnh đề `LIMIT`.

Vì thứ tự của các hàng trong bảng cơ sở dữ liệu là không xác định, nên khi bạn sử dụng mệnh đề `LIMIT`, bạn phải luôn sử dụng mệnh đề `ORDER BY` để kiểm soát thứ tự hàng. Nếu bạn không làm như vậy, bạn sẽ nhận được một tập kết quả có các hàng theo thứ tự không xác định.

Cho bảng `film`

| film_id	| title	| release_year | rental_duration | rental_rate |
|---------|-------|--------------|-----------------|-------------|
| 1	| ACADEMY DINOSAUR | 2006	| 6	| 0.99 | 
| 2	| ACE GOLDFINGER | 2006	| 3	| 4.99 | 
| 3	| ADAPTATION HOLES | 2006	| 7 |	2.99 | 
| 4	| AFFAIR PREJUDICE | 2006	| 5	| 2.99 | 
| 5	| AFRICAN EGG	| 2006 | 6 | 2.99 | 
| 6	| AGENT TRUMAN | 2006	| 3	| 2.99 | 
| 7	| AIRPLANE SIERRA	| 2006 | 6 | 4.99 | 
| 8	| AIRPORT POLLOCK	| 2006 | 6 | 4.99 | 
| 9	| ALABAMA DEVIL	| 2006 | 3 | 2.99 |
| 10 | ALADDIN CALENDAR	| 2006 | 6 | 4.99 |

Để có được 3 bộ phim đầu tiên được sắp xếp theo `film_id`:
```
SELECT film_id, title, release_year
FROM film
ORDER BY film_id
LIMIT 3;
```
| film_id	| title	| release_year | rental_duration | rental_rate |
|---------|-------|--------------|-----------------|-------------|
| 1	| ACADEMY DINOSAUR | 2006	| 6	| 0.99 | 
| 2	| ACE GOLDFINGER | 2006	| 3	| 4.99 | 
| 3	| ADAPTATION HOLES | 2006	| 7 |	2.99 | 
