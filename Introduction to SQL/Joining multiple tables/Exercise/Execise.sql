CREATE TABLE staff (
    staff_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    address_id INT,
    store_id INT,
    active BOOLEAN
);

INSERT INTO staff (staff_id, first_name, last_name, address_id, store_id, active)
VALUES 
(1, 'Mike', 'Hillyer', 3, 1, 1),
(2, 'Jon', 'Stephens', 4, 2, 1);

CREATE TABLE address (
    address_id INT PRIMARY KEY,
    address VARCHAR(100),
    district VARCHAR(50),
    city_id INT,
    postal_code VARCHAR(20),
    phone VARCHAR(20)
);

INSERT INTO address (address_id, address, district, city_id, postal_code, phone)
VALUES 
(3, '23 Workhaven Lane', 'Alberta', 300, '35200', '14033335568'),
(4, '1411 Lillydale Drive', 'QLD', 576, '17886', '6172235589'),
(5, '1913 Hanoi Way', 'Nagasaki', 463, '35200', '28303384290'),
(6, '1121 Loja Avenue', 'California', 463, '17886', '838635286649'),
(7, '692 Joliet Street', 'Attika', 38, '83579', '448477190408');

CREATE TABLE city (
    city_id INT PRIMARY KEY,
    city VARCHAR(50)
);

INSERT INTO city (city_id, city)
VALUES 
(1, 'A Corua (La Corua)'),
(200, 'Hamilton'),
(300, 'Lethbridge'),
(400, 'Patiala'),
(576, 'Woodridge');

SELECT
first_name||' '||last_name AS full_name,
postal_code||', '||address||', '||district||', '||city.city AS address
FROM
staff
JOIN address ON staff.address_id=address.address_id
JOIN city ON address.city_id=city.city_id
ORDER BY staff_id ASC;
