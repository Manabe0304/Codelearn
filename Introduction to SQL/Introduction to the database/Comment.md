## Lý thuyết
Cú pháp comment (ghi chú) được sử dụng để giải thích các phần của câu lệnh SQL. Sử dụng cú pháp comment hợp lí sẽ giúp bạn dễ dàng hơn trong việc đọc hiểu và duy trì đoạn mã SQL. Ví dụ, bạn có thể dùng cú pháp comment để mô tả mục đích của bạn khi bạn viết mã.

Những đoạn mã đã được comment trong câu lệnh SQL sẽ không ảnh hưởng đến việc thực thi của chương trình.

### Comment trên một dòng
Comment trên một dòng bắt đầu bằng cú pháp `--`. Bất kỳ văn bản nào nằm giữa dấu `--` đến cuối dòng sẽ không được thực thi. Ví dụ:
```
--Chọn tất cả:
SELECT * FROM Customers;
```
### Comment nhiều dòng
Khi bạn cần comment trên một đoạn văn dài, bạn chỉ cần thêm cú pháp `/*` vào đầu văn bản và kết thúc đoạn bằng cú pháp `*/`. Bất cứ văn bản nào nằm giữa hai kí hiệu `/*` và `*/` sẽ không được thực thi. Ví dụ:
```
/*Chọn tất cả các cột
của tất cả các bản ghi
trong bảng Customers:*/
SELECT * FROM Customers;
```
