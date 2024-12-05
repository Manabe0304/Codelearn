## Bài tập
Bảng `employees` có cấu trúc như sau:

- Cột `emp_id(VARCHAR[7])`: id của mỗi nhân viên.
- Cột `emp_name(VARCHAR[50])`: tên của nhân viên.
- Cột `hire_date(VARCHAR[10])`: ngày mà nhân viên được thuê.
- Cột `salary(DECIMAL[7,2])`: lương của mỗi nhân viên.
- Cột `com(DECIMAL[7,2])`: số phần trăm hoa hồng.

Tháng này, có nhiều nhân viên mới gia nhập công ty của bạn, vì vậy công việc của bạn là THÊM những dữ liệu của các nhân viên đấy vào bảng `employees`. Danh sách dưới đây là thông tin mà bộ phận nhân sự cung cấp cho bạn:

- Tên nhân viên mới là Harry, ID nhân viên của anh ta là SE20001. Anh ta bắt đầu làm việc cho công ty Star từ 2017-01-01. Bộ phận nhân sự đề nghị cho anh ta mức lương 2000 đô la và đối với họ, tỷ lệ hoa hồng của anh ta là khoảng 0,03.
- Tên nhân viên mới là Hermione, ID nhân viên của anh ta là SE20002. Cô ta bắt đầu làm việc cho công ty Star từ 2018-01-01. Bộ phận nhân sự đã cung cấp cho cô ta 2000,55 đô la và đối với họ, tỷ lệ hoa hồng của cô ta là khoảng 0,04.
- Tên nhân viên mới là Ron, ID nhân viên của anh ta là SE20003. Anh bắt đầu làm việc cho công ty Star từ 2017 / 02-01. Bộ phận nhân sự đề nghị anh ta 3000 đô la và đối với họ, tỷ lệ hoa hồng của anh ta là khoảng 0,03.
- Tên nhân viên mới là Gimmy, ID nhân viên của cô ta là SE20004. Anh bắt đầu làm việc cho công ty Star từ 2019-01-03. Bộ phận nhân sự đề nghị cô ta 3000 đô la và đối với họ, tỷ lệ hoa hồng của cô ta là khoảng 0,03.
Giới hạn thời gian thực thi: 2 giây (PosgreSQL)

## Gợi ý
Sau khi bạn điền vào chỗ trống và chạy IDE, kết quả sẽ hiển thị cho bảng `employees` mới là:

| emp_id | emp_name	| hire_date	| salary | com |
|--------|----------|-----------|--------|-----|
| SE20001	| Harry	| 2017-01-01 | 2000.00 | 0.03 |
| SE20002	| Hermione | 2018-01-01	| 2000.55	| 0.04 |
| SE20003	| Ron	| 2017-02-01 | 3000.00 | 0.03 |
| SE20004	| Gimmy	| 2019-01-03 | 3000.00 | 0.03 |
