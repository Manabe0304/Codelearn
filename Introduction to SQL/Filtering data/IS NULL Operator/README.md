## Lý thuyết
Trong thế giới cơ sở dữ liệu, `NULL` có nghĩa là thiếu hoặc không có thông tin. Để kiểm tra xem giá trị có phải là `NULL` hay không, bạn sử dụng toán tử `IS NULL`:

`giá_trị IS NULL`

Để kiểm tra xem giá trị không phải là `NULL`, bạn sử dụng toán tử `IS NOT NULL`:

`giá_trị IS NOT NULL`

Cho bảng `contacts`

| id | first_name	| last_name	| email	| phone |
|----|------------|-----------|-------|-------|
| 1	| Duyen	| Nguyen | trungduyen0220@gmail.com	| null | 
| 2	| Yen	| Luyen | ltyen@gmail.com | 0123456789 | 
| 3	| Nam	| Bui	| nambc@gmail.com	| 090151262 |

Để lấy được thông tin liên lạc của người không có số liên nào nào được lưu trong cột điện thoại, bạn sử dụng câu lệnh sau thay thế:
```
SELECT id, first_name, last_name, email, phone
FROM contacts
WHERE phone IS NULL;
```
| id | first_name	| last_name	| email	| phone |
|----|------------|-----------|-------|-------|
| 1	| Duyen	| Nguyen | trungduyen0220@gmail.com	| null | 
 
Để tìm người liên hệ có số điện thoại, bạn sử dụng câu lệnh sau:
```
SELECT id, first_name, last_name, email, phone
FROM contacts
WHERE phone IS NOT NULL;
```
| id | first_name	| last_name	| email	| phone |
|----|------------|-----------|-------|-------|
| 2	| Yen	| Luyen | ltyen@gmail.com | 0123456789 | 
| 3	| Nam	| Bui	| nambc@gmail.com	| 090151262 |
