## Bài tập
Vẫn là bảng `grid` như sau:
```
CREATE TABLE grid (
    grid_id SMALLINT PRIMARY KEY,
    description TEXT,
    event_date DATE,
    restore_date DATE,
    region VARCHAR(10),--Khu vực xảy ra sự kiện
    demand_loss INTEGER, --Sự mất nhu cầu tiêu thụ điện vì sự kiện này
    affected_customers INTEGER --Số lượng khách hàng bị ảnh hưởng bởi sự kiện
);
```
Cùng với tính tổng và đếm, sếp của bạn muốn bạn tìm giá trị tối thiểu, tối đa và trung bình từ cột `affected_customers`. Bảng trả về sẽ có 3 cột tương ứng: `min_affected_customers, max_affected_customers, avg_affected_customers`. Nếu không có thông tin về khách hàng bị ảnh hưởng trong bảng `grid`, dẫn đến không có dữ liệu để tìm giá trị tối thiểu, tối đa và trung bình của những khách hàng bị ảnh hưởng, hãy trả về `0` trong trường hợp này.

* Đối với cột `avg_affected_customers`, làm tròn đến 3 chữ số thập phân.

## Ví dụ
Với bảng `grid` như sau:

grid_id	| description	| event_date	| restore_date	| region	| demand_loss	| affected_customers
--------|-------------|-------------|---------------|---------|-------------|-------------------
1	| Severe Weather  Thunderstorms	| 2014-06-30	| 2014-07-01	| RFC	| null	| 127000
2	| Severe Weather  Thunderstorms	| 2014-06-30	| 2014-07-01	| MRO	| 424	| 120000
3	| Fuel Supply Emergency  Coal	| 2014-06-27	| 2014-07-01	| MRO	| 218	| null
4	| Physical Attack  Vandalism	| 2014-06-24	| 2014-06-24	| SERC	| 234	| null

Kết quả đầu ra sẽ là:

min_affected_customers	| max_affected_customers	| avg_affected_customers
------------------------|-------------------------|-----------------------
120000	| 127000	| 123500.000
