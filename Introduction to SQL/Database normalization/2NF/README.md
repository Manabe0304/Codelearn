## Lý thuyết
### Dạng Chuẩn 2 (2NF) - Làm Cho Dễ Hiểu Hơn
Sau khi một bảng đạt **Dạng Chuẩn 1 (1NF)**, bước tiếp theo là chuyển đổi nó sang **Dạng Chuẩn 2 (2NF)** để loại bỏ các vấn đề liên quan đến sự phụ thuộc không đầy đủ vào khóa chính.

### Ví dụ: Bảng sách giáo khoa (textbook)
Bảng `textbook` ban đầu được thiết kế như sau:

| id | title | publisher_name | publisher_site	| quantity |
|----|-------|----------------|-----------------|----------|
| 23 | Introductory Algebra: 1st Edition | ABC Publishing | www.abc.com | 32 | 
| 74 | Calculus Foundations	| ABC Publishing | www.abc.com	| 27 | 
| 112 | Statistical Concepts | Martin House	| www.mh.com | 22 | 

### Vấn đề trong bảng ban đầu
**1. Phụ thuộc không đầy đủ vào khóa chính (id):**

- Các cột `publisher_name` và `publisher_site` không liên quan trực tiếp đến sách cụ thể mà thay vào đó, chúng phụ thuộc vào nhà xuất bản.
- Điều này dẫn đến sự dư thừa dữ liệu: Thông tin về nhà xuất bản (như `publisher_name` và `publisher_site`) được lặp lại ở nhiều hàng.

**2. Khó cập nhật:**

Nếu URL của nhà xuất bản "ABC Publishing" thay đổi, chúng ta phải cập nhật tất cả các hàng liên quan. Nếu không cập nhật đủ, dữ liệu sẽ không nhất quán (ví dụ: hàng 23 và 74 có các URL khác nhau).

**3. Khó thêm dữ liệu:**

Nếu muốn thêm thông tin về một nhà xuất bản mới (chưa có sách), không thể làm điều đó mà không cần tạo một bản ghi sách ảo (dẫn đến **chèn dị thường**).

**4. Khó xóa dữ liệu:**

Nếu xóa tất cả sách của "Martin House", thông tin về nhà xuất bản này cũng sẽ bị mất (dẫn đến **xóa dị thường**).

### Chuyển đổi sang 2NF
Để chuyển bảng `textbook` sang 2NF, cần thực hiện các bước sau:

**1. Tách thông tin nhà xuất bản ra bảng riêng:**
- Chuyển các cột `publisher_name` và `publisher_site` vào một bảng mới, gọi là **publisher**.
- Mỗi nhà xuất bản sẽ có một khóa chính riêng (id).

**2. Tạo khóa ngoại trong bảng textbook:**

Thay thế `publisher_name` và `publisher_site` trong bảng **textbook** bằng `publisher_id`, là khóa ngoại tham chiếu đến bảng `publisher`.

### Thiết kế cơ sở dữ liệu mới
Bảng `publisher`:
| id | name	| site | 
|----|------|------|
| 1	| ABC Publishing | www.abc.com | 
| 2	| Martin House | www.mh.com | 

Bảng `textbook`:
| id | title | quantity | publisher_id | 
|----|-------|----------|--------------|
| 23 | Introductory Algebra: 1st Edition | 32 | 1 | 
| 74 | Calculus Foundations	| 27 | 1 |
| 112 | Statistical Concepts | 22 | 2 | 

### SQL để triển khai thiết kế mới
```
-- Tạo bảng publisher
CREATE TABLE publisher (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    site VARCHAR(50)
);

-- Tạo bảng textbook
CREATE TABLE textbook (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    quantity SMALLINT NOT NULL DEFAULT 0,
    publisher_id INTEGER REFERENCES publisher(id)
);
```

### Lợi ích của 2NF
**1. Giảm dư thừa dữ liệu:**

- Thông tin về nhà xuất bản chỉ lưu trữ một lần trong bảng publisher.

**2. Dễ dàng cập nhật:**

- Thay đổi URL của nhà xuất bản chỉ cần cập nhật trong một hàng của bảng publisher.

**3. Tăng tính nhất quán:**

- Tránh tình trạng URL nhà xuất bản không khớp nhau cho cùng một nhà xuất bản.

**4. Dễ dàng quản lý:**

- Có thể thêm hoặc xóa thông tin nhà xuất bản mà không ảnh hưởng đến dữ liệu sách.
## Kết luận
Việc chuyển đổi sang 2NF giúp cơ sở dữ liệu giảm thiểu trùng lặp, tăng tính toàn vẹn và dễ dàng quản lý hơn. Dạng chuẩn này là một bước quan trọng để đảm bảo cơ sở dữ liệu được thiết kế khoa học và hiệu quả.

CREATE TABLE meal_ingredient (
    meal_id INTEGER REFERENCES meal(id),
    ingredient_id INTEGER REFERENCES ingredient(id)
);
```
