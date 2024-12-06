CREATE TABLE employees (
  emp_id VARCHAR(4),
  emp_name VARCHAR(10),
  hire_date VARCHAR(10),
  salary DECIMAL(7,2),
  com DECIMAL (7,2)
);

ALTER TABLE employees
ALTER COLUMN emp_id TYPE VARCHAR(7);

--Insert information of employees to database
INSERT INTO employees(emp_id,emp_name,hire_date,salary,com) 
VALUES 
('SE00001','Marie','2017-01-01',2000,0.03),
('SE00002','Harry','2017-01-01',2000.55,0.03),
('SE00003','Maries','2017-01-01',3000,0.03),
('SE00004','Ron','2017-01-01',3000,0.03),
('003','Hermione','2017-01-01',3000,0.03);

--Show all the information of all employees ascendingly
SELECT * FROM employees ORDER BY emp_id;
