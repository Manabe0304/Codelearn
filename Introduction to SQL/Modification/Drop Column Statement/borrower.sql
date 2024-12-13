CREATE TABLE borrower (
    id SMALLINT PRIMARY KEY,
    full_name VARCHAR (100) NOT NULL
);

-- Add new columns to the borrower table
ALTER TABLE borrower
ADD COLUMN first_name VARCHAR (100) NOT NULL, 
ADD COLUMN last_name VARCHAR (100) NOT NULL;

-- Remove column from borrower table to satisfy 1NF
ALTER TABLE borrower
DROP COLUMN full_name;

-- Insert data to the borrower table
INSERT INTO borrower VALUES (1,'Duyen','Nguyen');
INSERT INTO borrower VALUES (2,'Nam','Bui');
INSERT INTO borrower VALUES (4,'Yen','Luyen');

-- Show all information of the borrowers
SELECT * FROM borrower;
