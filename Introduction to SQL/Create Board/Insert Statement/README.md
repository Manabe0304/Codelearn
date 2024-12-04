## Lý thuyết
Sau đây minh họa cú pháp của câu lệnh `INSERT`:

`INSERT INTO bảng(cột1, cột2, …) VALUES (giá_trị1, giá_trị2, …);`
- Đầu tiên, bạn chỉ định tên của bảng mà bạn muốn chèn một hàng mới sau mệnh đề `INSERT INTO`, theo sau là danh sách cột được phân tách bằng dấu phẩy.
- Thứ hai, bạn liệt kê một danh sách giá trị được phân tách bằng dấu phẩy sau mệnh đề `VALUES`. Danh sách giá trị phải theo cùng thứ tự với danh sách cột được chỉ định sau tên bảng.

### Ví dụ chèn ở PostgreSQL
Câu lệnh sau chèn các hàng mới vào bảng link gồm có 5 cột `id, url, name, description, rel`:
```
INSERT INTO link (id, url, name,description, rel)
VALUES ('1','http://www.postgresqltutorial.com','PostgreSQL Tutorial',NULL,NULL);
INSERT INTO link (id, url, name)
VALUES ('2','http://www.oreilly.com','O''Reilly Media');
INSERT INTO link
VALUES ('3','http://www.codelearn.io','Codelearn',NULL,NULL);
```
Để chèn dữ liệu ký tự, bạn phải đặt nó trong dấu phẩy đơn (‘) chẳng hạn `'PostgreSQL Tutorial'`. Đối với kiểu dữ liệu số, bạn không cần phải làm như vậy, chỉ cần sử dụng các số đơn giản như 1, 2, 3.

Nếu bạn bỏ qua bất kỳ cột nào chấp nhận `NULL` value trong câu lệnh `INSERT`, cột sẽ lấy giá trị mặc định của nó. Trong trường hợp giá trị mặc định không được đặt cho cột, cột sẽ lấy giá trị `NULL`.

Bạn có thể xác minh hàng được chèn bằng cách sử dụng câu lệnh `SELECT`:

`SELECT * FROM link; --Hiển thị tất cả các bản ghi của bảng link`

Đầu ra sẽ là:

| id | url | name | description | rel |
|----|-----|------|-------------|-----|
| 1	| http://www.postgresqltutorial.com	| PostgreSQL Tutorial | null | null |
| 2	| http://www.oreilly.com | O'Reilly Media	| null | null |
| 3	| http://www.codelearn.io	| Codelearn	| null | null |

**Để thêm nhiều hàng vào một bảng cùng một lúc, bạn sử dụng cú pháp sau:**
```
INSERT INTO bảng (cột1, cột2, …) 
VALUES
	(giá_trị1, giá_trị2, …),
	(giá_trị1, giá_trị2, …);
```
Bạn chỉ cần thêm danh sách giá trị được phân tách bằng dấu phẩy sau danh sách đầu tiên, mỗi giá trị trong danh sách được phân tách bằng dấu phẩy (,).

**Để chèn dữ liệu đến từ một bảng khác, bạn sử dụng câu lệnh `INSERT INTO SELECT` như sau:**
```
INSERT INTO bảng(cột1, cột2,...)
SELECT  cột1, cột2,...
FROM  bảng_khác WHERE  điều_kiện;
```
Đầu tiên, chỉ định những cột của bảng mà bạn muốn truy vấn dữ liệu trong mệnh đề `SELECT`. Thứ hai, chỉ định tên của bảng mà bạn muốn truy vấn dữ liệu sau từ khóa `FROM`. Mệnh đề `WHERE` được sử dụng để lọc các hàng mà bạn chèn dữ liệu từ bảng_khác vào bảng. Chúng ta sẽ tìm hiểu thêm về các mệnh đề này ở các bài học sau.

Câu lệnh `INSERT INTO` sẽ chèn tất cả dữ liệu mà bạn đã lấy được từ bảng_khác.

Nếu bạn muốn chỉ chèn giá trị duy nhất từ một bảng khác, bạn có thể sử dụng từ khóa `DISTINCT` trong câu lệnh `SELECT`:
```
INSERT INTO bảng(cột1,cột2,...)
SELECT DISTINCT cột1, cột2,...
FROM bảng_khác WHERE điều_kiện;
```
