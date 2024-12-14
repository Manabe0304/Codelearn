## Bài tập
Hãy chú ý đến cột `bank_zip` trong bảng `loan`. Bảng `bank` và bảng `loan` được thiết kế như sau:
```
CREATE TABLE bank (
    id SMALLINT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);
CREATE TABLE loan (
    approval_date DATE NOT NULL,
    bank_id SMALLINT NOT NULL,
    bank_zip TEXT NOT NULL,
    borrower_id SMALLINT NOT NULL,
    gross_approval NUMERIC(10,2) NOT NULL,
    max_amount NUMERIC(10,2) NOT NULL,
    program TEXT NOT NULL,
    term_in_months SMALLINT,
    intial_interest_rate NUMERIC(10,2) NOT NULL,
    PRIMARY KEY (approval_date, bank_id, borrower_id),
    FOREIGN KEY (bank_id) REFERENCES bank(id) 
);
```
Biết rằng, cột `bank_zip` chỉ phụ thuộc vào **KHÓA NGOẠI** (`bank_id`) được sử dụng để tạo **KHÓA CHÍNH** cho bảng `loan`. Thay đổi bảng `bank` và `loan` để đáp ứng các yêu cầu cho **Dạng chuẩn 2 (2NF)**. Bạn sẽ cần xóa một cột khỏi bảng `loan` để đáp ứng **2NF** cho bảng `loan`. Một cột mới, `zip(VARCHAR[10])`, nên được thêm vào bảng `bank` với mặc định là **'TBD'**(To be defined).

## Gợi ý
Bạn sẽ thấy đầu ra bên dưới nếu bạn làm tất cả đúng cách:

| approval_date	| bank_id	| borrower_id	| gross_approval | max_amount	| program	| term_in_months | initial_interest_rate | id	| name | zip |
|---------------|---------|-------------|----------------|------------|---------|----------------|-----------------------|----|------|-----|
| 1990-03-21 | 1 | 9 | 25000.00	| 5000000.00 | 7a	| 36 | 10.12 | 1 | ACB | TBD | 
| 1997-02-09 | 2 | 2 | 126030.12 | 6000000.00	| 504	60 | 6.3 | 2 | BIDV	| TBD | 
| 2002-01-13 | 2 | 2 | 30000.90	| 6000000.00 | 504 | 48	| 5.15 | 2 | BIDV	| TBD | 

Để giải thích, đầu ra bạn sẽ thấy là kết quả của truy vấn `INNER JOIN`:
```
--Show all the columns of loan and bank table using INNER JOIN
SELECT * FROM loan l 
INNER JOIN bank b ON b.id = l.bank_id 
ORDER BY approval_date, bank_id;
```
Nó sẽ hiển thị tất cả các cột của bảng `loan` và bảng `bank` theo thứ tự. Như bạn có thể thấy, cột `bank_zip` trong bảng `loan` đã bị xóa và có một cột mới có tên `zip` xuất hiện. Thông tin trong cột `zip` cũng đã được cập nhật (cột cuối cùng).

## Code SQL
```
-- Bước 1: Tạo bảng bank
CREATE TABLE bank (
    id SMALLINT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Bước 2: Tạo bảng loan
CREATE TABLE loan (
    approval_date DATE NOT NULL,
    bank_id SMALLINT NOT NULL,
    bank_zip TEXT NOT NULL,
    borrower_id SMALLINT NOT NULL,
    gross_approval NUMERIC(10,2) NOT NULL,
    max_amount NUMERIC(10,2) NOT NULL,
    program TEXT NOT NULL,
    term_in_months SMALLINT,
    intial_interest_rate NUMERIC(10,2) NOT NULL,
    PRIMARY KEY (approval_date, bank_id, borrower_id),
    FOREIGN KEY (bank_id) REFERENCES bank(id)
);

-- Bước 3: Thêm dữ liệu vào bảng bank
INSERT INTO bank (id, name) VALUES
(1, 'ACB'),
(2, 'BIDV');

-- Bước 4: Thêm dữ liệu vào bảng loan
INSERT INTO loan (approval_date, bank_id, bank_zip, borrower_id, gross_approval, max_amount, program, term_in_months, intial_interest_rate) VALUES
('1990-03-21', 1, '70000', 9, 25000.00, 5000000.00, '7a', 36, 10.12),
('1997-02-09', 2, '10000', 2, 126030.12, 6000000.00, '504', 60, 6.3),
('2002-01-13', 2, '10000', 2, 30000.90, 6000000.00, '504', 48, 5.15);

-- Bước 5: Thêm cột zip vào bảng bank với giá trị mặc định 'TBD'
ALTER TABLE bank
ADD COLUMN zip VARCHAR(10) DEFAULT 'TBD';

-- Bước 6: Xóa cột bank_zip khỏi bảng loan để đáp ứng 2NF
ALTER TABLE loan
DROP COLUMN bank_zip;

-- Bước 7: Thực hiện INNER JOIN để hiển thị tất cả các cột từ loan và bank
SELECT * FROM loan l
INNER JOIN bank b ON b.id = l.bank_id
ORDER BY approval_date, bank_id;
```
