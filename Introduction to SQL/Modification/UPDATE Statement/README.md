## Lý thuyết
Để thay đổi giá trị của các cột trong bảng, bạn sử dụng câu lệnh `UPDATE` . Sau đây minh họa cú pháp của câu lệnh `UPDATE` :
```
UPDATE bảng
SET cột_1 = giá_trị1, cột_2 = giá_trị2 ,...
WHERE điều_kiện;
```
Hãy kiểm tra cú pháp của câu lệnh một cách chi tiết hơn như sau:

- Đầu tiên, chỉ định tên bảng nơi bạn muốn cập nhật dữ liệu sau mệnh đề `UPDATE`.
- Thứ hai, liệt kê các cột có giá trị bạn muốn thay đổi trong mệnh đề `SET`. Nếu bạn cập nhật giá trị trong nhiều cột, bạn sử dụng dấu phẩy (,) để phân tách từng cặp cột và giá trị. Các cột không có trong danh sách giữ lại các giá trị ban đầu của chúng.
- Thứ ba, xác định hàng nào bạn muốn cập nhật trong điều kiện của mệnh đề `WHERE`. Chúng ta sẽ tìm hiểu mệnh đề `WHERE` sau.

Hãy cùng kiểm tra nội dung của bảng `link`:

| id | url | name	| description	| rel	| last_update |
|----|-----|------|-------------|-----|-------------|
| 1	| http://www.postgresqltutorial.com	| PostgreSQL Tutorial	| (Null) | (Null)	| (Null) |
| 2	| http://www.oreilly.com | O'Reilly Media	| (Null) | (Null) | (Null)| 
| 3	| http://www.google.com	| Google | (Null)	| (Null) | (Null) |
| 4	| http://www.facebook.com	| Facebook | (Null)	| (Null) | 2013-06-02 | 

Để thay đổi giá trị `NULL` của cột `last_update` thành ngày `2019-06-02`, bạn sử dụng câu lệnh sau:
```
UPDATE link
SET last_update = '2019-06-02'
WHERE last_update IS NULL;
--Show information of all links
SELECT * FROM link;
```

| id | url | name	| description	| rel	| last_update |
|----|-----|------|-------------|-----|-------------|
| 1	| http://www.postgresqltutorial.com	| PostgreSQL Tutorial	| (Null) | (Null)	| 2019-06-02 |
| 2	| http://www.oreilly.com | O'Reilly Media	| (Null) | (Null) | 2019-06-02 | 
| 3	| http://www.google.com	| Google | (Null)	| (Null) | 2019-06-02 |
| 4	| http://www.facebook.com	| Facebook | (Null)	| (Null) | 2013-06-02 | 

Mệnh đề `WHERE` chỉ cập nhật các hàng có giá trị trong cột `last_update` là `NULL`.

## Lý thuyết
Đây là một cách để cập nhật các cột của bảng dựa trên các giá trị trong bảng khác:
```
UPDATE bảng_a
SET cột_cần_cập_nhật = bảng_b.cột_cập_nhật_theo
FROM bảng_b
WHERE điều_kiện_1 AND điều_kiện_2 OR ...;
```
Truy vấn này thực hiện như sau:

1. Đối với mỗi hàng trong `bảng_a`, tìm hàng tương ứng trong `bảng_b` trong đó `điều_kiện_1`, `điều_kiện_2`, v.v., được đáp ứng.
2. Đặt giá trị của `cột_cập_nhật` thành giá trị của `cột_cập_nhật_theo` (từ hàng tương ứng đó).

Các điều kiện thường so sánh các cột khác của cả hai bảng, ví dụ: `bảng_a.cột_a = bảng_b.cột_b`. Tất nhiên, truy vấn này chỉ có ý nghĩa nếu chỉ có một hàng khớp trong `bảng_b`.
