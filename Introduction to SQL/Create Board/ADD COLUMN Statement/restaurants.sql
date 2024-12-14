CREATE TABLE restaurants (
  id SMALLINT,
  name VARCHAR(50)
);

INSERT INTO restaurants (id, name)
VALUES
    (1, 'The Big City Barbecue'),
    (2, 'Roadhouse'),
    (3, 'Hibiscus'),
    (4, 'The Waterfront Courtyard'),
    (5, 'The Royal Spicesy');

--Column description should be set to "TBD" (for To Be Defined).
ALTER TABLE restaurants ADD COLUMN description TEXT DEFAULT 'TBD';
--Column active should be set to 1.
ALTER TABLE restaurants ADD COLUMN active SMALLINT DEFAULT 1;

-- Show the information of all restaurants ordering by id.
SELECT * FROM restaurants ORDER BY id;
