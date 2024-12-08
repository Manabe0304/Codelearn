CREATE TABLE affiliations (
    first_name VARCHAR(60),
    last_name VARCHAR(60),
    function TEXT,
    organization_id TEXT,
    professor_id SMALLINT
);

CREATE TABLE professors (
    id SMALLINT PRIMARY KEY,
    first_name VARCHAR(60),
    last_name VARCHAR(60),
    university_shortname CHAR(3)
);

-- Dữ liệu bảng affiliations
INSERT INTO affiliations (first_name, last_name, function, organization_id, professor_id)
VALUES 
('Anastasia', 'Ailamaki', 'Consulting on data mgmt', 'S2P Lion, Germany', NULL),
('Cesla', 'Amarelle', 'Mandat', 'Nationalrat', NULL),
('Christoph', 'Aebi', 'NA', 'SWAN Isotopen AG', NULL),
('Daniel', 'Aebersold', 'NA', 'Berner Radium-Stiftung', NULL),
('Daniel', 'Aebersold', 'NA', 'Janser Krebs-Stiftung', NULL);

-- Dữ liệu bảng professors
INSERT INTO professors (id, first_name, last_name, university_shortname)
VALUES 
(5, 'Daniel', 'Aebersold', 'UBE'),
(7, 'Christoph', 'Aebi', 'UBE'),
(10, 'Anastasia', 'Ailamaki', 'EPF'),
(11, 'Cesla', 'Amarelle', 'UNE');

-- Set professor_id to professors.id where first_name, last_name correspond to rows in professors
UPDATE affiliations
SET 
professor_id = professors.id
FROM 
professors
WHERE 
affiliations.first_name = professors.first_name
AND affiliations.last_name = professors.last_name;

-- Have a look at the affiliations table
SELECT * FROM affiliations;
