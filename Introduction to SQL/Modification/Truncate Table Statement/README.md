## Lý thuyết
`TRUNCATE` nhanh chóng xóa tất cả các hàng khỏi một tập hợp các bảng. Câu lệnh này có tác dụng tương tự như lệnh `DELETE` trên mỗi bảng, nhưng vì nó không thực sự quét qua các bảng nên nó nhanh hơn. Hơn nữa, nó giải phóng không gian ổ đĩa ngay lập tức. Điều này là hữu ích nhất trên các bảng lớn.

Hình thức đơn giản nhất của câu lệnh `TRUNCATE TABLE `như sau:

`TRUNCATE TABLE tên_bảng;`
### Xóa tất cả dữ liệu khỏi nhiều bảng
Để xóa tất cả dữ liệu khỏi nhiều bảng cùng một lúc, bạn tách từng bảng bằng dấu phẩy (,) như sau:

`TRUNCATE TABLE tên_bảng1, tên_bảng2, …`
### Xóa tất cả dữ liệu khỏi bảng có tham chiếu khóa ngoại
Trong thực tế, bảng bạn muốn xóa đi thường có các tham chiếu khóa ngoại từ các bảng khác không được liệt kê trong câu lệnh `TRUNCATE TABLE`. Theo mặc định, câu lệnh `TRUNCATE TABLE` không xóa bất kỳ dữ liệu nào khỏi bảng có tham chiếu khóa ngoại.

Để xóa dữ liệu khỏi bảng chính và tất cả các bảng có tham chiếu khóa ngoại đến bảng chính, bạn sử dụng tùy chọn `CASCADE` như sau:

`TRUNCATE TABLE tên_bảng CASCADE;`

Bạn nên cẩn thận khi sử dụng tùy chọn `CASCADE`, nếu không bạn có thể xóa dữ liệu khỏi các bảng mà bạn không có ý định xóa đấy.
