## Bài tập
Bạn là giám đốc của công ty Star và một ngày đẹp trời, bạn muốn đến những nơi nhân viên của mình để mang đến cho họ sự bất ngờ. Vì vậy, bạn tìm địa chỉ của họ trong bảng `staff`, bảng `address`, bảng `address` nơi lưu trữ tất cả các thông tin cần thiết.

Bảng `staff` liệt kê tất cả các thông tin của nhân viên

- `staff_id`: Khóa chính thay thế xác định duy nhất nhân viên.
- `first_name`: Tên của nhân viên
- `last_name`: Họ của nhân viên
- `address_id`: Khóa ngoại đối với địa chỉ của nhân viên trong bảng địa chỉ.
- `store_id`: Cửa hàng bán đồ gia dụng của nhân viên. Nhân viên có thể làm việc tại các cửa hàng khác nhưng thường được giao cho cửa hàng được liệt kê.
- `active`: Chỉ trạng thái của nhân viên. Nếu nhân viên rời khỏi hàng của họ sẽ không bị xóa khỏi bảng này, thay vào đó cột này được đặt thành `FALSE`.

Bảng `address` chứa thông tin địa chỉ của khách hàng, nhân viên và cửa hàng.

- `address_id`: Khóa chính thay thế được sử dụng để xác định duy nhất từng địa chỉ trong bảng.
- `address`: Dòng đầu tiên của một địa chỉ.
- `district`: Vùng của một địa chỉ, đây có thể là một tiểu bang, tỉnh, tỉnh, v.v.
- `city_id`: Một khóa ngoại chỉ vào bảng thành phố.
- `postal_code`: Mã bưu chính hoặc mã ZIP của địa chỉ (nếu có)
- `phone`: Số điện thoại cho địa chỉ.

Bảng `city` là danh sách các thành phố

- `city_id`: Khóa chính thay thế được sử dụng để xác định duy nhất mỗi thành phố trong bảng.
- `city`: Tên của thành phố.

Sử dụng `JOIN` để hiển thị tên và họ, cũng như địa chỉ của từng nhân viên và sắp xếp nhân viên tăng dần theo `staff_id`.

## Ví dụ
Cho các bảng sau

Bảng `staff`

staff_id	| first_name	| last_name	| address_id	| store_id	| active
----------|-------------|-----------|-------------|-----------|-------
1	| Mike | Hillyer	| 3	| 1	| 1
2	| Jon	| Stephens	| 4	| 2	| 1

Bảng `address`

address_id	| address	| district	| city_id	| postal_code	| phone
------------|---------|-----------|---------|-------------|------
3	| 23 Workhaven Lane	| Alberta	| 300	| 35200	| 14033335568
4	| 1411 Lillydale Drive	| QLD	| 576	| 17886	| 6172235589
5	| 1913 Hanoi Way	| Nagasaki	| 463	| 35200	| 28303384290
6	| 1121 Loja Avenue	| California	| 463	17886	| 838635286649
7	| 692 Joliet Street	| Attika	| 38	| 83579	| 448477190408

Bảng `city`

city_id	| city
--------|-----
1	| A Corua (La Corua)
200	| Hamilton
300	| Lethbridge
400	| Patiala
576	| Woodridge

Kết quả đầu ra sẽ là

full_name	| address
Mike Hillyer	| 35200, 23 Workhaven Lane, Alberta, Lethbridge
Jon Stephens	| 17886, 1411 Lillydale Drive, QLD, Woodridge

## Gợi ý
Đối với một `INNER JOIN`, còn có một cú pháp viết khác là:
```
SELECT ...
FROM TableA
[INNER] JOIN TableB
```
