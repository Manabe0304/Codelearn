## Lý thuyết
### Giới thiệu về mệnh đề `LEFT JOIN` trong PostgreSQL
Giả sử chúng ta có hai bảng là A and B.

![image](https://github.com/user-attachments/assets/c5c4b025-f78c-440c-94bd-44c3a1f62965)

Dữ liệu trong bảng B liên quan đến dữ liệu trong bảng A thông qua trường `fka`.

Mỗi hàng trong bảng A có thể có 0 hoặc nhiều hàng tương ứng trong bảng B. Mỗi hàng trong bảng B có một và chỉ một hàng tương ứng trong bảng A.

Nếu bạn muốn chọn các hàng từ bảng A có các hàng tương ứng trong bảng B, bạn sẽ cần sử dụng mệnh đề `INNER JOIN`.

Nếu bạn muốn chọn các hàng từ bảng A có thể có hoặc không có các hàng tương ứng trong bảng B, bạn sử dụng mệnh đề `LEFT JOIN`. Trong trường hợp, không có hàng phù hợp trong bảng B, các giá trị của các cột trong bảng B được thay thế bằng các giá trị `NULL`.

Câu lệnh sau minh họa cú pháp của `LEFT JOIN` nối bảng A với bảng B:
```
SELECT A.pka, A.c1, B.pkb, B.c2
FROM A LEFT JOIN B ON A .pka = B.fka;
```
Để join bảng A vào bảng B, bạn cần:

- Chỉ định các cột mà bạn muốn chọn dữ liệu trong mệnh đề SELECT.
- Chỉ định bảng bên trái, tức là một bảng nơi bạn muốn nhận tất cả các hàng, trong mệnh đề FROM.
- Chỉ định bảng bên phải, tức là bảng B trong mệnh đề LEFT JOIN. Ngoài ra, chỉ định điều kiện để tham gia hai bảng. 

Mệnh đề `LEFT JOIN` trả về tất cả các hàng trong bảng bên trái (A) được kết hợp với các hàng trong bảng bên phải (B) mặc dù có thể tồn tại trường hợp là không có hàng tương ứng trong bảng bên phải (B).

Mệnh đề `LEFT JOIN` cũng có thể xem như là `LEFT OUTER JOIN`.

Biểu đồ Venn sau đây minh họa cách hoạt động của mệnh đề `LEFT JOIN`. Giao điểm là các hàng trong bảng A có các hàng tương ứng trong bảng B.

![image](https://github.com/user-attachments/assets/1bcaf32d-c8d7-457d-8d9c-839c45682276)

##### PostgreSQL LEFT JOIN Venn Diagram

### Ví dụ về `LEFT JOIN` trong PosgreSQL
Hãy cùng xem sơ đồ ER sau đây

![image](https://github.com/user-attachments/assets/c5877afd-c8a5-4ea3-8318-217969fd5174)

Mỗi hàng trong bảng `film` có thể có 0 hoặc nhiều hàng trong bảng `inventory`. Mỗi hàng trong bảng kiểm kê có một và chỉ một hàng trong bảng `film`.

Cho bảng `film`:

| film_id	| title	| length | rating |
|---------|-------|--------|--------|
| 1	| ACADEMY DINOSAUR | 86	| PG |
| 2	| ACE GOLDFINGER | 48	| G | 
| 3	| ADAPTATION HOLES | 50	| NC-17 |
| 4	| AFFAIR PREJUDICE | 117 | G |
| 5	| AFRICAN EGG	| 130	| G |

Và bảng `inventory`:

| inventory_id | store_id	| film_id |
|--------------|----------|---------|
| 1	| 1	| 1 |
| 2	| 1 | 1 |
| 3	| 1	| 1 | 
| 4	| 1	| 1 |
| 16 | 1 | 4 |

Bạn sử dụng mệnh đề `LEFT JOIN` để nối bảng `film` vào bảng `inventory` như sau:
```
SELECT film.film_id, film.title, inventory.inventory_id
FROM film LEFT JOIN inventory ON film.film_id = inventory.film_id;
```
Kết quả là:

| film_id	| title	| inventory_id | 
|---------|-------|--------------|
| 1	| ACADEMY DINOSAUR | 1 |
| 1	| ACADEMY DINOSAUR | 2 |
| 1	| ACADEMY DINOSAUR | 3 |
| 1	| ACADEMY DINOSAUR | 4 |
| 2	| ACE GOLDFINGER | null |
| 3	| ADAPTATION HOLES | null | 
| 4	| AFFAIR PREJUDICE | 16 | 
| 5	| AFRICAN EGG	| null |

Vì một số hàng trong bảng `film` không có các hàng tương ứng trong bảng `inventory`, nên các giá trị của `inventory_id` là `NULL`.
