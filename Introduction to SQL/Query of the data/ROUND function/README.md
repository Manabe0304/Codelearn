## Lý thuyết
Hàm `ROUND()` trong PostgreSQL làm tròn một giá trị số thành số nguyên gần nhất hoặc một số có số vị trí thập phân. Sau đây minh họa cú pháp của hàm `ROUND()`:

`ROUND (source [ , n ] )`

- source : Đối số nguồn là một số hoặc một biểu thức số sẽ được làm tròn.
- n: Đối số n là một số nguyên xác định số vị trí thập phân sau khi làm tròn. Đối số n là tùy chọn. Nếu bạn bỏ qua đối số n, giá trị mặc định của nó là 0.
Hàm `ROUND()` trả về một kết quả có loại giống với đầu vào nếu bạn bỏ qua đối số thứ hai. Trong trường hợp nếu bạn sử dụng cả hai đối số, hàm `ROUND()` trả về một giá trị số.

Ví dụ sau đây cho thấy cách làm tròn số thập phân bằng hàm `ROUND()`:
```
SELECT ROUND(10.4); --Kết quả trả về là 10
SELECT ROUND(10.5); --Kết quả trả về là: 11
SELECT ROUND(10.812, 2); --Kết quả trả về là: 10.81
```
