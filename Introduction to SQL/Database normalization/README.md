## Lý thuyết
**Chuẩn hóa dữ liệu (Data Normalization)** là một kỹ thuật trong thiết kế cơ sở dữ liệu nhằm giảm thiểu sự dư thừa dữ liệu, đảm bảo tính toàn vẹn và tính nhất quán của dữ liệu. Quá trình này giúp các bảng được tổ chức một cách khoa học và tránh các bất thường về dữ liệu. Dưới đây là nội dung tóm tắt và giải thích chi tiết:

### Mục đích của chuẩn hóa dữ liệu
- **Giảm dư thừa dữ liệu (Data Redundancy)**: Loại bỏ việc lưu trữ dữ liệu giống nhau ở nhiều nơi.
- **Tăng tính toàn vẹn của dữ liệu**: Ngăn ngừa các lỗi hoặc mâu thuẫn giữa các bảng trong cơ sở dữ liệu.
- **Đơn giản hóa quản lý dữ liệu**: Làm cho cơ sở dữ liệu dễ hiểu hơn và hỗ trợ tốt hơn cho các thao tác như thêm, sửa, xóa dữ liệu.

### Những bất thường nếu không chuẩn hóa
1. Chèn dị thường (Insertion anomalies):
- Xảy ra khi cần thêm dữ liệu mà phải lặp lại thông tin không cần thiết.
- Ví dụ: Khi thêm 100 sinh viên ngành Khoa học Máy tính, thông tin về ngành, HOD, và số điện thoại văn phòng bị lặp lại 100 lần.
2. Cập nhật dị thường (Updation anomalies):
- Xảy ra khi cần sửa thông tin ở nhiều nơi, nếu bỏ sót có thể dẫn đến dữ liệu không nhất quán.
- Ví dụ: Nếu HOD (ông X) thay đổi, toàn bộ bản ghi của sinh viên ngành CSE phải được cập nhật. Nếu bỏ sót một bản ghi, dữ liệu sẽ không đồng bộ.
3. Xóa dị thường (Deletion anomalies):
- Xảy ra khi xóa một bản ghi dẫn đến mất thông tin liên quan.
- Ví dụ: Nếu xóa thông tin sinh viên cuối cùng của ngành CSE, thông tin về ngành này cũng sẽ bị mất.

### Lợi ích của chuẩn hóa dữ liệu
- Giảm trùng lặp dữ liệu: Lưu thông tin một lần, tránh lưu ở nhiều nơi.
- Tăng tính nhất quán: Mọi thay đổi chỉ cần thực hiện tại một nơi duy nhất, giảm thiểu rủi ro mâu thuẫn dữ liệu.
- Cấu trúc rõ ràng hơn: Dữ liệu được tổ chức sao cho các đối tượng liên quan được ánh xạ một cách hợp lý và dễ quản lý hơn.

### Ví dụ minh họa
#### Bảng không chuẩn hóa (Student):

| rollno | name	| branch | hod | office_tel |
|--------|------|--------|-----|------------|
| 401	| Akon | CSE | Mr. X | 53337 | 
| 402	| Bkon | CSE | Mr. X | 53337 | 
| 403	| Ckon | CSE | Mr. X | 53337 | 
| 404	| Dkon | CSE | Mr. X | 53337 | 

#### Vấn đề:
- Dư thừa dữ liệu: branch, hod, và office_tel lặp lại ở mỗi bản ghi.
- Bất thường: Như đã phân tích ở trên (chèn, cập nhật, xóa).
#### Bảng chuẩn hóa:

Bảng Student:

| rollno | name	| branch |
|--------|------|--------|
| 401	| Akon | CSE |
| 402	| Bkon | CSE |
| 403	| Ckon | CSE |
| 404	| Dkon | CSE |

Bảng Branch:

| branch_code	| branch_name	| hod	| office_tel |
|-------------|-------------|-----|------------|
| CSE	| Computer Science | Mr.X	| 53337 | 

### Kết luận
Chuẩn hóa dữ liệu không chỉ giúp giảm dung lượng lưu trữ mà còn hỗ trợ tối ưu hóa hiệu suất và đảm bảo tính chính xác của cơ sở dữ liệu. Việc áp dụng chuẩn hóa đúng cách là nền tảng để xây dựng một hệ thống quản lý dữ liệu hiệu quả và bền vững.






