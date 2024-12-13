## Bài tập
Các nhân viên quán cà phê đã nghe ngóng được tình hình đang diễn ra tại trường trung học để sắp xếp dữ liệu cho các hoạt động quan trọng của trường sắp đến. Đặc biệt, họ muốn theo dõi các lựa chọn bữa ăn khác nhau có sẵn trong suốt năm học. Với sự giúp đỡ của nhân viên IT, bảng `meal` dưới đây được tạo ra như sau:
```
CREATE TABLE meal (
    id INTEGER, --id duy nhất của món ăn
    title VARCHAR(50) NOT NULL -- tên của món ăn
    ingredients VARCHAR(150), -- danh sách các nguyên liệu của món ăn
    avg_student_rating NUMERIC, -- điểm xếp hạng trung bình từ sinh viên
    date_served DATE, -- ngày được phục vụ
    total_calories SMALLINT NOT NULL -- tổng số calo
);
```
Sử dụng kiến thức của bạn về chuẩn hóa cơ sở dữ liệu, hãy cung cấp một thiết kế tốt hơn cho cơ sở dữ liệu.
```
CREATE TABLE ingredient (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE meal (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    avg_student_rating NUMERIC,
    total_calories SMALLINT NOT NULL
);

CREATE TABLE meal_DATE (
    meal_id INTEGER REFERENCES meal(id),
    DATE_served DATE NOT NULL
);
```
## Giải thích
1. Bảng ingredient
Cấu trúc:
sql
Copy code
CREATE TABLE ingredient (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);
Ý nghĩa:
Bảng này lưu danh sách các nguyên liệu (ingredients).
id: ID duy nhất đại diện cho mỗi nguyên liệu.
name: Tên của nguyên liệu (ví dụ: "Tomato", "Cheese", "Chicken").
Mục đích:
Lưu trữ tất cả nguyên liệu, tránh trùng lặp dữ liệu về tên nguyên liệu khi được sử dụng trong nhiều món ăn.
2. Bảng meal
Cấu trúc:
sql
Copy code
CREATE TABLE meal (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    avg_student_rating NUMERIC,
    total_calories SMALLINT NOT NULL
);
Ý nghĩa:
Bảng này lưu danh sách các món ăn (meals).
id: ID duy nhất đại diện cho mỗi món ăn.
name: Tên món ăn (ví dụ: "Spaghetti", "Grilled Chicken").
avg_student_rating: Điểm đánh giá trung bình của học sinh cho món ăn (ví dụ: 4.5/5).
total_calories: Tổng lượng calo của món ăn.
Mục đích:
Lưu thông tin chi tiết về các món ăn, bao gồm lượng calo và đánh giá từ học sinh.
3. Bảng meal_DATE
Cấu trúc:
sql
Copy code
CREATE TABLE meal_DATE (
    meal_id INTEGER REFERENCES meal(id),
    DATE_served DATE NOT NULL
);
Ý nghĩa:
Bảng này lưu lịch phục vụ món ăn (serving schedule).
meal_id: Tham chiếu đến id trong bảng meal, xác định món ăn được phục vụ.
DATE_served: Ngày món ăn được phục vụ.
Mục đích:
Liên kết món ăn với ngày phục vụ.
Giúp quản lý lịch trình phục vụ món ăn theo ngày.
4. Bảng meal_ingredient
Cấu trúc:
sql
Copy code
CREATE TABLE meal_ingredient (
    meal_id INTEGER REFERENCES meal(id),
    ingredient_id INTEGER REFERENCES ingredient(id)
);
Ý nghĩa:
Bảng này lưu mối quan hệ món ăn và nguyên liệu.
meal_id: Tham chiếu đến id trong bảng meal, xác định món ăn.
ingredient_id: Tham chiếu đến id trong bảng ingredient, xác định nguyên liệu.
Mục đích:
Liên kết các nguyên liệu với các món ăn sử dụng chúng.
Giúp xác định món ăn nào cần nguyên liệu nào, hỗ trợ việc quản lý bếp hiệu quả hơn.
Cách hoạt động của hệ thống
Nguyên liệu (Ingredients):

Lưu trữ danh sách tất cả các nguyên liệu.
Mỗi nguyên liệu có một id duy nhất để tham chiếu.
Món ăn (Meals):

Lưu thông tin về từng món ăn, bao gồm lượng calo và đánh giá từ học sinh.
Lịch phục vụ (Meal Schedule):

Ghi lại ngày món ăn được phục vụ, giúp quản lý thực đơn theo thời gian.
Quan hệ món ăn - nguyên liệu:

Ghi lại nguyên liệu nào được sử dụng trong món ăn nào, hỗ trợ lên kế hoạch chuẩn bị nguyên liệu.
Lợi ích thiết kế
Tránh dư thừa dữ liệu: Tách các nguyên liệu và món ăn ra bảng riêng biệt, tránh trùng lặp thông tin.
Dễ dàng mở rộng: Có thể thêm món ăn, nguyên liệu, hoặc lịch phục vụ mới mà không cần thay đổi cấu trúc bảng.
Quản lý hiệu quả: Dễ dàng xác định lịch phục vụ món ăn và nguyên liệu cần thiết.
Tính toàn vẹn dữ liệu: Sử dụng khóa ngoại (FOREIGN KEY) để đảm bảo mối quan hệ giữa các bảng luôn đúng.
