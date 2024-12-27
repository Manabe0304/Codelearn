-- Bảng store
CREATE TABLE store (
    store_id SERIAL PRIMARY KEY,
    manager_staff_id SMALLINT,
    address_id SMALLINT,
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Bảng staff
CREATE TABLE staff (
    staff_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    store_id SMALLINT,
    active BOOLEAN DEFAULT TRUE,
    address_id SMALLINT,
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Bảng rental
CREATE TABLE rental (
    rental_id SERIAL PRIMARY KEY,
    rental_date TIMESTAMP,
    inventory_id SMALLINT,
    return_date TIMESTAMP,
    staff_id SMALLINT,
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Bảng payment
CREATE TABLE payment (
    payment_id SERIAL PRIMARY KEY,
    staff_id SMALLINT,
    rental_id SMALLINT,
    amount DECIMAL(10, 2),
    payment_date TIMESTAMP,
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Dữ liệu bảng store
INSERT INTO store (manager_staff_id, address_id) VALUES
(1, 1),
(2, 2);

-- Dữ liệu bảng staff
INSERT INTO staff (first_name, last_name, email, store_id, address_id, active) VALUES
('Mike', 'Hillyer', 'Mike.Hillyer@sakilastaff.com', 1, 1, TRUE),
('Jon', 'Stephens', 'Jon.Stephens@sakilastaff.com', 2, 2, TRUE);

-- Dữ liệu bảng rental
INSERT INTO rental (rental_date, inventory_id, return_date, staff_id) VALUES
('2005-05-25 11:30:37', 3021, NULL, 2),
('2005-08-21 23:33:57', 4249, NULL, 1),
('2005-08-22 01:27:57', 1449, NULL, 2),
('2005-08-22 19:41:37', 1446, NULL, 1),
('2005-08-22 20:03:46', 312, NULL, 2),
('2005-05-27 00:09:24', 1090, NULL, 1);

-- Dữ liệu bảng payment
INSERT INTO payment (staff_id, rental_id, amount, payment_date) VALUES
(2, 1, 2.99, '2005-05-25 11:30:37'),
(1, 2, 0.99, '2005-05-28 10:35:23'),
(2, 3, 5.99, '2005-06-15 00:54:12'),
(1, 4, 0.99, '2005-06-15 18:02:53'),
(2, 5, 9.99, '2005-06-15 21:08:46'),
(1, 6, 4.99, '2005-06-16 15:18:57');

-- Thêm các ràng buộc ngoại
ALTER TABLE payment ADD CONSTRAINT fk_payment_staff FOREIGN KEY (staff_id) REFERENCES staff(staff_id) ON DELETE CASCADE;
ALTER TABLE payment ADD CONSTRAINT fk_payment_rental FOREIGN KEY (rental_id) REFERENCES rental(rental_id) ON DELETE CASCADE;

ALTER TABLE rental ADD CONSTRAINT fk_rental_staff FOREIGN KEY (staff_id) REFERENCES staff(staff_id) ON DELETE CASCADE;

ALTER TABLE store ADD CONSTRAINT fk_store_manager FOREIGN KEY (manager_staff_id) REFERENCES staff(staff_id) ON DELETE CASCADE;
ALTER TABLE staff ADD CONSTRAINT fk_staff_store FOREIGN KEY (store_id) REFERENCES store(store_id) ON DELETE CASCADE;

SELECT
st.store_id, SUM(p.amount) as sum
FROM store st
INNER JOIN rental r ON st.manager_staff_id=r.staff_id
INNER JOIN payment p ON r.rental_id=p.rental_id
GROUP BY
st.store_id
ORDER BY
sum desc;
