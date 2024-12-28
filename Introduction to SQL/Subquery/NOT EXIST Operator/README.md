## Lý thuyết
### B) Ví dụ về NOT EXISTS 
`NOT EXISTS` ngược lại với `EXISTS`, nghĩa là nếu truy vấn con không trả về hàng, thì `NOT EXISTS` trả về true. Nếu truy vấn con trả về bất kỳ hàng nào, `NOT EXISTS` trả về false.

Ví dụ sau đây trả về khách hàng đã không thực hiện bất kỳ khoản thanh toán nào lớn hơn 11.
```
SELECT first_name,
       last_name
FROM customer c
WHERE NOT EXISTS
    (SELECT 1
     FROM payment p
     WHERE p.customer_id = c.customer_id
       AND amount > 11 )
ORDER BY first_name,
         last_name;
```
Đây là đầu ra:

first_name	| last_name
------------|----------
BARBARA	| JONES
ELIZABETH	| BROWN
LINDA	| WILLIAMS

### C) EXISTS và NULL
Nếu truy vấn con trả về `NULL`, `EXISTS` trả về true. Xem ví dụ sau:
```
SELECT
   first_name,
   last_name
FROM
   customer
WHERE
   EXISTS( SELECT NULL )
ORDER BY
   first_name,
   last_name;
```
first_name	| last_name
------------|----------
BARBARA	| JONES
ELIZABETH	| BROWN
LINDA	| WILLIAMS
MARY	| SMITH
PATRICIA	| JOHNSON

Trong ví dụ này, truy vấn con trả về `NULL`, do đó, truy vấn trả về tất cả các hàng từ bảng khách hàng.
