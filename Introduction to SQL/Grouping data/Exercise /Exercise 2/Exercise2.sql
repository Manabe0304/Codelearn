CREATE TABLE payment (
    payment_id SERIAL PRIMARY KEY,
    staff_id SMALLINT,
    rental_id SMALLINT,
    amount DECIMAL(10, 2),
    payment_date TIMESTAMP,
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id) ON DELETE CASCADE,
    FOREIGN KEY (rental_id) REFERENCES rental(rental_id) ON DELETE CASCADE
);

CREATE TABLE rental (
    rental_id SERIAL PRIMARY KEY,
    rental_date TIMESTAMP,
    inventory_id SMALLINT,
    staff_id SMALLINT,
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id) ON DELETE CASCADE
);

CREATE TABLE staff (
    staff_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    store_id SMALLINT,
    active BOOLEAN,
    FOREIGN KEY (store_id) REFERENCES store(store_id) ON DELETE SET NULL
);

CREATE TABLE store (
    store_id SERIAL PRIMARY KEY,
    manager_staff_id SMALLINT,
    address_id SMALLINT,
    FOREIGN KEY (manager_staff_id) REFERENCES staff(staff_id) ON DELETE CASCADE
);

-- Dữ liệu bảng payment
INSERT INTO payment (staff_id, rental_id, amount, payment_date) VALUES
(2, 76, 2.99, '2005-05-25 11:30:37'),
(1, 14762, 0.99, '2005-05-28 10:35:23'),
(2, 14825, 5.99, '2005-06-15 00:54:12'),
(1, 15298, 0.99, '2005-06-15 18:02:53'),
(2, 15315, 9.99, '2005-06-15 21:08:46'),
(1, 320, 4.99, '2005-06-16 15:18:57');

-- Dữ liệu bảng rental
INSERT INTO rental (rental_date, inventory_id, staff_id) VALUES
('2005-05-25 11:30:37', 3021, 2),
('2005-08-21 23:33:57', 4249, 1),
('2005-08-22 01:27:57', 1449, 2),
('2005-08-22 19:41:37', 1446, 1),
('2005-08-22 20:03:46', 312, 2),
('2005-05-27 00:09:24', 1090, 1);

-- Dữ liệu bảng staff
INSERT INTO staff (first_name, last_name, email, store_id, active) VALUES
('Mike', 'Hillyer', 'Mike.Hillyer@sakilastaff.com', 1, TRUE),
('Jon', 'Stephens', 'Jon.Stephens@sakilastaff.com', 2, TRUE);

-- Dữ liệu bảng store
INSERT INTO store (manager_staff_id, address_id) VALUES
(1, 1),
(2, 2);

SELECT
    s.store_id,
    SUM(p.amount) AS sum
FROM
    payment p
JOIN rental r ON p.rental_id = r.rental_id
JOIN staff st ON r.staff_id = st.staff_id
JOIN store s ON st.store_id = s.store_id
GROUP BY s.store_id
ORDER BY sum DESC;

