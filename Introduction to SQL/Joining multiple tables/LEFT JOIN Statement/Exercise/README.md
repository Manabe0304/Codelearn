## Bài tập
Bạn thực sự quan tâm đến số liệu thống kê và dự án mới của bạn là thu thập một số thông tin về người dùng của một mạng xã hội lớn. Cụ thể hơn, bạn muốn biết những người dùng này đến từ quốc gia nào. Sử dụng API của mạng xã hội, bạn đã quản lý để thu thập đủ dữ liệu để soạn ra hai bảng `users` (người dùng) và bảng `cities` (thành phố), có các cấu trúc sau:

- `users`:
  - `id(SMALLINT)`: ID người dùng duy nhất;
  - `city(VARCHAR[50])`: tên của thành phố nơi người dùng này sinh sống;
- `cities`:
  - `city(VARCHAR[50])`: tên thành phố duy nhất;
  - `country(VARCHAR[50])`: tên quốc gia nơi thành phố này tọa lạc.

Cho các bảng `users` và `cities`, xây dựng bảng kết quả sao cho nó bao gồm các cột `id` và `country`. Bảng phải bao gồm `id` người dùng và đối với mỗi người dùng, quốc gia nơi họ sinh sống sẽ được trả về trong cột `country`. Nếu thành phố của người dùng bị thiếu trong bảng `cities`, thì cột `country` sẽ mang giá trị `"unknown"` thay vào đấy.

Bảng trả về cần được sắp xếp theo `id` của người dùng.

## Ví dụ
Cho bảng `users`

| id | city |
|----|------|
| 1	| San Francisco |
| 2	| Moscow | 
| 3	| London | 
| 4	| Washington | 
| 5	| New York |
| 6	| Saint Petersburg |
| 7	| Helsinki |

Và bảng `cities`

| city | country |
|------|---------|
| Moscow | Russia |
| Saint Petersburg | Russia |
| San Francisco	| USA |
| Washington | USA |
| New York | USA |
| London | England |

Đầu ra sẽ là

| id | country | 
|----|---------|
| 1	| USA | 
| 2	| Russia | 
| 3	| England | 
| 4	| USA | 
| 5	| USA | 
| 6	| Russia | 
| 7	| unknown |
