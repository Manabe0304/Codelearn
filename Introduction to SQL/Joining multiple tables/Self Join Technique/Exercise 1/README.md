## Bài tập
Cho bảng có thông tin của tất cả các khách hàng của công ty bạn. Nó được lưu trữ với các cột sau:

- `customer_id(SMALLINT)`: khóa chính thay thế được sử dụng để nhận dạng duy nhất từng khách hàng trong bảng.
- `first_name(VARCHAR[50])`: tên của khách hàng.
- `last_name(VARCHAR[50])`: họ của khách hàng.
- `city(VARCHAR[50])`: thành phố mà khách hàng hiện đang sống.
- `country(VARCHAR[50])`: quốc gia mà khách hàng hiện đang sống.

Hãy kết hợp các khách hàng đến từ cùng một thành phố và quốc gia. Lưu ý rằng khách hàng không thể tự kết hợp với chính họ.

Bảng trả về phải được sắp xếp theo `country, city, first_name, last_name` của khách hàng đầu tiên (`first_customer`).

## Ví dụ
Cho bảng `customer`

customer_id	| first_name | last_name | city	| country
1	| MARY | SMITH | Sasebo	| Japan
2	| PATRICIA | JOHNSON	Sasebo | Japan
3	| LINDA	| WILLIAMS | Athenai | Greece
4	| BARBARA	| JONES	| Athenai	| Greece
5	| ELIZABETH	| BROWN	| Nantou | Taiwan

kết quả trả về sẽ là

first_customer | second_customer | city	| country
BARBARA JONES	| LINDA WILLIAMS | Athenai | Greece
LINDA WILLIAMS | BARBARA JONES | Athenai | Greece
MARY SMITH | PATRICIA JOHNSON	| Sasebo | Japan
PATRICIA JOHNSON | MARY SMITH	| Sasebo | Japan
