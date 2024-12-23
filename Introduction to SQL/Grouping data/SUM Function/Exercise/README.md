## Bài tập
Trong thời gian qua đã có rất nhiều những sự kiện thiên tai xảy ra dẫn đến sự cố mất điện. Bạn đảm nhận nhiệm vụ xây dựng nên bảng grid để thống kê và lưu trữ về tình hình của các địa phương ở Mỹ. Dưới đây là thiết kế của bảng grid.
```
CREATE TABLE grid (
    grid_id SMALLINT PRIMARY KEY,
    description TEXT,
    event_date DATE,
    restore_date DATE,
    region VARCHAR(10),--Khu vực xảy ra sự kiện
    demand_loss INTEGER, --Sự mất nhu cầu tiêu thụ điện vì sự kiện này
    affected_customer INTEGER --Số lượng khách hàng bị ảnh hưởng bởi sự kiện
);
```
Sau khi đọc bảng grid, ông chủ của bạn muốn bạn có được tổng số tổn thất về nhu cầu tiêu thụ điện trong khu vực MRO. Bảng kết quả sẽ chỉ có một tên cột MRO_demand_loss là tổng của các giá trị của cột demand_loss.

Lưu ý rằng, khi tất cả giá trị của cột demand_loss trong bảng grid đều là null, kết quả phải được trả về 0.

![image](https://github.com/user-attachments/assets/1d7638da-a0bd-4440-9136-9614189ebf98)

Ví dụ
Với bảng grid như sau:

grid_id	description	event_date	restore_date	region	demand_loss	affected_customers
1	Severe Weather  Thunderstorms	2014-06-30	2014-07-01	RFC	null	127000
2	Severe Weather  Thunderstorms	2014-06-30	2014-07-01	MRO	424	120000
3	Fuel Supply Emergency  Coal	2014-06-27	2014-07-01	MRO	null	null
4	Physical Attack  Vandalism	2014-06-24	2014-06-24	SERC	null	null
Kết quả đầu ra sẽ là:

mro_demand_loss
424

Gợi ý
Đôi khi, bạn muốn hàm SUM trả về 0 thay vì giá trị NULL trong trường hợp không có hàng khớp nào được tìm thấy bởi câu lệnh SELECT. Trong trường hợp này, bạn sử dụng hàm COALESCE trả về đối số đầu tiên làm giá trị mặc định nếu đối số thứ hai là NULL.
