## Lý thuyết
Cú pháp `CREATE TABLE` của PostgreSQL

Để tạo một bảng mới trong PostgreSQL, bạn sử dụng câu lệnh `CREATE TABLE`. Phần sau đây minh họa cú pháp của câu lệnh `CREATE TABLE`:
```
CREATE TABLE tên_bảng (
   tên_cột kiểu_dữ_liệu ràng_buộc,
   tên_cột kiểu_dữ_liệu ràng_buộc
);
```
Hãy xem xét cú pháp cơ bản nhất của câu lệnh `CREATE TABLE`:

- Đầu tiên, bạn chỉ định tên của bảng mới sau mệnh đề `CREATE TABLE`.
- Tiếp theo, bạn liệt kê tên cột, kiểu dữ liệu và loại ràng buộc. Một bảng có thể có nhiều cột được phân tách bằng dấu phẩy (,). Các ràng buộc (có thể có hoặc không) sẽ được đề cập ở các bài học sau. 

Ví dụ về câu lệnh `CREATE TABLE` trong PostgreSQL

Chúng ta sẽ tạo một bảng mới có tên `account` có các cột sau với các kiểu dữ liệu tương ứng:

- `user_id` – **SERIAL**
- `username` – **VARCHAR(50)**
- `password` – **VARCHAR(50)**
- `email` – **VARCHAR(355)**
- `created_on` – **DATE** với mặc định là ngày hiện tại
- `last_login` – **TIMESTAMP**

Câu lệnh sau đây tạo bảng `account`:
```
CREATE TABLE account(
   user_id SERIAL,
   username VARCHAR(50),
   password VARCHAR(50),
   email VARCHAR(355),
   created_on DATE DEFAULT CURRENT_DATE,
   last_login TIMESTAMP
);
```
### Ví dụ
Nhiệm vụ của bạn là tạo bảng `EMP` chứa các trường được mô tả dưới đây với các mô tả như sau:

- Cột `emp_id` có thể dài 4 chữ số, không có số thập phân.
- Cột `emp_name` có thể lưu trữ bất kỳ ký tự nào, tối đa 10 ký tự.
- Cột `hire_date` sẽ chấp nhận bất kỳ ngày nào, nhưng nếu giá trị không được cung cấp, giá trị mặc định là ngày hiện tại.
- Cột `salary` mô tả mức lương của nhân viên, sẽ chấp nhận các giá trị số có tối đa 7 chữ số. Nếu số chữ số lớn hơn 7 và nằm bên phải dấu thập phân, số sẽ được làm tròn.
- Cột `comm` (tỉ lệ hoa hồng) có giá trị mặc định là 0,03

```
CREATE TABLE EMP
(emp_id INTEGER,
emp_name VARCHAR(10),
hire_date DATE DEFAULT CURRENT_DATE,
salary DECIMAL(7,2),
comm DECIMAL(7,2) DEFAULT 0.03);
```
