CREATE TABLE transactions (
    transaction_date DATE,
    amount TEXT,
    fee TEXT
);

INSERT into transactions (transaction_date, amount, fee)
VALUES
('1999-01-08', '500', '20'),
('1999-01-07', '403', '30'),
('1999-02-08', '3430', '30'),
('1999-03-08', '5454', '40'),
('1999-04-08', '1254', '10');

SELECT 
transaction_date,
(CAST (amount AS INTEGER) + CAST(fee AS INTEGER))as net_amount
FROM 
transactions;
