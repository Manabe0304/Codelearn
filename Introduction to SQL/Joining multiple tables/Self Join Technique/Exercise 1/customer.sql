CREATE TABLE customer (
    customer_id SMALLINT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL
);

-- Thêm dữ liệu vào bảng customer
INSERT INTO customer (customer_id, first_name, last_name, city, country) VALUES
(1, 'MARY', 'SMITH', 'Sasebo', 'Japan'),
(2, 'PATRICIA', 'JOHNSON', 'Sasebo', 'Japan'),
(3, 'LINDA', 'WILLIAMS', 'Athenai', 'Greece'),
(4, 'BARBARA', 'JONES', 'Athenai', 'Greece'),
(5, 'ELIZABETH', 'BROWN', 'Nantou', 'Taiwan');

SELECT
a.first_name || ' ' || a.last_name first_customer, 
b.first_name || ' ' || b.last_name second_customer, 
a.city, 
a.country
FROM
customer a
INNER JOIN customer b 
  ON a.city = b.city 
  AND a.country = b.country 
  AND NOT (a.first_name = b.first_name)
ORDER BY country, city, a.first_name, a.last_name;
