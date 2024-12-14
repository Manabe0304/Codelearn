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

## Tại sao lệnh `TRUNCATE` không thể khôi phục dữ liệu và thực thi nhanh hơn DELETE?
### Lý do không thể khôi phục dữ liệu:

- `TRUNCATE` hoạt động ở cấp độ trang: Khi thực thi `TRUNCATE`, nó sẽ xóa toàn bộ dữ liệu trong các trang chứa dữ liệu của bảng. Thay vì ghi lại nhật ký giao dịch cho từng hàng bị xóa như DELETE, `TRUNCATE` chỉ ghi lại một thao tác xóa duy nhất. Việc thiếu nhật ký giao dịch khiến việc khôi phục dữ liệu sau khi `TRUNCATE` trở nên không thể.
- Dữ liệu được ghi đè: Sau khi `TRUNCATE`, hệ thống có thể sử dụng lại không gian lưu trữ được giải phóng để lưu trữ dữ liệu mới. Khi dữ liệu mới được ghi đè lên, việc khôi phục dữ liệu cũ trở nên bất khả thi.
### Lý do thực thi nhanh hơn DELETE:

- `TRUNCATE` không ghi nhật ký giao dịch: Như đã đề cập, `TRUNCATE` chỉ ghi lại một thao tác xóa duy nhất, không ghi nhật ký cho từng hàng bị xóa. Việc này giúp giảm lượng dữ liệu cần ghi vào nhật ký, dẫn đến tốc độ thực thi nhanh hơn.
- `TRUNCATE` xóa dữ liệu theo trang: Thay vì xóa từng hàng một, `TRUNCATE` xóa dữ liệu theo từng trang. Việc xóa theo trang giúp giảm thiểu số lần truy cập vào ổ đĩa, dẫn đến hiệu suất cao hơn.
### Ví dụ:

Giả sử bạn có một bảng với 1 triệu hàng.

#### Với `DELETE`:

- Việc xóa từng hàng sẽ ghi lại một thao tác vào nhật ký giao dịch.
- 1 triệu thao tác ghi vào nhật ký sẽ làm chậm quá trình thực thi.
- Sau khi xóa, dữ liệu vẫn được lưu trữ trên ổ đĩa cho đến khi được ghi đè.
#### Với `TRUNCATE`:

Chỉ ghi lại một thao tác xóa duy nhất vào nhật ký giao dịch.
Việc xóa dữ liệu theo trang giúp giảm thiểu số lần truy cập vào ổ đĩa.
Dữ liệu được xóa ngay lập tức và không gian lưu trữ được giải phóng.
