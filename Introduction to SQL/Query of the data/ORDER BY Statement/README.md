## Lý thuyết
Mệnh đề `ORDER BY` cho phép bạn sắp xếp các hàng được trả về từ câu lệnh `SELECT` theo thứ tự tăng dần hoặc giảm dần dựa trên các tiêu chí đã chỉ định. Sau đây minh họa cú pháp của mệnh đề `ORDER BY`:
```
SELECT cột_1, cột_2
FROM tên_bảng
ORDER BY cột_1 ASC, cột_2 DESC;
```
Hãy cùng kiểm tra cú pháp của mệnh đề `ORDER BY` chi tiết hơn:

- Đầu tiên, chỉ định cột mà bạn muốn sắp xếp trong mệnh đề `ORDER BY`. Nếu bạn sắp xếp tập kết quả dựa trên nhiều cột, hãy sử dụng dấu phẩy để phân tách giữa hai cột.
- Thứ hai, sử dụng `ASC` để sắp xếp tập kết quả theo thứ tự tăng dần và `DESC` để sắp xếp tập kết quả theo thứ tự giảm dần. Nếu bạn để trống, mệnh đề `ORDER BY` sẽ sử dụng `ASC` theo mặc định.

Hãy tham khảo một số ví dụ về việc sử dụng mệnh đề `ORDER BY` của PostgreSQL nhé:
```
SELECT id, country
FROM countries 
ORDER BY country ASC;
```
Cho bảng `countries`:

| id | country |
|----|---------|
| 1	| Nauru |
| 2	| Sri Lanka | 
| 3	| Holy See (Vatican City State) |

Kết quả đầu ra sẽ là:

| id | country |
|----|---------|
| 1	| Holy See (Vatican City State) |
| 2	| Nauru | 
| 3	| Sri Lanka |

Lưu ý rằng tiêu chuẩn SQL chỉ cho phép bạn sắp xếp các hàng dựa trên các cột xuất hiện trong mệnh đề `SELECT`. Tuy nhiên, PostgreSQL cho phép bạn sắp xếp các hàng dựa trên các cột thậm chí không xuất hiện trong danh sách lựa chọn.
