Lý thuyết
Có nhiều trường hợp bạn muốn chuyển đổi một giá trị của một loại dữ liệu thành một loại dữ liệu khác. PostgreSQL cung cấp cho bạn toán tử CAST cho phép bạn thực hiện việc này. Dưới đây minh họa cú pháp của loại CAST:

CAST( biểu_thức AS loại_dữ_liệu_đích );
Trong cú pháp này:

Đầu tiên, chỉ định một biểu thức có thể là hằng số, cột bảng, biểu thức ước lượng thành giá trị.
Sau đó, chỉ định kiểu dữ liệu đích mà bạn muốn chuyển đổi kết quả của biểu thức.
Ngoài cú pháp CAST, bạn có thể sử dụng cú pháp sau để chuyển đổi giá trị của loại này sang loại khác:

biểu_thức::loại
Hãy lấy một số ví dụ về việc sử dụng toán tử CAST để chuyển đổi giá trị của một chuỗi thành loại khác.

 SELECT CAST('100' AS INTEGER); --100
 SELECT CAST('01-OCT-2015' AS DATE); --2015-10-01
 SELECT CAST('10.2' AS DOUBLE PRECISION); --10.2
 SELECT CAST('true' AS BOOLEAN); --true
 SELECT '15 minute'::INTERVAL; --00:15:00
 SELECT '2 week'::INTERVAL; --14 days
