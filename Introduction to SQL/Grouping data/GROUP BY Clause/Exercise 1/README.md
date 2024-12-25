## Bài tập
Bạn làm việc tại một công ty khởi nghiệp nhỏ chỉ có một số ít nhân viên. Vì công ty quá nhỏ, một số nhân viên phải làm việc tại một số phòng ban cùng một lúc. Bởi vì điều này, thông tin về các nhóm nhân viên làm việc trong cùng một bộ phận được lưu trữ trong hai bảng, bộ phận (departments) và nhân viên (employees) riêng biệt. Các bảng được cấu trúc như sau:

- `departments`:
  - `department_name(varchar[50])`: tên bộ phận duy nhất;
- `employees`:
  - `name(varchar[50])`: tên và họ duy nhất của nhân viên.

Cho các bảng `departments` và `employees`, bạn phải chuẩn bị một báo cáo về nhân viên công ty và các phòng ban mà họ làm việc. Để làm điều này, bạn chỉ cần kết hợp các hàng của hai bảng, sau đó sắp xếp các hàng kết quả trước theo tên của các bộ phận và sau đó theo tên của nhân viên.

## Ví dụ
Cho bảng `departments`

id	| department_name
----|----------------
1	| IT
2	| PD

Và bảng `employees`:

id	| name	| role
----|-------|-----
1	| Donald Cole	| Artist
2	| James Richard	| Artist
3	| John Tucker	| Artist
4	| Donald Cole	| Engineer

Kết quả đầu ra sẽ là:

department_name	| name
----------------|-----
IT	| Donald Cole
IT	| James Richard
IT	| John Tucker
PD	| Donald Cole
PD	| James Richard
PD	| John Tucker
