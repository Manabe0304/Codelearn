## Lý thuyết
Để xóa dữ liệu khỏi bảng, bạn sử dụng câu lệnh `DELETE` PostgreSQL như dưới đây:

`DELETE FROM bảng WHERE điều_kiện; `

Trong cú pháp này:

- Đầu tiên, chỉ định bảng mà bạn muốn xóa dữ liệu trong mệnh đề DELETE FROM.
- Thứ hai, chỉ định những hàng cần xóa bằng cách sử dụng điều kiện trong mệnh đề WHERE. Mệnh đề WHERE là tùy chọn. Tuy nhiên, nếu bạn bỏ qua nó, câu lệnh DELETE sẽ xóa tất cả các hàng trong bảng.
### Ví dụ về DELETE trong PostgreSQL
Chúng ta sẽ sử dụng các bảng `link`. Sau đây minh họa nội dung của bảng `link`:

`SELECT * FROM link;`
| id | url | name	| description	| rel |
|----|-----|------|-------------|-----|
| 1	| http://www.postgresqltutorial.com	| PostgreSQL | Tutorial	| (Null) | (Null) |
| 2	| http://www.oreilly.com | O'Reilly Media	| (Null) | (Null) |
| 3	| http://www.google.com	| Google | (Null)	| (Null) |
| 4	| http://www.yahoo.com | Yahoo | (Null) | (Null) | 
| 5	| http://www.bing.com	| Bing | (Null) | (Null) |

Câu lệnh sau sẽ xóa các hàng có giá trị trong cột `id` khác với 1 và 5:
```
DELETE FROM link WHERE id  NOT IN (1, 5); 
SELECT * FROM link;
```
| id | url | name	| description	| rel |
|----|-----|------|-------------|-----|
| 1	| http://www.postgresqltutorial.com	| PostgreSQL | Tutorial	| (Null) | (Null) |
| 5	| http://www.bing.com	| Bing | (Null) | (Null) |
