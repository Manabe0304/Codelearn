## Bài tập
Bảng `university_professors` không chỉ chứa dữ liệu của các giáo sư đại học mà còn chứa dữ liệu của các trường đại học và các tổ chức khác nhau. Vì bạn muốn tách riêng dữ liệu của các giáo sư ra riêng thành một bảng để tiện việc xử lí dữ liệu, nên bạn đã tạo bảng `professors` với 3 cột: `first_name`, `last_name` và `university_shortname` (bảng `university_professors` cũng có 3 cột đấy).

Sau đó, bạn lên kế hoạch để di chuyển dữ liệu từ bảng `university_professors` sang bảng `professors`. Nhưng vì tồn tại một số bản ghi hoàn toàn giống nhau ở cả 3 cột trên, vì thế bạn cần tìm cách chỉ di chuyển những bản ghi có tính duy nhất từ bảng `university_professors` sang bảng `professors`.
```
CREATE TABLE university_professors (
    first_name VARCHAR(50) NOT NULL, -- Tên giáo sư
    last_name VARCHAR(50) NOT NULL,  -- Họ giáo sư
    university VARCHAR(100) NOT NULL, -- Tên đầy đủ của trường đại học
    university_shortname VARCHAR(10) NOT NULL, -- Mã viết tắt của trường
    university_city VARCHAR(50), -- Thành phố của trường đại học
    function VARCHAR(100), -- Chức vụ
    organization VARCHAR(100), -- Tổ chức liên kết
    organization_sector VARCHAR(100), -- Lĩnh vực của tổ chức
    FOREIGN KEY (first_name, last_name, university_shortname) 
        REFERENCES professors (first_name, last_name, university_shortname) -- Ràng buộc khóa ngoại
);
```
```
INSERT INTO university_professors (first_name, last_name, university, university_shortname, university_city, function, organization, organization_sector)
VALUES
    ('Karl', 'Aberer', 'ETH Lausanne', 'EPF', 'Lausanne', 'Chairman of L3S Advisory Board', 'L3S Advisory Board', 'Education & research'),
    ('Karl', 'Aberer', 'ETH Lausanne', 'EPF', 'Lausanne', 'Member Conseil of Zeno-Karl Schindler Foundation', 'Zeno-Karl Schindler Foundation', 'Education & research'),
    ('Karl', 'Aberer', 'ETH Lausanne', 'EPF', 'Lausanne', 'Member of Conseil Fondation IDIAP', 'Fondation IDIAP', 'Education & research'),
    ('Karl', 'Aberer', 'ETH Lausanne', 'EPF', 'Lausanne', 'Panel Member', 'SNF Ambizione Program', 'Education & research'),
    ('Reza Shokrollah', 'Abhari', 'ETH Zürich', 'ETH', 'Zurich', 'Aufsichtsratsmandat', 'PNE Wind AG', 'Energy, environment & mobility'),
    ('Georges', 'Abou Jaoudé', 'ETH Lausanne', 'EPF', 'Lausanne', 'Professeur invité (2 interventions une semaine)', 'Kazan Federal University, Russia', 'Education & research'),
    ('Christian', 'Belz', 'Uni St. Gallen', 'USG', 'Saint Gallen', 'Verwaltungsrat', 'Olma Messen St. Gallen', 'Education & research');
```
```
CREATE TABLE professors (
    first_name VARCHAR(50) NOT NULL, -- Tên giáo sư
    last_name VARCHAR(50) NOT NULL,  -- Họ giáo sư
    university_shortname VARCHAR(10) NOT NULL, -- Mã viết tắt của trường
    PRIMARY KEY (first_name, last_name, university_shortname) -- Khóa chính
);
```
```
-- Chèn dữ liệu duy nhất vào bảng professors
INSERT INTO professors (first_name, last_name, university_shortname)
SELECT DISTINCT first_name, last_name, university_shortname
FROM university_professors;

-- Kiểm tra dữ liệu trong bảng professors
SELECT * FROM professors
ORDER BY first_name DESC;
```
