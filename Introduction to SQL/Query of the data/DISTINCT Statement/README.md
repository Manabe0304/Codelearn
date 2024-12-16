## Lý thuyết
### Giới thiệu về mệnh đề `SELECT DISTINCT` của PostgreSQL
Mệnh đề `DISTINCT` được sử dụng trong câu lệnh `SELECT` để xóa các hàng trùng lặp khỏi tập kết quả. Mệnh đề `DISTINCT` giữ một hàng cho mỗi nhóm trùng lặp. Có thể sử dụng `DISTINCT` trên một hoặc nhiều cột của bảng.

Sau đây minh họa cú pháp của mệnh đề `DISTINCT`:

`SELECT DISTINCT cột_1 FROM tên_bảng;`

Trong câu lệnh này, các giá trị trong cột cột_1 được sử dụng để đánh giá trùng lặp. Nếu bạn chỉ định nhiều cột, mệnh đề `DISTINCT` sẽ đánh giá trùng lặp dựa trên sự kết hợp các giá trị của các cột này.

`SELECT DISTINCT cột_1, cột_2 FROM tên_bảng;`

Trong trường hợp này, sự kết hợp của các giá trị trong cả cột cột_1 và cột_2 sẽ được sử dụng để đánh giá trùng lặp.

Lưu ý rằng biểu thức `DISTINCT ON` phải khớp với biểu thức ngoài cùng bên trái trong mệnh đề `ORDER BY`.

Sau đây chúng ta sẽ lấy bảng `color` làm mẫu:

| id | bcolor	| fcolor |
|----|--------|--------|
| 1	| red | red |
| 2	| red	| red |
| 3	| red	| null |
| 4	| null | red |
| 5	| red	| green |
| 6	| red | blue |
| 7	| green	| red |
### Ví dụ về PostgreSQL `DISTINCT` trên một cột
Câu lệnh sau đây chọn các giá trị duy nhất trong cột `bcolor` từ bảng t1 và sắp xếp tập kết quả theo thứ tự bảng chữ cái bằng cách sử dụng mệnh đề `ORDER BY`.

`SELECT DISTINCT bcolor FROM color ORDER BY bcolor;`

Đầu ra là
| bcolor |
|--------|
| green |
| red |
| null |
### Ví dụ về PostgreSQL `DISTINCT` trên nhiều cột
Câu lệnh sau trình bày cách sử dụng mệnh đề `DISTINCT` trên nhiều cột:
```
SELECT DISTINCT bcolor, fcolor FROM color 
ORDER BY bcolor, fcolor;
```
Đầu ra là
| bcolor | fcolor |
|--------|--------|
| green	| red |
| red	| blue |
| red	| green |
| red	| red |
| red	| null |
| null | red |

Vì chúng ta đã chỉ định cả hai cột `bcolor` và `fcolor` trong mệnh đề `SELECT DISTINCT`, PostgreSQL đã kết hợp các giá trị trong cả hai cột `bcolor` và `fcolor` để đánh giá tính duy nhất của các hàng. Truy vấn trả về sự kết hợp độc đáo của `bcolor` và `fcolor` từ bảng t1. Lưu ý rằng bảng t1 có hai hàng có giá trị màu đỏ trong cả cột `bcolor` và `fcolor`. Khi chúng ta áp dụng `DISTINCT` cho cả hai cột, một hàng đã bị xóa khỏi tập kết quả vì nó là bản sao.
