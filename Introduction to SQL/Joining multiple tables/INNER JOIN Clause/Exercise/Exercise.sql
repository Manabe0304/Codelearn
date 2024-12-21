-- Tạo bảng Movies
CREATE TABLE Movies (
    id SMALLINT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    director VARCHAR(255) NOT NULL,
    year VARCHAR(4) NOT NULL,
    length_minutes SMALLINT NOT NULL
);

-- Thêm dữ liệu vào bảng Movies
INSERT INTO Movies (id, title, director, year, length_minutes) VALUES
(1, 'Toy Story', 'John Lasseter', '1995', 81),
(2, 'A Bug\'s Life', 'John Lasseter', '1998', 95),
(3, 'Toy Story 2', 'John Lasseter', '1999', 93),
(4, 'Monsters, Inc.', 'Pete Docter', '2001', 92);

-- Tạo bảng Boxoffice
CREATE TABLE Boxoffice (
    movie_id SMALLINT PRIMARY KEY,
    rating DECIMAL(3, 1) NOT NULL,
    domestic_sales VARCHAR(25) NOT NULL,
    international_sales VARCHAR(25) NOT NULL,
    FOREIGN KEY (movie_id) REFERENCES Movies(id)
);

-- Thêm dữ liệu vào bảng Boxoffice
INSERT INTO Boxoffice (movie_id, rating, domestic_sales, international_sales) VALUES
(1, 8.3, '191796233', '170162503'),
(2, 7.2, '162798565', '200600000'),
(3, 7.9, '245852179', '239163000'),
(4, 8.1, '289916256', '272900000');

-- Thực hiện INNER JOIN để lấy thông tin về doanh thu
SELECT 
    Movies.title, 
    Boxoffice.domestic_sales, 
    Boxoffice.international_sales
FROM Movies
INNER JOIN Boxoffice
ON Movies.id = Boxoffice.movie_id;
