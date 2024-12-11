## Lý thuyết
### Dạng Chuẩn 3 (3NF) - Làm Cho Dễ Hiểu Hơn
Sau khi đạt **Dạng Chuẩn 2 (2NF)**, bước tiếp theo là chuyển đổi cơ sở dữ liệu sang **Dạng Chuẩn 3 (3NF)** để loại bỏ **phụ thuộc bắc cầu (transitive dependency)**.

### Khái niệm về Phụ Thuộc Bắc Cầu (Transitive Dependency)
Phụ thuộc bắc cầu xảy ra khi:

- Một cột A xác định một cột B.
- Cột B xác định một cột C.
- Khi đó, cột A gián tiếp xác định cột C, tạo ra một phụ thuộc bắc cầu giữa A và C.

Điều này vi phạm nguyên tắc của 3NF, vì các cột không khóa phải chỉ **phụ thuộc trực tiếp** vào khóa chính.

### Ví dụ: Bảng lưu trữ thông tin khóa học
Dưới đây là bảng ban đầu, lưu thông tin về các khóa học, giáo viên và phòng học:

| id | name	| teacher | num |
|----|------|---------|-----|
| 157 | Algebra	| Maggie Winters | 244 | 
| 162 | Physics	| Maggie Winters | 244 |
| 321 | Spanish I | Jeremy Smith | 309 | 
| 497 | History I | Sarah Williams | 313 | 
| 613 | Spanish II | J eremy Smith | 309 | 

### Vấn đề trong bảng ban đầu
**1. Phụ thuộc bắc cầu:**

teacher phụ thuộc vào id (khóa chính).
num (số phòng) phụ thuộc vào teacher.
Do đó, num phụ thuộc bắc cầu vào id thông qua teacher.

**2. Khó khăn khi cập nhật:**

Nếu giáo viên "Maggie Winters" chuyển sang phòng khác, chúng ta phải cập nhật tất cả các hàng có teacher = Maggie Winters. Điều này có thể dẫn đến lỗi nếu bỏ sót một số hàng.

**3. Khó khăn khi thêm mới:**

Không thể thêm một giáo viên mới nếu giáo viên đó chưa được gán khóa học, vì bảng yêu cầu thông tin cả về id, name, teacher, và num.

**4. Khó khăn khi xóa:**

Nếu xóa tất cả các khóa học của một giáo viên, thông tin về giáo viên (tên và số phòng) cũng bị mất.
### Chuyển đổi sang 3NF
Để loại bỏ phụ thuộc bắc cầu, chúng ta cần:

**1. Tách thông tin giáo viên ra bảng riêng:**

Tạo bảng teacher, lưu thông tin về giáo viên và số phòng.
Mỗi giáo viên sẽ có một ID duy nhất (khóa chính).
**2. Thay thế teacher và num trong bảng khóa học:**

Thêm cột teacher_id làm khóa ngoại tham chiếu đến bảng teacher.
### Thiết kế cơ sở dữ liệu mới
**Bảng `teacher`:**
id	name	room_num
1	Maggie Winters	244
2	Jeremy Smith	309
3	Sarah Williams	313

**Bảng `course`:**
id	name	teacher_id
157	Algebra	1
162	Physics	1
321	Spanish I	2
497	History I	3
613	Spanish II	2

### SQL để triển khai thiết kế mới
```
-- Tạo bảng teacher
CREATE TABLE teacher (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    room_num SMALLINT NOT NULL
);

-- Tạo bảng course
CREATE TABLE course (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    teacher_id INTEGER REFERENCES teacher(id)
);
```
### Lợi ích của 3NF
**1. Loại bỏ phụ thuộc bắc cầu:**

room_num (số phòng) giờ chỉ phụ thuộc trực tiếp vào teacher_id.
Các cột không khóa (name, room_num) chỉ phụ thuộc vào khóa chính trong bảng của chúng.

**2. Giảm dư thừa dữ liệu:**

Thông tin về phòng học của giáo viên chỉ lưu trữ một lần trong bảng teacher.

**3. Dễ dàng cập nhật:**

Nếu một giáo viên chuyển sang phòng khác, chỉ cần cập nhật trong bảng teacher.

**4. Dễ dàng thêm hoặc xóa:**

Có thể thêm giáo viên mới mà không cần gán ngay khóa học.
Nếu xóa khóa học, thông tin giáo viên vẫn còn.
## Kết luận
Chuyển đổi cơ sở dữ liệu sang 3NF giúp tăng tính toàn vẹn dữ liệu, loại bỏ các vấn đề liên quan đến phụ thuộc bắc cầu, và làm cho cơ sở dữ liệu dễ dàng quản lý, bảo trì hơn.
