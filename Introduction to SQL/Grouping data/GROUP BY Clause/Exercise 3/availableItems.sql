CREATE TABLE availableItems (
    id SMALLINT PRIMARY KEY,
    item_name VARCHAR(50) NOT NULL,
    item_type VARCHAR(50) NOT NULL
);

INSERT INTO availableItems (id, item_name, item_type)
VALUES
(1, 'SafeDisk 4GB', 'USB drive'),
(2, 'SafeDisk 8GB', 'USB drive'),
(3, 'Cinco 50-Pack', 'DVD'),
(4, 'SafeDisk 4GB', 'Memory card'),
(5, 'SafeDisk 8GB', 'Memory card'),
(6, 'Cinco 30-Pack', 'DVD'),
(7, 'SafeDisk 4GB', 'Memory card'),
(8, 'SafeDisk 4GB', 'Memory card'),
(9, 'DiskHolder', 'Misc'),
(10, 'Cinco 50-Pack', 'DVD'),
(11, 'SafeDisk 4GB', 'USB drive'),
(12, 'DiskCleaner Pro', 'Misc');

SELECT 
    item_name,
    item_type,
    COUNT(*) AS item_count
FROM 
    availableItems
GROUP BY 
    item_name, item_type
ORDER BY 
    item_type ASC, 
    item_name ASC;
