CREATE TABLE order_details (
    order_id SMALLINT,
    product_id SMALLINT,
    quantity SMALLINT,
    unit_price DECIMAL(7,4)
);

INSERT INTO order_details (order_id, product_id, quantity, unit_price) 
VALUES
(30, 34, 100, 14.0000),
(30, 80, 30, 3.5000),
(31, 7, 10, 30.0000),
(31, 51, 10, 53.0000),
(31, 80, 10, 3.5000);

--rename column unit_price to old_price
ALTER TABLE order_details RENAME COLUMN unit_price TO old_price;
--add column percentage, default value is 10
ALTER TABLE order_details ADD COLUMN percentage SMALLINT DEFAULT 10;

--Show the information of all order details
SELECT * FROM order_details;
