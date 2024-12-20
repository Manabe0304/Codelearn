## Lý thuyết
Chúng ta sử dụng toán tử `BETWEEN` để khớp một giá trị với một phạm vi các giá trị. Dưới đây minh họa cú pháp của toán tử `BETWEEN`:

`giá_trị BETWEEN thấp AND cao;`

Nếu bạn muốn kiểm tra xem giá trị có nằm ngoài phạm vi không, bạn kết hợp toán tử `NOT` với toán tử `BETWEEN` như sau:

`giá_trị NOT BETWEEN thấp AND cao;`

Chúng ta thường sử dụng toán tử `BETWEEN` trong mệnh đề `WHERE` của câu lệnh `SELECT`, `INSERT`, `UPDATE` hoặc `DELETE`.

Truy vấn sau đây chọn các thanh toán có số tiền từ `8` đến `9` (USD):
```
SELECT full_name
FROM payment
WHERE amount BETWEEN 8 AND 9;
```
Cho bảng `payment`

| full_name	| payment_date | amount |
|-----------|--------------|--------|
| ANGELA HERNANDEZ | 2005-05-26 06:52:33 | 6.99 | 
| ANGELA HERNANDEZ | 2005-06-19 10:38:42 | 6.99 | 
| BARBARA JONES	| 2005-06-15 09:31:28	| 6.99 |
| BARBARA JONES	| 2005-06-16 08:08:40	| 7.99 | 
| CAROL GARCIA | 2005-05-25 06:44:53 | 6.99 |
| CAROL GARCIA | 2005-05-25 19:27:51 | 5.99 |
| FRANCES PARKER | 2005-05-26 03:46:26 | 9.99 | 
| FRANCES PARKER | 2005-05-26 08:04:38 | 8.99 | 
| GLORIA COOK	| 2005-05-25 21:21:56	| 6.99 | 
| GLORIA COOK	| 2005-05-28 04:01:42	| 6.99 | 

Kết quả đầu ra là

| full_name | 
|-----------|
| FRANCES PARKER | 
