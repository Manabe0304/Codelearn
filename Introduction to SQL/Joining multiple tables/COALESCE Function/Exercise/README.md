## Bài tập
Một trong những mục tiêu của công ty bạn trong năm nay là xuất hiện trong Fortune Global 500, vì vậy vào đầu năm, ông chủ của bạn muốn bạn đưa ra báo cáo về dữ liệu của Fortune Global trong bảng `fortune`, có cấu trúc như sau:

- `rank(SERIAL)`: thứ hạng của tổ chức trong Fortune Global, là khóa chính của bảng
- `title(VARCHAR[50])`: tên đề của tổ chức
- `name(VARCHAR[100])`: tên đầy đủ của tổ chức
- `sector(VARCHAR[100])`: ngành, lĩnh vực của tổ chức
- `industry(VARCHAR[100])`: hoạt động kinh tế liên quan đến chế biến nguyên liệu thô và sản xuất hàng hóa trong các nhà máy của tổ chức
- `employees(INTEGER)`: tổng số nhân viên trong tổ chức

Trong bảng `fortune`, cột `industry` chứa một số giá trị `NULL`. Hãy sử dụng `COALESCE()` để sử dụng giá trị của cột `sector` thay thế vào cột `industry` khi `industry` có giá trị `NULL`. Nếu cột `sector` cũng không có giá trị, bạn nên thay thế nó bằng `"Unknown"` trong cả hai cột. Sau đó hiển thị tất cả thông tin của các tổ chức trong báo cáo cho sếp của bạn.

## Ví dụ
Với dữ liệu của bảng `fortune` như sau

| rank | title | name	| sector | industry	| employees |
|------|-------|------|--------|----------|-----------|
| 1	| Walmart	| Wal-Mart Stores, Inc.	| Retailing	| General Merchandisers | 2300000 | 
| 2	| Berkshire Hathaway | Berkshire Hathaway Inc.	| Financials | Insurance: Property and Casualty | 367700 |
| 3	| Apple	| Apple, Inc. | Technology | null | 116000 | 
| 4	| Exxon Mobil	| Exxon Mobil Corporation	| null | null | 72700 |

Kết quả đầu ra sẽ là

| rank | title | name	| sector | industry	| employees |
|------|-------|------|--------|----------|-----------|
| 1	| Walmart	| Wal-Mart Stores, Inc.	| Retailing	| General Merchandisers | 2300000 | 
| 2	| Berkshire Hathaway | Berkshire Hathaway Inc.	| Financials | Insurance: Property and Casualty | 367700 |
| 3	| Apple	| Apple, Inc. | Technology | Technology	| 116000 |
| 4	| Exxon Mobil	| Exxon Mobil Corporation	| Unknown| 	Unknown	| 72700 |
