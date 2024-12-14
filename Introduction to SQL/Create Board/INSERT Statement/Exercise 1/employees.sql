CREATE TABLE employees(
  emp_id VARCHAR(7),
  emp_name VARCHAR(50),
  hire_date VARCHAR(10),
  salary DECIMAL(7,2),
  com DECIMAL(7,2)
);

--Insert information of employees to database
INSERT INTO employees(emp_id, emp_name, hire_date, salary, com)
VALUES ('SE20001','Harry','2017-01-01',2000,0.03);
INSERT INTO employees(emp_id, emp_name, hire_date, salary, com)
VALUES ('SE20002','Hermione','2018-01-01',2000.55,0.04);
INSERT INTO employees(emp_id, emp_name, hire_date, salary, com)
VALUES ('SE20003','Ron','2017-02-01',3000,0.03);
INSERT INTO employees(emp_id, emp_name, hire_date, salary, com)
VALUES ('SE20004','Gimmy','2019-01-03',3000,0.03);

--Select all the information in the table employees
SELECT * FROM employees;
