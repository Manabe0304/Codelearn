## Bài tập
Bạn có thiết kế của bảng `employee`s như sau:
```
CREATE TABLE employees(
    emp_id SERIAL PRIMARY KEY,
    emp_name VARCHAR(10),
    hire_date DATE DEFAULT '2017-01-01'
    salary DECIMAL(7,2),
    com DECIMAL(7,2) DEFAULT 0.03
);
```
Sau khi tạo thành công, bạn chạy một số câu lệnh `INSERT` bên dưới:
```
--Insert information of employees to database
INSERT INTO employees(emp_name, salary) VALUES ('Marie', 2000);
INSERT INTO employees(emp_name, salary) VALUES ('Snoop', 2000.55);
INSERT INTO employees(emp_name, salary) VALUES ('Maries', 3000);
INSERT INTO employees(emp_name, salary) VALUES ('Nguyen', 2000);
INSERT INTO employees VALUES ('SE001','Mary', '2019-01-03', 1500, 0.05);
INSERT INTO employees VALUES ('SE002','Robert', '2019-03-01', 1500, 0.05);
INSERT INTO employees(emp_name, salary, com) VALUES ('Taylor', 1700, 0.05);
INSERT INTO employees(emp_name, salary, com) VALUES ('Drago', 1800, 0.01);
INSERT INTO employees(emp_name, salary) VALUES ('Drayon', 1900);
INSERT INTO employees(emp_name, salary) VALUES ('Drayoneegan', 1900);
```

### Kết quả
| emp_id | emp_name	| hire_date	| salary | com |
|--------|----------|-----------|--------|-----|
| 1	| Marie	| 2017-01-01 | 2000.00 | 0.03 | 
| 2	| Snoop | 2017-01-01 | 2000.55 | 0.03 |
| 3	| Maries | 2017-01-01	| 3000.00	| 0.03 |
| 4	| Nguyen | 2017-01-01	| 2000.00	| 0.03 |
| 5	| Taylor | 2017-01-01	| 1700.00	| 0.05 |
| 6	| Drago	| 2017-01-01 | 1800.00 | 0.01 |
| 7	| Drayon | 2017-01-01 | 1900.00 | 0.03 |
