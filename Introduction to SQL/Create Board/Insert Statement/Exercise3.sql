CREATE TABLE university_professors (
    first_name VARCHAR(50) NOT NULL, -- Tên giáo sư
    last_name VARCHAR(50) NOT NULL,  -- Họ giáo sư
    university VARCHAR(100) NOT NULL, -- Tên đầy đủ của trường đại học
    university_shortname VARCHAR(10) NOT NULL, -- Mã viết tắt của trường
    university_city VARCHAR(50), -- Thành phố của trường đại học
    function VARCHAR(100), -- Chức vụ
    organization VARCHAR(100), -- Tổ chức liên kết
    organization_sector VARCHAR(100), -- Lĩnh vực của tổ chức
    FOREIGN KEY (first_name, last_name, university_shortname) 
        REFERENCES professors (first_name, last_name, university_shortname) -- Ràng buộc khóa ngoại
);

INSERT INTO university_professors (first_name, last_name, university, university_shortname, university_city, function, organization, organization_sector)
VALUES
    ('Karl', 'Aberer', 'ETH Lausanne', 'EPF', 'Lausanne', 'Chairman of L3S Advisory Board', 'L3S Advisory Board', 'Education & research'),
    ('Karl', 'Aberer', 'ETH Lausanne', 'EPF', 'Lausanne', 'Member Conseil of Zeno-Karl Schindler Foundation', 'Zeno-Karl Schindler Foundation', 'Education & research'),
    ('Karl', 'Aberer', 'ETH Lausanne', 'EPF', 'Lausanne', 'Member of Conseil Fondation IDIAP', 'Fondation IDIAP', 'Education & research'),
    ('Karl', 'Aberer', 'ETH Lausanne', 'EPF', 'Lausanne', 'Panel Member', 'SNF Ambizione Program', 'Education & research'),
    ('Reza Shokrollah', 'Abhari', 'ETH Zürich', 'ETH', 'Zurich', 'Aufsichtsratsmandat', 'PNE Wind AG', 'Energy, environment & mobility'),
    ('Georges', 'Abou Jaoudé', 'ETH Lausanne', 'EPF', 'Lausanne', 'Professeur invité (2 interventions une semaine)', 'Kazan Federal University, Russia', 'Education & research'),
    ('Christian', 'Belz', 'Uni St. Gallen', 'USG', 'Saint Gallen', 'Verwaltungsrat', 'Olma Messen St. Gallen', 'Education & research');

CREATE TABLE professors (
    first_name VARCHAR(50) NOT NULL, -- Tên giáo sư
    last_name VARCHAR(50) NOT NULL,  -- Họ giáo sư
    university_shortname VARCHAR(10) NOT NULL, -- Mã viết tắt của trường
    PRIMARY KEY (first_name, last_name, university_shortname) -- Khóa chính
);

-- Chèn dữ liệu duy nhất vào bảng professors
INSERT INTO professors (first_name, last_name, university_shortname)
SELECT DISTINCT first_name, last_name, university_shortname
FROM university_professors;

-- Kiểm tra dữ liệu trong bảng professors
SELECT * FROM professors
ORDER BY first_name DESC;
