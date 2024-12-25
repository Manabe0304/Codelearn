## Bài tập
Bạn tò mò về phân phối địa lý của người dùng CodeLearn, vì vậy bạn đã tạo một danh sách các quốc gia cùng với số lượng người dùng đã đăng ký từ mỗi quốc gia. Nhiệm vụ của bạn bây giờ là tính toán số lượng người dùng trên mỗi lục địa.

Thông tin về các quốc gia được lưu trữ trong bảng `countries`, có 3 cột:

- `country(VARCHAR[50])`: tên quốc gia;
- `continent(VARCHAR[50])`: tên của lục địa nơi quốc gia tọa lạc;
- `users(SMALLINT)`: số lượng người dùng đã đăng ký trên CodeLearn trong cả nước.

Câu trả lời phải là một bảng có 2 cột, `continent` và `users`, được sắp xếp theo số lượng người dùng theo thứ tự giảm dần.

## Ví dụ
Cho bảng `countries`

country	| continent	| users
--------|-----------|------
Armenia	| Europe	| 1000
France	| Europe	| 1300
Russia	| Europe	| 3000
USA	| North America	| 5000

Bảng kết quả trả về là

continent	| users
----------|------
Europe	| 5300
North America	| 5000
