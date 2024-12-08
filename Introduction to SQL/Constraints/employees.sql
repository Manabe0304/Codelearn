CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR (50),
    last_name VARCHAR (50),
    birth_date DATE CHECK (birth_date > '1900-01-01'),
    joined_date DATE CHECK (joined_date > birth_date),
    salary NUMERIC CHECK(salary > 0)
);

--Define these contraints here
ALTER TABLE employees
ADD CONSTRAINT chk_birthdate CHECK ( birth_date < '1900-01-01' ),
ADD CONSTRAINT chk_joineddate CHECK ( joined_date < birth_date ),
ADD CONSTRAINT chk_salary CHECK ( salary < 0 );

--Drop these constraints here
ALTER TABLE employees
  DROP CONSTRAINT IF EXISTS CHK_Birthdate,
  DROP CONSTRAINT IF EXISTS CHK_JoinedDate,
  DROP CONSTRAINT IF EXISTS CHK_Salary;

-- Insert the information of employees to databse
INSERT INTO employees (id, first_name, last_name, birth_date, joined_date, salary) 
VALUES
('1','First','First','1901-01-01','1950-01-01',1000),
('2','Second','Second','1902-02-02','1950-01-01',1000),
('3','Third','Third','1903-03-03','1950-01-01',1000);

--Show the information of all employees
SELECT * FROM employees;
