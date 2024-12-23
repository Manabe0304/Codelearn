## Lý thuyết
### Giới thiệu về self-join trong PostgreSQL
Self-join là một truy vấn trong đó một bảng tự join với chính nó. Self-join rất hữu ích để so sánh các giá trị trong một cột của các hàng trong cùng một bảng.

Để hình thành việc self-join, bạn chỉ định cùng một bảng hai lần với các bí danh (alias) khác nhau, thiết lập so sánh và loại bỏ các trường hợp trong đó một giá trị sẽ bằng chính nó.

Truy vấn sau đây cho thấy cách join bảng A với chính nó:
```
SELECT danh_sách_cột FROM A a1
INNER JOIN A b1 ON điều_kiện_join;
```
Trong cú pháp này, bảng A được join với chính nó bằng mệnh đề `INNER JOIN`. Lưu ý rằng bạn cũng có thể sử dụng mệnh đề `LEFT JOIN` hoặc `RIGHT JOIN`.

### Ví dụ truy vấn dữ liệu phân cấp
Hãy xem xét bảng `staffs` sau:

| staff_id | first_name	| last_name	| email	| phone	| active | store_id	| manager_id |
|----------|------------|-----------|-------|-------|--------|----------|------------|
| 1	| Fabiola	| Jackson	| fabiola.jackson@gmail.com	| 5555554	| 1	| 1	| NULL |
| 2	| Mierya | Copeland	| mireya.copenland@gmail.om	| 5555555	| 1	| 1	| 1
| 3	| Genna	| Serrano	| genna.serrano@gmail.com	| 5555556	| 1	| 1	| 2
| 4	| Virgie | Wiggins | virgie.wiggins@gmail.com	| 5555557	| 1	| 1	| 2
| 5	| Jannette | David | jannette.david@gmail.com	| 3794444	| 1	| 2	| 1
| 6	| Marcelene	| Boyer	| marcelene.boyer@gmail.com	| 3794445	| 1	| 2	| 5
| 7	| Venita | Daniel	| venita.daniel@gmail.com	| 3794446	| 1	| 2	| 5
| 8	| Kali | Vargas	| kali.vargas@gmail.com	| 5305555	| 1	| 3	| 1
| 9	| Layla	| Terrell	| layla.terrell@gmail.com	| 5305556	| 1	| 3	| 7
| 10 | Bernardine	| Houston	| bernardine.houston@gmail.com | 5305557 | 1 | 3 | 7

Bảng nhân viên lưu trữ thông tin nhân viên như `id`, `first name`, `last name` và `email`. Bảng cũng có một cột có tên `manager_id` chỉ định người quản lý trực tiếp. Ví dụ: Mireya sẽ báo cáo công việc cho Fabiola vì giá trị trong `manager_id` của Mireya là Fabiola.

`Fabiola` không có người quản lý nên cột `manager_id` có giá trị `NULL`.

Để biết ai báo cáo công việc cho ai, bạn sử dụng self-join như truy vấn sau:
```
SELECT e.first_name || ' ' || e.last_name employee, m.first_name ||' ' || m.last_name manager
FROM staffs e
INNER JOIN staffs m ON m.staff_id = e.manager_id
ORDER BY manager;
```
Kết quả đầu ra sẽ là

employee | manager
---------|--------
Mierya Copeland	| Fabiola Jackson
Jannette David | Fabiola Jackson
Kali Vargas	| Fabiola Jackson
Marcelene Boyer	| Jannette David
Venita Daniel	| Jannette David
Genna Serrano	| Mierya Copeland
Virgie Wiggins | Mierya Copeland
Layla Terrell	| Venita Daniel
Bernardine Houston | Venita Daniel

Trong ví dụ này, chúng ta đã tham chiếu bảng nhân viên hai lần: một cho e là nhân viên và một cho m cho các nhà quản lý. Điều kiện join khớp với mối quan hệ giữa nhân viên và người quản lý bằng cách sử dụng các giá trị trong các cột `e.manager_id` và `m.staff_id`.

Cột `employee` không có Fabiola Jackson vì ảnh hưởng của `INNER JOIN`. Nếu bạn thay thế mệnh đề `INNER JOIN` bằng mệnh đề `LEFT JOIN` như trong truy vấn sau, bạn sẽ nhận được tập kết quả bao gồm `Fabiola Jackson` trong cột `employee`:
```
SELECT e.first_name || ' ' || e.last_name employee, m.first_name ||' ' || m.last_name manager
FROM staffs e
LEFT JOIN staffs m ON m.staff_id = e.manager_id
ORDER BY manager;
```
Kết quả đầu ra sẽ là

employee | manager
---------|-------
Fabiola Jackson	| null
Mierya Copeland	| Fabiola Jackson
Jannette David | Fabiola Jackson
Kali Vargas	| Fabiola Jackson
Marcelene Boyer	| Jannette David
Venita Daniel	| Jannette David
Genna Serrano	| Mierya Copeland
Virgie Wiggins | Mierya Copeland
Layla Terrell	| Venita Daniel
Bernardine Houston | Venita Daniel
