## Lý thuyết
Để xóa một cột của bảng, bạn sử dụng mệnh đề `DROP COLUMN` trong câu lệnh `ALTER TABLE` như sau:

`ALTER TABLE tên_bảng DROP COLUMN tên_cột;`

Khi bạn xóa một cột khỏi một bảng, PostgreSQL sẽ tự động xóa tất cả các indexes (chúng ta sẽ đề cập về indexes ở khóa sau) và các ràng buộc liên quan đến cột đó.

Nếu cột mà bạn muốn xóa được sử dụng trong các đối tượng cơ sở dữ liệu khác như views, triggers, stores procedures, v.v., bạn không thể bỏ cột vì các đối tượng khác phụ thuộc vào nó. Trong trường hợp này, hãy thêm tùy chọn `CASCADE` vào mệnh đề `DROP COLUMN` để xóa cột và tất cả các đối tượng liên quan của nó:

`ALTER TABLE tên_bảng DROP COLUMN tên_cột CASCADE;`

Nếu bạn xóa một cột không tồn tại, PostgreSQL sẽ báo lỗi. Để tránh điều này, bạn có thể thêm tùy chọn `IF EXISTS` như sau:

`ALTER TABLE tên_bảng DROP COLUMN IF EXISTS tên_cột;`

Trong câu lệnh trên, nếu bạn xóa một cột không tồn tại, PostgreSQL sẽ đưa ra thông báo thay vì lỗi.

Nếu bạn muốn xóa nhiều cột của một bảng trong một lệnh, bạn có thể sử dụng câu lệnh sau:
```
ALTER TABLE tên_bảng
DROP COLUMN tên_cột_1,
DROP COLUMN tên_cột_2,
...;
```
Lưu ý rằng mỗi mệnh đề `DROP COLUMN` được phân tách bằng dấu phẩy (,).

PostgreSQL cho phép bạn xóa cột duy nhất của bảng, làm bảng trở nên không có cột nào, đây là điều không được phép trong tiêu chuẩn SQL.

## Lý thuyết
### Cú pháp của câu lệnh `DROP TABLE` trong PostgreSQL

Để xóa bảng hiện có khỏi cơ sở dữ liệu, bạn sử dụng câu lệnh `DROP TABLE` như sau:

`DROP TABLE [IF EXISTS] tên_bảng [CASCADE | RESTRICT];`

Bạn chỉ định tên bảng sau từ khóa `DROP TABLE` để xóa bảng vĩnh viễn khỏi cơ sở dữ liệu. Nếu bạn xóa một bảng không tồn tại, PostgreSQL sẽ báo lỗi. Để tránh tình trạng này, bạn có thể sử dụng tham số `IF EXISTS` theo sau câu lệnh `DROP TABLE`. 

- Trong trường hợp bảng mà bạn muốn xóa được sử dụng trong các views, constraints hoặc bất kỳ đối tượng nào khác, `CASCADE` cho phép bạn tự động xóa các đối tượng phụ thuộc đó cùng với bảng.

- `RESTRICT` từ chối việc xóa bảng nếu có bất kỳ đối tượng nào phụ thuộc vào nó. PostgreSQL sử dụng `RESTRICT` theo mặc định.

### Ví dụ về câu lệnh DROP TABLE trong PostgreSQL
Câu lệnh sau đây loại bỏ một bảng có tên `author` trong cơ sở dữ liệu:

`DROP TABLE author;`

Trong trường hợp bảng `author` không tồn tại, PostgreSQL sẽ phát sinh lỗi như sau:

`ERROR:  table "author" does not exist`

Để tránh lỗi này, bạn có thể sử dụng tham số `IF EXISTS`.

`DROP TABLE IF EXISTS author;`
