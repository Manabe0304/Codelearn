## Lý thuyết
Để thêm một cột mới vào một bảng hiện có, hãy sử dụng câu lệnh `ALTER TABLE` `ADD COLUMN` như sau:

```ALTER TABLE tên_bảng ADD COLUMN tên_cột_mới kiểu_dữ_liệu DEFAULT giá_trị;```
- Đầu tiên, chỉ định bảng mà bạn muốn thêm một cột mới trong mệnh đề `ALTER TABLE`.
- Thứ hai, chỉ ra tên cột với thuộc tính của nó, chẳng hạn như kiểu dữ liệu, giá trị mặc định, v.v., trong mệnh đề `ADD COLUMN`.
- Nếu cột bạn muốn thêm vào có giá trị mặc định, hãy thêm giá trị đấy sau mệnh đề `DEFAULT`.

Để thêm nhiều cột vào một bảng hiện có, bạn sử dụng nhiều mệnh đề ADD COLUMN trong câu lệnh `ALTER TABLE` như sau:
```
ALTER TABLE tên_bảng
ADD COLUMN tên_cột_mới_1 kiểu_dữ_liệu ràng_buộc DEFAULT giá_trị,
ADD COLUMN tên_cột_mới_2 kiểu_dữ_liệu ràng_buộc DEFAULT giá_trị,
...;
```
Chúng ta sẽ đề cập đến những ràng buộc ở các bài sau.

### Các ví dụ về lệnh `ADD COLUMN` trong PostgreSQL
Câu lệnh `CREATE TABLE` tạo một bảng mới có tên là bảng `customers` với hai cột: `id` và `customer_name`:
```
CREATE TABLE customers (
  id SERIAL PRIMARY KEY,
  customer_name VARCHAR NOT NULL
);
```
Sau khi sử dụng câu lệnh sau:
```
ALTER TABLE customers 
ADD COLUMN phone VARCHAR;
ALTER TABLE customer 
ADD COLUMN fax VARCHAR,
ADD COLUMN email VARCHAR;
```
Kết quả là chúng ta có cấu trúc của bảng customers như sau:

| cột	| loại |
|-----|------|
| id | integer |
| customer_name	| character varying |
| phone	| character varying | 
| fax	| character varying | 
| email	| character varying | 

Như bạn thấy, chúng ta đã có các `phone`, `fax`, và cột `email` đã được thêm vào cuối danh sách cột của bảng `customers`. Ngoài ra, từ khóa `PRIMARY KEY` trong ví dụ sẽ được đề cập ở phần tiếp theo.
