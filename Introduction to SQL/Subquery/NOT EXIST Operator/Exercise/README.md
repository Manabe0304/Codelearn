## Bài tập
Bạn mới bắt đầu làm việc cho một công ty lớn và thành công, và thật bất ngờ khi thấy rằng các hồ sơ về tổ chức nội bộ của công ty chưa được cập nhật từ lâu. Một số nhân viên đã thay đổi bộ phận của họ và một số đã từ chức, và do đó, có một số bộ phận không có nhân viên trong đó. Bạn muốn xác định các bộ phận này.

Thông tin về nhân viên và phòng ban được lưu trữ trong hai bảng, `departments` và `employees`, có cấu trúc như sau:

- `departments`:
  - `id(smallint)`: id duy nhất của phòng ban.
  - `department_name(varchar[50])`: tên phòng ban.
- `employees`:
  - `id(smallint)`: id duy nhất của nhân viên.
  - `name(varchar[50])`: tên đầy đủ của nhân viên.
  - `department_id(varchar[50])`: tham chiếu khóa ngoại đến `departments.id`;

Cho các bảng `employees` và `departments`, xây dựng một bảng chỉ có một cột là cột `department_name`, chứa tất cả các phòng ban không có nhân viên, được sắp xếp theo `id`.

## Ví dụ
Đối với dữ liệu từ bảng `departments`

id	| department_name
----|----------------
1	| DU1
2	| HR
3	| Sales
4	| Warehousing
5	| Logistics

và bảng `employees`

id	| name	| department_id
----|-------|--------------
1	| Becky A.	| 1
2	| Dan B.	| 1
3	| Sharon F.	| 1
4	| Dan M.	| 3
5	| Malcom S.	| 6

kết quả trả về sẽ là

| department_name |
|-----------------|
| HR |
| Warehousing |
| Logistics |
