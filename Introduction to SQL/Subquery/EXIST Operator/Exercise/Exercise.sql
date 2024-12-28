-- Tạo bảng clubs
CREATE TABLE clubs (
    id SMALLINT PRIMARY KEY,
    name VARCHAR(50)
);

-- Tạo bảng students
CREATE TABLE students (
    id SMALLINT PRIMARY KEY,
    name VARCHAR(50),
    club_id SMALLINT,
    FOREIGN KEY (club_id) REFERENCES clubs(id)
);

-- Chèn dữ liệu vào bảng clubs
INSERT INTO clubs (id, name) VALUES
(23, 'Theater club'),
(64, 'Soccer club'),
(87, 'Glee club');

-- Chèn dữ liệu vào bảng students
INSERT INTO students (id, name, club_id) VALUES
(3, 'Richard Gear', 23),
(6, 'Jennifer Offencerence', 11),
(14, 'Obiten Kenobi', 87),
(36, 'Closece', 87);

SELECT * 
FROM students
WHERE EXISTS (
    SELECT 1 
    FROM clubs 
    WHERE clubs.id = students.club_id
)
ORDER BY students.id;

