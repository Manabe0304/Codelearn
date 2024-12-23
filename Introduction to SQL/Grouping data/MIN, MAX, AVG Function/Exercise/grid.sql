CREATE TABLE grid (
    grid_id SMALLINT PRIMARY KEY,
    description TEXT,
    event_date DATE,
    restore_date DATE,
    region VARCHAR(10),--Khu vực xảy ra sự kiện
    demand_loss INTEGER, --Sự mất nhu cầu tiêu thụ điện vì sự kiện này
    affected_customer INTEGER --Số lượng khách hàng bị ảnh hưởng bởi sự kiện
);

INSERT INTO grid (grid_id, description, event_date, restore_date, region, demand_loss, affected_customer)
VALUES
(1, 'Severe Weather  Thunderstorms', '2014-06-30', '2014-07-01', 'RFC', NULL, 127000),
(2, 'Severe Weather  Thunderstorms', '2014-06-30', '2014-07-01', 'MRO', 424, 120000),
(3, 'Fuel Supply Emergency  Coal', '2014-06-27', '2014-07-01', 'MRO', 218, NULL),
(4, 'Physical Attack  Vandalism', '2014-06-24', '2014-06-24', 'SERC', 234, NULL);

SELECT 
    COALESCE(MIN(affected_customers), 0) AS min_affected_customers,
    COALESCE(MAX(affected_customers), 0) AS max_affected_customers,
    COALESCE(ROUND(AVG(affected_customers), 3), 0) AS avg_affected_customers
FROM grid;
