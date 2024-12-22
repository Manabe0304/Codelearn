-- Tạo bảng Fortune
CREATE TABLE Fortune (
    rank SERIAL PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    name VARCHAR(100) NOT NULL,
    sector VARCHAR(100),
    industry VARCHAR(100),
    employees INTEGER NOT NULL
);

-- Thêm dữ liệu vào bảng Fortune
INSERT INTO Fortune (rank, title, name, sector, industry, employees) VALUES
(1, 'Walmart', 'Wal-Mart Stores, Inc.', 'Retailing', 'General Merchandisers', 2300000),
(2, 'Berkshire Hathaway', 'Berkshire Hathaway Inc.', 'Financials', 'Insurance: Property and Casualty', 367700),
(3, 'Apple', 'Apple, Inc.', 'Technology', NULL, 116000),
(4, 'Exxon Mobil', 'Exxon Mobil Corporation', NULL, NULL, 72700);

-- Sử dụng COALESCE để xử lý giá trị NULL trong cột industry
SELECT 
    rank,
    title,
    name,
    COALESCE(sector, 'Unknown') AS sector,
    COALESCE(industry, COALESCE(sector, 'Unknown')) AS industry,
    employees
FROM Fortune;
