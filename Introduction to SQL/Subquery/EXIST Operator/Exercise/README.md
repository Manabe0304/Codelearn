## Bài tập
Vào đầu năm học này, bạn đã soạn ra một danh sách các câu lạc bộ và một danh sách các thành viên của các câu lạc bộ. Thông tin thu thập được lưu trữ trong cơ sở dữ liệu cục bộ của bạn trong hai bảng có cấu trúc sau:

- **clubs**
  - `id(smallint)`: id riêng của từng câu lạc bộ
  - `name(varchar[50])`: tên câu lạc bộ
- **students**
  - `id(smallint)`: id riêng của từng sinh viên
  - `name(varchar[50])`: tên sinh viên
  - `club_id(smallint)`: id của câu lạc bộ mà sinh viên đó tham gia

Mỗi học sinh chỉ có thể là thành viên của một câu lạc bộ duy nhất và bị cấm rời bỏ câu lạc bộ cho đến khi hết năm. Tuy nhiên, một số câu lạc bộ đã bị đóng cửa do lượng người tham dự thấp và bạn cần cập nhật cơ sở dữ liệu của mình để phản ánh điều đó. Bạn đã cập nhật bảng `clubs`, và bây giờ bảng `students` cũng nên được cập nhật.

Cho các bảng `clubs` và `students`, hãy trả về bảng kết quả chứa các bản ghi từ các học sinh có `club_id` bằng với một số `id` của các câu lạc bộ. Bảng nên được sắp xếp theo `id` của sinh viên.

## Ví dụ
Với dữ liệu của bảng `students`

id	| name	| club_id
----|-------|--------
3	| Richard Gear	| 23
6	| Jennifer Offencerence	| 11
14	| Obiten Kenobi	| 87
36	| Closece	| 87

và bảng `clubs`

id	| name
----|-----
23	| Theater club
64	| Soccer club
87	| Glee club

thì kết quả đầu ra sẽ là

id	| name	| club_id
----|-------|--------
3	| Richard Gear	| 23
14	| Obiten Kenobi	| 87
36	| Closece	| 87
