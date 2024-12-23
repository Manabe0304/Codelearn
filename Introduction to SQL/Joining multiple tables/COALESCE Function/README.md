## Lý thuyết
Cú pháp của hàm `COALESCE` như sau:

`COALESCE (đối_số1, đối_số2, …);`

Hàm `COALESCE` chấp nhận số lượng đối số không giới hạn. Nó trả về đối số đầu tiên không phải là `NULL`. Nếu tất cả các đối số là `NULL`, hàm `COALESCE` sẽ trả về `NULL`.

Hàm `COALESCE` đánh giá các đối số từ trái sang phải cho đến khi tìm thấy đối số không `null` đầu tiên. Tất cả các đối số còn lại từ đối số không `null` đầu tiên không được đánh giá.

Hàm `COALESCE` cung cấp chức năng tương tự như hàm `NVL` hoặc `IFNULL` được cung cấp bởi tiêu chuẩn SQL. MySQL có chức năng `IFNULL`, trong khi Oracle cung cấp chức năng `NVL`.

Xem các ví dụ sau:
```
coalesce(NULL, 1, 2) = 1
coalesce(NULL, NULL) = NULL
coalesce(2, 3, NULL) = 2
```
