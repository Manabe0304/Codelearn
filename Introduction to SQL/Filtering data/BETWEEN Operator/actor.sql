-- Tạo bảng actor
CREATE TABLE actor (
    actor_id SMALLINT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birth_year VARCHAR(4)
);

-- Thêm dữ liệu mẫu vào bảng
INSERT INTO actor (actor_id, first_name, last_name, birth_year) VALUES
(1, 'PENELOPE', 'GUINESS', '1998'),
(2, 'NICK', 'WAHLBERG', '2001'),
(3, 'ED', 'CHASE', '1997'),
(4, 'JENNIFER', 'DAVIS', '1985'),
(5, 'JOHNNY', 'LOLLOBRIGIDA', '1999');

-- Truy vấn để lọc diễn viên sinh từ năm 1990 đến 1999
SELECT actor_id, first_name, last_name, birth_year
FROM actor
WHERE birth_year BETWEEN '1990' AND '1999'
ORDER BY first_name ASC; -- Sắp xếp theo tên (first_name) tăng dần
