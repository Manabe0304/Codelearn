Bạn là nhà đầu tư của công ty Stars và bạn có thông tin về các bộ phim có các mối quan hệ dưới đây

Bảng Movies là danh sách tất cả các bộ phim của phim của Pixar

id (smallint): Khóa chính thay thế được sử dụng để nhận dạng duy nhất từng phim trong bảng.
title (varchar[255]): Tiêu đề của bộ phim.
director (varchar[255]): Tên của đạo diễn của bộ phim.
year (varchar[4]): Năm mà bộ phim phát hành.
length_minutes (smallint): Độ dài của phim.
Bảng Boxoffice lưu trữ thông tin về xếp hạng và doanh thu của từng bộ phim của Pixar cụ thể

movie_id (smallint): Nhận dạng phim.
rating (decimal): Xếp hạng phim
domestic_sales(varchar[25]): Doanh thu phim nội địa
international_sales(varchar[25]): Doanh thu phim quốc tế
Cột movie_id trong bảng Boxoffice tương ứng với cột id trong bảng Movies quan hệ 1-1. Bây giờ bạn muốn tìm doanh thu trong nước và quốc tế cho mỗi bộ phim để phân tích xu hướng trong tương lai. Cho hai bảng Movies, Boxoffice, hãy xây dựng bảng kết quả như sau: bảng nên có 3 cột title, domestic_sales, international_sales.

Ví dụ
Với các dữ liệu từ các bảng sau

Bảng Movies

id	title	director	year	length_minutes
1	Toy Story	John Lasseter	1995	81
2	A Bug's Life	John Lasseter	1998	95
3	Toy Story 2	John Lasseter	1999	93
4	Monsters, Inc.	Pete Docter	2001	92
Bảng Boxoffice

movie_id	rating	domestic_sales	international_sales
1	8.3	191796233	170162503
2	7.2	162798565	200600000
3	7.9	245852179	239163000
4	8.1	289916256	272900000
kết quả đầu ra sẽ là
title	domestic_sales	international_sales
Toy Story	191796233	170162503
A Bug's Life	162798565	200600000
Toy Story 2	245852179	239163000
Monsters, Inc.	289916256	272900000
