## Bài tập
Bảng `program` và bảng `loan` được định nghĩa như sau:
```
CREATE TABLE program (
    id TEXT PRIMARY KEY,
    max_amount NUMERIC(10,2) NOT NULL
);
CREATE TABLE loan (
    approval_date DATE NOT NULL,
    bank_id SMALLINT NOT NULL,
    bank_zip TEXT NOT NULL,
    borrower_id SMALLINT NOT NULL,
    gross_approval NUMERIC(10,2) NOT NULL,
    max_amount NUMERIC(10,2) NOT NULL,
    program_id TEXT NOT NULL,
    term_in_months SMALLINT,
    intial_interest_rate NUMERIC(10,2) NOT NULL,
    PRIMARY KEY (approval_date, bank_id, borrower_id),
    FOREIGN KEY (bank_id) REFERENCES bank(id),
    FOREIGN KEY (program_id) REFERENCES program(id),
    FOREIGN KEY (borrower_id) REFERENCES borrower(id)
);
```
**KHÓA CHÍNH** của bảng `loan` bao gồm `borrower_id`, `bank_id` và `approval_date`. Tuy nhiên, `max_amount` chỉ phụ thuộc vào chương trình cho vay (hiện được lưu trữ trong bảng `program`). Thay đổi bảng `loan` để đáp ứng **3NF**.

## Gợi ý
Cột `max_amount` cho khoản vay phụ thuộc vào chương trình của khoản vay (`program`) nhưng không phụ thuộc vào **KHÓA CHÍNH** của bảng `loan`. Cấu trúc này vi phạm **3NF**. `max_amount` chỉ nên được lưu trữ trong bảng `program` chứ không phải trong bảng `loan`. Vì vậy, trong bảng `loan`, bạn nên xóa cột `max_amount`.

Sau khi bạn đã thực hiện xóa cột `max_amount` và chạy dòng lệnh:
```
-- Show all columns of 'loan' table
SELECT * FROM loan;
```
Kết quả sẽ hiện lên như sau

| approval_date	| bank_id	| borrower_id	| gross_approval | program_id	| term_in_months | initial_interest_rate | 
|---------------|---------|-------------|----------------|------------|----------------|-----------------------|
| 1990-03-21 | 1 | 9 | 25000.00	| 7a | 36	| 10.12 | 
| 1997-02-09 | 2 | 2 | 126030.12 | 504 | 60 | 6.3 |
| 2002-01-13 | 2 | 2 | 30000.90	| 504	| 48 | 5.15 |

Lúc này bảng `loan` đã đạt chuẩn **3NF.**

## Code SQL
```
-- Tạo bảng program
CREATE TABLE program (
    id TEXT PRIMARY KEY,
    max_amount NUMERIC(10,2) NOT NULL
);

-- Tạo bảng loan với cột max_amount vi phạm 3NF
CREATE TABLE loan (
    approval_date DATE NOT NULL,
    bank_id SMALLINT NOT NULL,
    bank_zip TEXT NOT NULL,
    borrower_id SMALLINT NOT NULL,
    gross_approval NUMERIC(10,2) NOT NULL,
    max_amount NUMERIC(10,2) NOT NULL,
    program_id TEXT NOT NULL,
    term_in_months SMALLINT,
    intial_interest_rate NUMERIC(10,2) NOT NULL,
    PRIMARY KEY (approval_date, bank_id, borrower_id),
    FOREIGN KEY (bank_id) REFERENCES bank(id),
    FOREIGN KEY (program_id) REFERENCES program(id),
    FOREIGN KEY (borrower_id) REFERENCES borrower(id)
);

-- Xóa cột max_amount khỏi bảng loan để đáp ứng 3NF
ALTER TABLE loan DROP COLUMN max_amount;

-- Thêm dữ liệu mẫu vào bảng program
INSERT INTO program (id, max_amount)
VALUES
('7a', 5000000.00),
('504', 6000000.00);

-- Thêm dữ liệu mẫu vào bảng loan
INSERT INTO loan (
    approval_date, bank_id, bank_zip, borrower_id, gross_approval, 
    program_id, term_in_months, intial_interest_rate
) VALUES
('1990-03-21', 1, '70000', 9, 25000.00, '7a', 36, 10.12),
('1997-02-09', 2, '10000', 2, 126030.12, '504', 60, 6.3),
('2002-01-13', 2, '10000', 2, 30000.90, '504', 48, 5.15);

-- Hiển thị toàn bộ cột của bảng loan
SELECT * FROM loan;
```
-- Alter the 'loan' table to satisfy 3NF
ALTER TABLE loan DROP max_amount;

-- Show all columns of 'loan' table
SELECT * FROM loan; 
