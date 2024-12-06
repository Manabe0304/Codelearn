## Lý thuyết
### Câu lệnh thay đổi kiểu dữ liệu của cột trong PostgreSQL
Để thay đổi kiểu dữ liệu của một cột, bạn sử dụng câu lệnh `ALTER TABLE` như sau:

`ALTER TABLE tên_bảng ALTER COLUMN tên_cột [SET DATA] TYPE kiểu_dữ_liệu_mới;`

Hãy xem xét câu lệnh này một cách chi tiết hơn:

- Đầu tiên, chỉ định tên của bảng chứa cột bạn muốn thay đổi ở mệnh đề `ALTER TABLE`.
- Thứ hai, đặt tên của cột đấy sau mệnh đề `ALTER COLUMN`.
- Thứ ba, cung cấp kiểu dữ liệu mới cho cột sau từ khóa `TYPE`. Có thể sử dụng `SET DATA TYPE` hay `TYPE` đều được.
Để thay đổi kiểu dữ liệu của nhiều cột trong một câu lệnh, bạn hãy sử dụng cú pháp sau:
```
ALTER TABLE tên_bảng
ALTER COLUMN tên_cột_1 [SET DATA] TYPE kiểu_dữ_liệu_mới,
ALTER COLUMN tên_cột_2 [SET DATA] TYPE kiểu_dữ_liệu_mới,
...;
```
Ví dụ về việc thay đổi kiểu dữ liệu của cột trong PostgreSQL

Hãy cùng nhau tạo một bảng mới có tên là `assets`:
```
CREATE TABLE assets (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    asset_no VARCHAR NOT NULL,
    description TEXT,
    location TEXT,
    acquired_date DATE NOT NULL
);
```
Câu lệnh sau đây thay đổi các kiểu dữ liệu của cột `location` và cột `description` từ `TEXT` sang `VARCHAR`:
```
ALTER TABLE assets 
ALTER COLUMN location TYPE VARCHAR,
ALTER COLUMN description TYPE VARCHAR;
```
