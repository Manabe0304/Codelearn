## Bài tập
Bạn là giám đốc của công ty Stars và bạn lưu trữ thông tin về doanh nghiệp của mình trong các mối quan hệ dưới đây:

![image](https://github.com/user-attachments/assets/f77ea479-8420-4c0e-8a78-a6b040621160)

Bảng `payment` ghi lại từng khoản thanh toán được thực hiện bởi một khách hàng, với thông tin như số tiền và tiền thuê được trả cho (khi áp dụng).

- `payment_id`: Khóa chính thay thế được sử dụng để xác định duy nhất mỗi khoản thanh toán.
- `staff_id`: Nhân viên người xử lý thanh toán. Đây là khóa ngoại đến bảng nhân viên.
- `rental_id`: Bảng thuê mà thanh toán đang được áp dụng. Đây là tùy chọn vì một số khoản thanh toán dành cho các khoản phí chưa thanh toán và có thể không liên quan trực tiếp đến việc cho thuê.
- `amount`: Số tiền thanh toán.
- `payment_date`: Ngày thanh toán được xử lý.

Bảng `rental` chứa một hàng cho mỗi lần thuê của từng mặt hàng tồn kho với thông tin về người đã thuê mặt hàng nào, khi nào được thuê và khi nào được trả lại.

- `rental_id`: Khóa chính thay thế xác định duy nhất việc cho thuê.
- `rental_date`: Ngày và thời gian mà vật phẩm được thuê.
- `inventory_id`: Các mặt hàng đang được thuê.
- `return_date`: Ngày và thời gian mục được trả lại.
- `staff_id`: Nhân viên đã xử lý việc cho thuê.

Bảng `store` đề cập đến các bảng `staff` bằng cách sử dụng khóa ngoại và được các nhân viên, khách hàng và bảng kiểm kê tham khảo.

- `store_id`: Khóa chính thay thế xác định duy nhất cửa hàng.
- `manager_staff_id`: Khóa ngoại xác định người quản lý cửa hàng này.
- `address_id`: Khóa ngoại xác định địa chỉ của cửa hàng này.
- `last_update`: Thời gian mà hàng được tạo hoặc cập nhật gần đây nhất.

Bảng `staff` đề cập đến các cửa hàng và bảng địa chỉ sử dụng khóa ngoại và được gọi bằng bảng cho thuê, thanh toán và lưu trữ.

- `staff_id`: Khóa chính thay thế xác định nhân viên duy nhất.
- `first_name`: Tên của nhân viên.
- `last_name`: Họ của nhân viên.
- `address_id`: Khóa ngoại đối với địa chỉ của nhân viên trong bảng `address`.
- `email`: Địa chỉ email của nhân viên.
- `store_id`: Cửa hàng bán đồ gia dụng của nhân viên. Nhân viên có thể làm việc tại các cửa hàng khác nhưng thường được giao cho cửa hàng được liệt kê.
- `active`: Chỉ trạng thái của nhân viên. Nếu nhân viên rời khỏi hàng của họ sẽ không bị xóa khỏi bảng này, thay vào đó cột này được đặt thành `FALSE`.

Viết một truy vấn để hiển thị bao nhiêu doanh nghiệp, bằng đô la, mỗi cửa hàng mang lại.

Lưu ý rằng bảng kết quả phải được sắp xếp giảm dần theo tổng doanh thu của mỗi cửa hàng.

## Ví dụ
Cho bảng `payment`

payment_id	| staff_id	| rental_id	| amount	| payment_date
------------|-----------|-----------|---------|-------------
1	| 2	| 76	| 2.99	| 2005-05-25 11:30:37
2	| 1	| 14762	| 0.99	| 2005-05-28 10:35:23
3	| 2	| 14825	| 5.99	| 2005-06-15 00:54:12
4	| 1	| 15298	| 0.99	| 2005-06-15 18:02:53
5	| 2	| 15315	| 9.99	| 2005-06-15 21:08:46
6	| 1	| 320	| 4.99	| 2005-06-16 15:18:57

Bảng `rental`

rental_id	| rental_date	| inventory_id	| staff_id
----------|-------------|---------------|---------
76	| 2005-05-25 11:30:37	| 3021	| 2
14762	| 2005-08-21 23:33:57	| 4249	| 1
14825	| 2005-08-22 01:27:57	| 1449	| 2
15298	| 2005-08-22 19:41:37	| 1446	| 1
15315	| 2005-08-22 20:03:46	| 312	| 2
320	| 2005-05-27 00:09:24	| 1090	| 1
15145	| 2005-08-22 13:53:04	| 2179	| 2
15907	| 2005-08-23 17:39:35	| 2898	| 1
9443	| 2005-07-30 21:45:46	| 1675	| 2
9595	| 2005-07-31 03:27:58	| 2829	| 1
9816	| 2005-07-31 11:32:58	| 4560	| 2
13704	| 2005-08-20 09:32:04	| 3373	| 1
13807	| 2005-08-20 12:55:40	| 3822	| 2
14225	| 2005-08-21 04:53:37	| 984	| 1
15147	| 2005-08-22 13:58:23	| 2553	| 2
15635	| 2005-08-23 07:43:00	| 3308	| 1
435	| 2005-05-27 17:17:09	| 3328	| 2
573	| 2005-05-28 10:35:23	| 4020	| 1
731	| 2005-05-29 07:25:16	| 4124	| 2
830	| 2005-05-29 22:43:55	| 3464	| 1

Bảng `staff`

staff_id	| first_name	| last_name	| email	| store_id	| active
----------|-------------|-----------|-------|-----------|-------
1	| Mike	| Hillyer	| Mike.Hillyer@sakilastaff.com	| 1	| 1
2	| Jon	| Stephens	| Jon.Stephens@sakilastaff.com	| 2	| 1

Bảng `store`

store_id	| manager_staff_id	| address_id
----------|-------------------|-----------
1	| 1	| 1
2	| 2	| 2

Kết quả trả về sẽ là

store_id	| sum
----------|----
2	| 18.97
1	| 6.97

## Gợi ý
Trước từ khóa `JOIN`, hãy chọn những dạng phù hợp của `JOIN`: `INNER JOIN/ LEFT JOIN/ RIGHT JOIN/ FULL OUTER JOIN` để giải vấn đề này. 

Ghi nhớ rằng:

- Sử dụng `FULL OUTER` JOIN khi bạn muốn tất cả các kết quả từ cả hai bộ dữ liệu.
- Sử dụng `INNER JOIN` khi bạn chỉ muốn kết quả xuất hiện trong cả hai bộ dữ liệu.
- Sử dụng `LEFT OUTER JOIN` khi bạn muốn tất cả các kết quả từ tập a, nhưng nếu tập b có dữ liệu liên quan đến một số bản ghi của tập hợp thì bạn cũng muốn sử dụng dữ liệu đó trong cùng một truy vấn.
