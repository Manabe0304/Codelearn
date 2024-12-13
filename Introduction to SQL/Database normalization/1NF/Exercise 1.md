## Bài tập
Dưới đây là định nghĩa của bảng `borrower`:
```
CREATE TABLE borrower (
    id SMALLINT PRIMARY KEY,
    full_name VARCHAR (100) NOT NULL
);
```
Hãy thay đổi bảng `borrower` để đáp ứng 1NF.

### Gợi ý
Bảng `borrower` hiện tại không đáp ứng 1NF bởi vì cột `full_name`. Để đáp ứng chuẩn **1NF**, thêm cột `first_name` và cột `last_name` đồng thời xóa cột `full_name`.

Với bảng `borrower` ban đầu chưa có data sẽ có cấu trúc như sau

| id | full_name |
|----|-----------|

Sau khi xóa cột `full_name` và thêm các cột `first_name`, `last_name`. IDE sẽ chạy các lệnh dưới đây để chèn dữ liệu vào bảng `borrower` và hiển thị tất cả các thông tin của người vay.
```
-- Insert data to borrower table
INSERT INTO borrower VALUES (1,'Duyen','Nguyen');
INSERT INTO borrower VALUES (2,'Nam','Bui');
INSERT INTO borrower VALUES (4,'Yen','Luyen');
-- Show all information of the borrowers
SELECT * FROM borrower;
```
Kết quả đầu ra sẽ là
| id | first_name | last_name |
|----|------------|-----------|
| 1 | Duyen | Nguyen |
| 2	| Nam | Bui | 
| 4	| Yen | Luyen |

### Code SQL
```
CREATE TABLE borrower (
    id SMALLINT PRIMARY KEY,
    full_name VARCHAR (100) NOT NULL
);

-- Add new columns to the borrower table
ALTER TABLE borrower
ADD COLUMN first_name VARCHAR (100) NOT NULL, 
ADD COLUMN last_name VARCHAR (100) NOT NULL;

-- Remove column from borrower table to satisfy 1NF
ALTER TABLE borrower
DROP COLUMN full_name;

-- Insert data to the borrower table
INSERT INTO borrower VALUES (1,'Duyen','Nguyen');
INSERT INTO borrower VALUES (2,'Nam','Bui');
INSERT INTO borrower VALUES (4,'Yen','Luyen');

-- Show all information of the borrowers
SELECT * FROM borrower;
```
