-- Create the table
CREATE TABLE reservedNicknames (
  id VARCHAR(100),
  nickname VARCHAR(100)
);

-- Insert data into the table
INSERT INTO reservedNicknames (id, nickname) 
VALUES
    ('1', 'alex2020'),
    ('123', 'qwuerty1'),
    ('id001', 'alex1990'),
    ('id021', 'trungduyen0220'),
    ('id1', 'alex1990x');

-- Update rows where nickname length is not equal to 8
UPDATE reservedNicknames
SET id = 'rename - ' || id,
    nickname = 'rename - ' || nickname
WHERE LENGTH(nickname) <> 8;

-- Select and display all data ordered by id
SELECT * FROM reservedNicknames ORDER BY id;
