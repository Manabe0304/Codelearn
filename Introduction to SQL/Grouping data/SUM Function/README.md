## Lý thuyết
Hàm `SUM` trả về tổng giá trị hoặc giá trị riêng biệt. Cú pháp của hàm `SUM` như sau:

`SUM(DISTINCT cột)`

Có một số điểm quan trọng bạn nên nhớ khi sử dụng hàm `SUM`:

- Hàm `SUM` bỏ qua các giá trị `NULL`. Nó có nghĩa là các giá trị `NULL` không được xem xét trong tính toán của hàm `SUM`.
- Nếu bạn sử dụng toán tử `DISTINCT`, hàm `SUM` chỉ tính các giá trị của các giá trị riêng biệt. Ví dụ: không có toán tử `DISTINCT`, hàm `SUM` trả về 12 khi tính tổng của 1, 1, 8 và 2. Tuy nhiên, với toán tử `DISTINCT`, hàm `SUM` sẽ trả về 11 (1 + 8 + 2).
- Nếu bạn sử dụng hàm `SUM` trong mệnh đề `SELECT`, nó sẽ trả về giá trị `NULL` thay vì 0 trong trường hợp câu lệnh `SELECT` không trả về hàng nào.
Ví dụ, cho bảng `payment`:

payment_id	| staff_id	| rental_id	| amount
------------|-----------|-----------|-------
1	| 2	| 76	| 2.99
2	| 1	| 14762	| 0.99
3	| 2	| 14825	| 5.99
4	| 1	| 15298	| 0.99
5	| 2	| 15315	| 9.99
6	| 1	| 320	| 4.99
```
SELECT SUM(amount) AS total
FROM payment
WHERE staff_id = 1;
```
Kết quả đầu ra sẽ là:

| total |
|-------|
| 6.97 |
