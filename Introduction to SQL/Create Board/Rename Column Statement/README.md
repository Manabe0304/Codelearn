## Lý thuyết
Để đổi tên một cột của bảng, bạn sử dụng câu lệnh `ALTER TABLE` với mệnh đề `RENAME COLUMN` như sau:

`ALTER TABLE tên_bảng RENAME COLUMN tên_cột TO tên_cột_mới;`
Trong câu lệnh này thì ta có:

- Đầu tiên, chỉ định bảng chứa cột mà bạn muốn đổi tên sau mệnh đề `ALTER TABLE`.
- Thứ hai, xác định tên cột sau mệnh đề `RENAME COLUMN`.
- Thứ ba, đặt tên mới cho cột sau từ khóa `TO`.
Từ khóa `COLUMN` trong câu lệnh là tùy chọn, do đó bạn có thể bỏ qua nó như thể hiện trong câu lệnh sau:

`ALTER TABLE tên_bảng RENAME tên_cột TO tên_cột_mới;`
### Ví dụ về câu lệnh `RENAME COLUMN` trong PostgreSQL 
Đầu tiên, tạo bảng mới `customer`.
```
CREATE TABLE customers (
    id serial PRIMARY KEY,
    name VARCHAR NOT NULL,
    phone VARCHAR NOT NULL,
    email VARCHAR
);
```
Các câu lệnh này đổi tên hai cột `name` và cột `phone` của bảng `customers` thành `customer_name` và `contact_phone` lần lượt như sau:
```
ALTER TABLE customers RENAME COLUMN name TO customer_name;
ALTER TABLE customers RENAME phone TO contact_phone;
```
