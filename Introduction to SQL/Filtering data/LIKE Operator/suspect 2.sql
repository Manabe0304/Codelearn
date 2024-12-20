-- Tạo bảng suspect
CREATE TABLE suspect (
    id SMALLINT,
    name VARCHAR(50),
    surname VARCHAR(50),
    height SMALLINT,
    weight SMALLINT
);

-- Thêm dữ liệu mẫu
INSERT INTO suspect (id, name, surname, height, weight) VALUES
(1, 'John', 'Doe', 165, 60),
(2, 'Bill', 'Green', 170, 67),
(3, 'Baelfire', 'Grehn', 172, 70),
(4, 'Bill', 'Gretan', 185, 55),
(5, 'Brendon', 'Grewn', 180, 50),
(6, 'bill', 'Green', 172, 50);

-- Truy vấn để tìm các nghi phạm có thể được loại khỏi danh sách nghi phạm
SELECT id, name, surname
FROM suspect
WHERE
name NOT ILIKE 'B%'
or height <= 170
or surname NOT ILIKE 'Gre_n'
ORDER BY id;
