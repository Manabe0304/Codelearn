## Bài tập
Bảng `populations` mang dữ liệu dân số của một số quốc gia trong hai năm `2010` và `2015`. Nó được lưu trữ với các cột sau:

- `pop_id(SMALLINT)`: khóa chính thay thế được sử dụng để nhận dạng duy nhất mỗi quốc gia tại một thời điểm trong bảng.
- `country_code(CHAR[3])`: một hình thức ngắn đại diện cho tên quốc gia.
- `year(CHAR[4])`: năm 2010 hoặc 2015.
- `fertility_rate(DECIMAL)`: tỷ lệ sinh của đất nước.
- `life_expectation(DECIMAL)``: tuổi thọ trung bình của đất nước.
- `size(BIGINT)`: dân số của nước đấy.

Sử dụng kỹ thuật `SELF JOIN` để so sánh kích thước của dân số giữa hai năm `2010` và `2015`. Bảng kết quả sẽ có 3 cột, cột đầu tiên là `country_code` - hiển thị mã quốc gia của một quốc gia, cột thứ hai là `size2010`, nó hiển thị kích thước của dân số của quốc gia đó vào năm `2010` và `size2015` cho thấy quy mô dân số năm `2015`.

## Ví dụ
Với dữ liệu của bảng `populations` như sau:

pop_id	| country_code	| year	| fertility_rate	| life_expectation	| size
--------|---------------|-------|-----------------|-------------------|-----
20	| ABW	| 2010	| 1.704	| 74.9535	| 101597
19	| ABW	| 2015	| 1.647	| 75.5736	| 103889
2	| AFG	| 2010	| 5.746	| 58.9708	| 27962200
1	| AFG	| 2015	| 4.653	| 60.7172	| 32526600

Kết quả đầu ra sẽ là:

country_code	| size2010	| size2015
--------------|-----------|---------
ABW	| 101597	| 103889
AFG	| 27962200	| 32526600
