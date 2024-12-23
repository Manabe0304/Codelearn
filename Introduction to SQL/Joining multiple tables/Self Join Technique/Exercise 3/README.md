## Bài tập
Sau khi đã giải quyết bài tập vừa rồi, với hai trường như `size2010` và `size2015`, bạn muốn xác định mức tăng phần trăm từ `size2010` lên `size2015` theo định nghĩa sau:
```
Với hai trường số A và B, phần trăm tăng trưởng từ A đến B có thể được tính là:
(B - A)/A ∗ 100.0.
```
Hãy thêm một trường mới vào bảng kết quả từ bài trước, đặt tên là `grow_perc`, tính toán tỷ lệ tăng dân số từ năm 2010 đến 2015 cho mỗi quốc gia. Đối với cột `grow_perc`, hãy làm tròn đến chữ số thứ 5 sau dấu thập phân.

## Ví dụ
Với dữ liệu như sau của bảng `populations`:

pop_id	| country_code	| year	| fertility_rate	| life_expectation	| size
--------|---------------|-------|-----------------|-------------------|-----
20	| ABW	| 2010	| 1.704	| 74.9535	| 101597
19	| ABW	| 2015	| 1.647	| 75.5736	| 103889
2	| AFG	| 2010	| 5.746	| 58.9708	| 27962200
1	| AFG	| 2015	| 4.653	| 60.7172	| 32526600

Kết quả đầu ra sẽ là:

country_code	| size2010	| size2015	| growth_perc
--------------|-----------|-----------|------------
ABW	| 101597	| 103889	| 2.25597
AFG	| 27962200	| 32526600	| 16.32347

## Gợi ý
Sử dụng kiến thức về `ROUND()` và `CAST()` để xử lí phép tính toán. Bởi vì `size2010` và `size2015` đều là số nguyên nên bạn cần ép kiểu hai cột này thành số thực trước khi thực hiện tính toán.
