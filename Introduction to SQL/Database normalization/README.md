## Lý thuyết
Chuẩn hóa dữ liệu (**Data normalization**) được thực hiện trên các bảng trong cơ sở dữ liệu để bảo vệ khỏi sự dị thường của dữ liệu và đảm bảo tính toàn vẹn của dữ liệu.

Nếu một bảng không được chuẩn hóa đúng cách và tồn tại sự dư thừa dữ liệu thì nó sẽ không chỉ ăn thêm dung lượng bộ nhớ mà còn gây khó khăn cho việc thao tác đối với cơ sở dữ liệu. Các hiện tượng chèn, cập nhật và xóa dị thường sẽ xảy ra rất thường xuyên nếu cơ sở dữ liệu không được chuẩn hóa. Để hiểu những bất thường này, chúng ta hãy lấy một ví dụ về bảng `Student` như sau:

| rollno | name	| branch | hod | office_tel |
|--------|------|--------|-----|------------|
| 401	| Akon | CSE | Mr. X | 53337 | 
| 402	| Bkon | CSE | Mr. X | 53337 | 
| 403	| Ckon | CSE | Mr. X | 53337 | 
| 404	| Dkon | CSE | Mr. X | 53337 | 

Trong bảng trên, ta có dữ liệu của 4 sinh viên ngành Khoa học máy tính. Như chúng ta có thể thấy, dữ liệu có các trường `branch`, `hod` (viết tắt của Head of department) và `office_tel` lặp đi lặp lại đối với các sinh viên học cùng một chi nhánh trong trường đại học, đây là dư thừa dữ liệu (`Data Redundancy`).

Giả sử nếu phải chèn dữ liệu của 100 sinh viên cùng ngành, thì thông tin chi nhánh sẽ được lặp lại cho tất cả 100 sinh viên đó. Đây chính là chèn dị thường (`Insertion anomalies`).

Nếu ông X rời trường đại học thì sao? Hoặc không còn là HOD của khoa khoa học máy tính? Trong trường hợp đó, tất cả các hồ sơ học sinh sẽ phải được cập nhật, và nếu nhầm lẫn thì ta sẽ bỏ lỡ bất kỳ hồ sơ nào, nó sẽ dẫn đến sự không thống nhất dữ liệu. Đây là cập nhật dị dường (`Updation anomaly`).

Trong bảng `Student`, hai thông tin khác nhau được lưu giữ cùng nhau, Thông tin sinh viên và Thông tin chi nhánh. Do đó, vào cuối năm học, nếu hồ sơ của sinh viên bị xóa, ta cũng sẽ mất thông tin chi nhánh. Đây là xóa dị thường (`Deletion anomaly`).

Để làm rõ lý do tại sao chúng ta cần biết về chủ đề này, chuẩn hóa dữ liệu có các lợi ích sau.

- Giảm sự trùng lặp về dữ liệu
- Tính nhất quán của dữ liệu được tăng lên để các thực thể (entities) không có sự  xung đột về dữ liệu trong các bảng khác nhau.
- Dữ liệu được sắp xếp sao cho các đối tượng dữ liệu ánh xạ tốt hơn tới các bản ghi trong bảng.
