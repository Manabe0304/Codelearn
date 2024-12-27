## Lý thuyết
### Giới thiệu về truy vấn con trong PostgreSQL
Hãy bắt đầu với một ví dụ đơn giản.

Giả sử chúng ta muốn tìm những bộ phim có tỷ lệ cho thuê cao hơn giá cho thuê trung bình. Ta có thể làm điều đó theo hai bước:

- Tìm tỷ lệ cho thuê trung bình bằng cách sử dụng câu lệnh `SELECT` và hàm trung bình (`AVG`).
- Sử dụng kết quả của truy vấn đầu tiên trong câu lệnh `SELECT` thứ hai để tìm các bộ phim mà chúng ta muốn.

Truy vấn con là một truy vấn được lồng bên trong một truy vấn khác, chẳng hạn như `SELECT`, `INSERT`, `DELETE` và `UPDATE`. Trong hướng dẫn này, chúng ta chỉ tập trung vào câu lệnh `SELECT`.

Để xây dựng một truy vấn con, chúng ta đặt truy vấn thứ hai trong ngoặc và sử dụng nó trong mệnh đề `WHERE` làm biểu thức:
```
SELECT film_id, title, rental_rate
FROM film
WHERE rental_rate > (
      SELECT AVG(rental_rate) FROM film
   );
```
Cho bảng sau

film_id	| title	| rental_rate
--------|-------|------------
1	| ACADEMY DINOSAUR	| 0.99
2	| ACE GOLDFINGER	| 4.99
3	| ADAPTATION HOLES	| 2.99
4	| AFFAIR PREJUDICE	| 2.99
5	| AFRICAN EGG	| 2.99

Kết quả đầu ra sẽ là

film_id	| title	| rental_rate
--------|-------|------------
2	| ACE GOLDFINGER	| 4.99

Truy vấn bên trong ngoặc được gọi là truy vấn con hoặc truy vấn bên trong. Truy vấn có chứa truy vấn con được gọi là truy vấn bên ngoài.

PostgreSQL thực thi truy vấn có chứa một truy vấn con theo trình tự sau:

- Đầu tiên, thực hiện các truy vấn con.
- Thứ hai, nhận kết quả và chuyển nó đến truy vấn bên ngoài.
- Thứ ba, thực hiện các truy vấn bên ngoài.
