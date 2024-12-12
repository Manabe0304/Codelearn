## Bài tập
Hãy tưởng tượng rằng một cơ sở dữ liệu toàn quốc về các trường học tồn tại. Một người không quen thuộc với chuẩn hóa cơ sở dữ liệu đề xuất cấu trúc sau cho bảng school:

CREATE TABLE school (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    street_address VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    zip_code INTEGER NOT NULL
)
Xác định sự phụ thuộc bắc cầu (transitive dependency) được giới thiệu bởi định nghĩa bảng trên.

Phân tích cấu trúc bảng:
sql
Copy code
CREATE TABLE school (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    street_address VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    zip_code INTEGER NOT NULL
);
id: Khóa chính (định danh duy nhất cho mỗi trường học).
name: Tên của trường học.
street_address: Địa chỉ cụ thể (số nhà và tên đường) của trường.
city: Thành phố nơi trường tọa lạc.
state: Bang nơi trường tọa lạc.
zip_code: Mã bưu điện liên quan đến địa chỉ của trường.
Xác định sự phụ thuộc bắc cầu:
Trong bảng này:

id xác định duy nhất mỗi trường học (đây là phụ thuộc trực tiếp).
zip_code xác định duy nhất city và state (vì mỗi mã bưu điện thường chỉ áp dụng cho một thành phố và bang cụ thể).
Do đó, thông qua zip_code, có thể xác định được city và state mà không cần phải biết id trực tiếp.
=> Sự phụ thuộc bắc cầu:

id → zip_code → city, state
Hậu quả của sự phụ thuộc bắc cầu:
Dư thừa dữ liệu: Nếu nhiều trường học nằm trong cùng một mã bưu điện, thì thông tin về city và state sẽ bị lặp lại nhiều lần trong bảng.
Khó khăn khi cập nhật: Nếu cần sửa đổi thông tin của một mã bưu điện (ví dụ: thành phố hoặc bang bị thay đổi do địa giới hành chính), bạn phải cập nhật tất cả các hàng có cùng mã bưu điện, dễ gây ra lỗi hoặc thiếu sót.
Khó khăn khi thêm hoặc xóa: Thêm một thành phố mới không liên quan đến trường học sẽ không thể thực hiện được vì thông tin city và state phụ thuộc vào sự tồn tại của một trường.
Cách khắc phục:
Để loại bỏ sự phụ thuộc bắc cầu, bảng cần được chuẩn hóa để đạt Dạng chuẩn 3 (3NF). Chúng ta có thể tạo thêm bảng để lưu thông tin mã bưu điện và liên kết chúng với trường học:

Bảng school (sửa đổi):
sql
Copy code
CREATE TABLE school (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    street_address VARCHAR(100) NOT NULL,
    zip_code INTEGER NOT NULL REFERENCES zip(id)
);
Bảng zip (mới):
sql
Copy code
CREATE TABLE zip (
    id INTEGER PRIMARY KEY,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL
);
Lợi ích của thiết kế mới:
Giảm dư thừa dữ liệu: Thông tin về mã bưu điện, thành phố, và bang chỉ lưu một lần trong bảng zip.
Dễ dàng bảo trì: Khi cần cập nhật thông tin mã bưu điện, chỉ cần sửa một hàng trong bảng zip.
Mở rộng linh hoạt: Có thể thêm mã bưu điện mới mà không cần liên quan đến bảng school.
Kết luận: Sự phụ thuộc bắc cầu giữa id, zip_code, và city, state cần được loại bỏ bằng cách tách thành các bảng riêng biệt để đảm bảo cơ sở dữ liệu được chuẩn hóa tốt hơn.
