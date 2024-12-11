## Lý thuyết 
**Dạng chuẩn đầu tiên (1NF)** là bước cơ bản đầu tiên trong quá trình chuẩn hóa cơ sở dữ liệu. Yêu cầu chính của 1NF là các bảng trong cơ sở dữ liệu phải được thiết kế sao cho:

**1. Tính nguyên tử của dữ liệu (Atomicity):**

Mỗi cột phải chỉ chứa một giá trị duy nhất, không thể chia nhỏ thêm.

**2. Không chứa tập hợp hoặc danh sách lặp:**

Các giá trị trong cột không được chứa danh sách hoặc tập hợp các giá trị.

### Ví dụ minh họa
Giả sử trường trung học duy trì thông tin sinh viên trong một bảng `Student` như sau:

| id | name | courses	| home_room | 
|----|------|---------|-----------|
| 122	| Nguyen Thi My Duyen	| DBI, CEA, SYB	| 102 | 
| 132	| Dinh Lan Huong | DBI, SWE | 103 | 
| 135	| Bui Cong Nam | Summit 1, Summit 2, SWQ | 105 | 

### Các vấn đề trong bảng chưa chuẩn hóa
**1. Cột `courses` không nguyên tử:**

Mỗi sinh viên có nhiều khóa học, nhưng các khóa học này được lưu trong một ô duy nhất, vi phạm nguyên tắc nguyên tử.

**2. Khó khăn trong cập nhật:**

- Khi Duyên đổi môn CEA sang SWE, nếu thao tác không cẩn thận, sẽ dễ dẫn đến lỗi như thêm trùng lặp SWE (DBI, SWE, SYB, SWE).
- Nếu Nam muốn bảo lưu môn Summit 2, việc chỉnh sửa hoặc xóa chỉ môn học đó rất phức tạp.

**3. Khó quản lý và phân tích:**

- Không thể dễ dàng tính toán số lượng sinh viên tham gia một khóa học cụ thể.
- Dữ liệu không rõ ràng để sử dụng trong báo cáo hoặc thống kê.

### Để đáp ứng 1NF, bảng cần được tổ chức lại như sau:

#### Các thay đổi cần thiết
`. Tách cột `courses` thành các giá trị nguyên tử, mỗi hàng chỉ chứa một khóa học duy nhất.
2. Tách cột `name` thành `first_name` và `last_name` để rõ ràng hơn.

### Bảng sau khi chuẩn hóa (đáp ứng 1NF):
| id | first_name | last_name | courses	| home_room | 
|----|------------|-----------|---------|-----------|
| 122 | Duyen | Nguyen Thi My | DBI	| 102 | 
| 122 | Duyen | Nguyen Thi My | SWE	| 102 | 
| 122 | Duyen | Nguyen Thi My | SYB	| 102 | 
| 132 | Huong | Dinh Lan | DBI | 103 | 
| 132 | Huong | Dinh Lan | SWE | 103 | 
| 135 | Nam	| Bui Cong | Summit 1 | 105 | 
| 135 | Nam	| Bui Cong | Summit 2 | 105 | 
| 135 | Nam | Bui Cong | SWQ | 105 |

### Lợi ích khi đạt 1NF
**1. Dễ dàng thêm, sửa, xóa dữ liệu:**

- Có thể cập nhật môn học của một sinh viên mà không ảnh hưởng đến các môn học khác.
- Xóa hoặc bảo lưu một môn học không làm mất thông tin sinh viên.

**2. Cấu trúc rõ ràng, dễ hiểu:**

Các giá trị đã được tổ chức lại, mỗi hàng chỉ đại diện cho một thông tin duy nhất.

**3. Phân tích và báo cáo dễ dàng hơn:**

Có thể dễ dàng tìm được tất cả sinh viên tham gia một khóa học cụ thể.

## Kết luận:
Chuẩn hóa lên 1NF không chỉ đảm bảo tính chính xác và hiệu quả của dữ liệu mà còn giúp dễ dàng quản lý, truy vấn và phân tích. Đây là bước đầu tiên nhưng rất quan trọng trong việc xây dựng cơ sở dữ liệu bền vững.
