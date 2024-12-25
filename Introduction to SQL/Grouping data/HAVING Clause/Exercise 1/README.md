## Bài tập
Bạn muốn mở rộng bộ sưu tập phim của mình, nhưng bạn thực sự không có bất kỳ ưu tiên nào nên bạn không chắc bắt đầu từ đâu. Sau khi xem xét, bạn quyết định rằng bạn nên bắt đầu bằng cách tìm thêm phim từ các đạo diễn từng đoạt giải thưởng có phim bạn đã sở hữu và những người quay một bộ phim gần đây.

Để tìm các đạo diễn có phim mà bạn có thể muốn xem đầu tiên, bạn tạo cơ sở dữ liệu của tất cả các phim bạn đã sở hữu và lưu trữ chúng trong bảng `moviesInfo`, có cấu trúc như sau:

- `title(varchar[50])`: tiêu đề của bộ phim;
- `director(varchar[50])`: đạo diễn của bộ phim này;
- `year(smallint)`: năm bộ phim được phát hành;
- `oscars(smallint)`: số lượng Giải thưởng Hàn lâm mà bộ phim này nhận được.

Cho bảng `moviesInfo`, soạn danh sách đạo diễn mà bạn nên xem xét để xem nhiều phim hơn từ đó. Bảng kết quả tra về có một cột `director` duy nhất và chứa tên của các đạo diễn phim sao cho:

- họ đã quay phim từ năm 1950 trở đi;
- tổng số giải thưởng Oscar mà những bộ phim này nhận được là hơn 2.

Bảng phải được sắp xếp theo tên của `director` theo thứ tự tăng dần.

## Ví dụ
Cho bảng `moviesInfo`

title	| director	| year	| oscars
------|-----------|-------|-------
BoBoiBoy: The Movie	| Nizam Razak	| 2016	| 0
Inception	| Christopher Nolan	| 2010	| 4
Interstellar	| Christopher Nolan	| 2014	| 1
Munna Bhai M.B.B.S.	| Rajkumar Hirani	| 2003	| 0
My Dear Brother	| Ertem Egilmez	| 1973	| 0
Rocky John	| G. Avildsen	| 1976	| 3
The Nights of Cabiria	| Federico Fellini	| 1957	| 1
The Sixth Sense	| M. Night Shyamalan	| 1999	| 6
The Sixth Sense	| M. Night Shyamalan	| 1999	| 6
Tokyo Story	| Yasujirô Ozu	| 1953	| 0
Yojimbo	| Akira Kurosawa	| 1961	| 1
 
Kết quả đầu ra sẽ là

| director |
|----------|
| Christopher Nolan |
