CREATE TABLE students (
    student_id SMALLINT PRIMARY KEY,
    student_name VARCHAR(50),
    grade DECIMAL(10,2)
);

INSERT INTO students (student_id, student_name, grade) VALUES
(1, 'Oliver Smith', 3.2),
(2, 'Jacob Bell', 2.9),
(3, 'William Thompson', 3.1),
(4, 'Sophie Clark', 3.5),
(5, 'Daniel Palmer', 3.6),
(6, 'Emily Morris', 4.0),
(7, 'Zachary Mills', 2.5);

SELECT ROUND(AVG(grade), 2) AS average_grade
FROM (
    SELECT grade
    FROM students
    ORDER BY grade DESC
    LIMIT 5
) top;
