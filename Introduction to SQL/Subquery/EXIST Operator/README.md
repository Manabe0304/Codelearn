## Lý thuyết
### Giới thiệu về `EXIST` trong PostgreSQL
Toán tử `EXISTS` được sử dụng để kiểm tra sự tồn tại của các hàng trong truy vấn con.

Sau đây minh họa cú pháp của toán tử `EXISTS`:

`EXISTS (subquery)`
Toán tử `EXISTS` chấp nhận một đối số là một truy vấn con.

Nếu truy vấn con trả về ít nhất một hàng, kết quả của `EXISTS` là đúng. Trong trường hợp truy vấn con trả về không có hàng, kết quả của `EXISTS` là sai.

`EXISTS` thường được sử dụng với truy vấn con tương quan.

Kết quả của `EXISTS` phụ thuộc vào bất kỳ hàng nào được trả về bởi truy vấn con, và không phụ thuộc vào nội dung của các hàng. Do đó, các cột xuất hiện trên mệnh đề SELECT của truy vấn con không quan trọng.

Vì lý do này, quy ước mã hóa phổ biến là viết `EXISTS` theo mẫu sau:
```
SELECT 
    column_1 
FROM 
    table_1
    WHERE 
    EXISTS( SELECT 
                1 
            FROM 
                table_2 
            WHERE 
                column_2 = table_1.column_1);
```
Lưu ý rằng nếu truy vấn con trả về `NULL`, kết quả của `EXISTS` là đúng.

### Ví dụ về EXIST trong PostgreSQL
Chúng ta sẽ sử dụng các bảng `customer` và bảng `payment` và sau đây để tham khảo:

![image](https://github.com/user-attachments/assets/572042a8-45a7-4187-9ae5-469fa70b2e43)

Bảng `customer`

customer_id	| store_id	| first_name	| last_name	| active
------------|-----------|-------------|-----------|-------
1	| 1	| MARY	| SMITH	| 1
2	| 1	| PATRICIA	| JOHNSON	| 1
3	| 1	| LINDA	| WILLIAMS	| 1
4	| 2	| BARBARA	| JONES	| 1
5	| 1	| ELIZABETH	| BROWN	| 1

và bảng `payment`

payment_id	| customer_id	| staff_id	| rental_id	| amount	| payment_date
------------|-------------|-----------|-----------|---------|-------------
1	| 1	| 1	| 76	| 2.99	| 2005-05-25 11:30:37
2	| 1	| 1	| 573	| 11.99	| 2005-05-28 10:35:23
3	| 1	| 1	| 1185	| 5.99	| 2005-06-15 00:54:12
4	| 1	| 2	| 1422	| 20.99	| 2005-06-15 18:02:53
5	| 1	| 2	| 1476	| 9.99	| 2005-06-15 21:08:46
6	| 1	| 1	| 1725	| 4.99	| 2005-06-16 15:18:57
7	| 1	| 1	| 2308	| 4.99	| 2005-06-18 08:41:48
8	| 2	| 2 | 2363	| 20.99	| 2005-06-18 13:33:59
9	| 1	| 1	| 3284	| 3.99	| 2005-06-21 06:24:45
10	| 1	| 2	| 4526	| 5.99	| 2005-07-08 03:17:05

### A) Tìm khách hàng có ít nhất một khoản thanh toán có số tiền lớn hơn 11.
Câu lệnh sau đây trả về những khách hàng đã trả ít nhất một khoản tiền thuê lớn hơn 11:
```
SELECT first_name,
       last_name
FROM customer c
WHERE EXISTS
    (SELECT 1
     FROM payment p
     WHERE p.customer_id = c.customer_id
       AND amount > 11 )
ORDER BY first_name,
         last_name;
```
Truy vấn trả về đầu ra sau:

first_name	| last_name
------------|----------
MARY	| SMITH
PATRICIA	| JOHNSON

Trong ví dụ này, đối với mỗi khách hàng trong bảng `customer`, truy vấn con sẽ kiểm tra bảng `payment` để tìm xem khách hàng đó đã thực hiện ít nhất một khoản thanh toán (p.customer_id = c.customer_id) và số tiền lớn hơn 11 (số tiền> 11)
