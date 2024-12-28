-- Tạo bảng departments
CREATE TABLE departments (
    id SMALLINT PRIMARY KEY,
    department_name VARCHAR(50)
);

-- Tạo bảng employees
CREATE TABLE employees (
    id SMALLINT PRIMARY KEY,
    name VARCHAR(50),
    department_id SMALLINT,
    FOREIGN KEY (department_id) REFERENCES departments(id)
);

-- Chèn dữ liệu vào bảng departments
INSERT INTO departments (id, department_name) VALUES
(1, 'DU1'),
(2, 'HR'),
(3, 'Sales'),
(4, 'Warehousing'),
(5, 'Logistics');

-- Chèn dữ liệu vào bảng employees
INSERT INTO employees (id, name, department_id) VALUES
(1, 'Becky A.', 1),
(2, 'Dan B.', 1),
(3, 'Sharon F.', 1),
(4, 'Dan M.', 3),
(5, 'Malcom S.', 6); -- Note: department_id = 6 không tồn tại trong departments

SELECT department_name 
FROM departments 
WHERE NOT EXISTS (
    SELECT 1 
    FROM employees 
    WHERE employees.department_id = departments.id
)
ORDER BY id;
