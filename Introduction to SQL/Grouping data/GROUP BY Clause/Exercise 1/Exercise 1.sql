CREATE TABLE departments (
    id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    role VARCHAR(50)
);

INSERT INTO departments (id, department_name)
VALUES
(1, 'IT'),
(2, 'PD');

INSERT INTO employees (id, name, role)
VALUES
(1, 'Donald Cole', 'Artist'),
(2, 'James Richard', 'Artist'),
(3, 'John Tucker', 'Artist'),
(4, 'Donald Cole', 'Engineer');

SELECT
department_name,name
FROM
departments, employees
GROUP BY
department_name,name
ORDER BY
department_name,name;
