## Bài tập
Gần đây bạn đã bắt đầu làm việc trong bộ phận CNTT của một cửa hàng lớn. Bạn được giao phụ trách cơ sở dữ liệu hàng tồn kho có sẵn, có cấu trúc như sau:

- `id(SMALLINT)`: mục ID duy nhất;
- `item_name(VARCHAR[50])`: tên của mặt hàng;
- `item_type(VARCHAR[50])`: loại mặt hàng.

Lưu ý rằng có thể các mặt hàng thuộc các loại khác nhau có cùng tên.

Một trong những hoạt động phổ biến nhất được thực hiện trên cơ sở dữ liệu này là truy vấn số lượng các mặt hàng cụ thể có sẵn tại cửa hàng. Vì cơ sở dữ liệu khá lớn, các truy vấn thuộc loại này có thể chiếm quá nhiều thời gian. Bạn đã quyết định giải quyết vấn đề này bằng cách tạo một bảng mới có chứa số lượng vật phẩm cho tất cả các mặt hàng có sẵn.

Cho bảng `availableItems`, soạn một bảng kết quả có ba cột sau: `item_name`, `item_type` và `item_count`, chứa tên của các mục vật phẩm, loại của chúng và số lượng của các mục đó, tương ứng. Bảng phải được sắp xếp theo thứ tự tăng dần theo loại mục (`item_type`), với các mục cùng loại được sắp xếp theo thứ tự tăng dần theo tên (`item_name`) của chúng.

## Ví dụ
Cho bảng `availableItems`:

id	| item_name	| item_type
----|-----------|----------
1	| SafeDisk 4GB	| USB drive
2	| SafeDisk 8GB	| USB drive
3	| Cinco 50-Pack	| DVD
4	| SafeDisk 4GB	| Memory card
5	| SafeDisk 8GB	| Memory card
6	| Cinco 30-Pack	| DVD
7	| SafeDisk 4GB	| Memory card
8	| SafeDisk 4GB	| Memory card
9	| DiskHolder	| Misc
10	| Cinco 50-Pack	| DVD
11	| SafeDisk 4GB	| USB drive
12	| DiskCleaner Pro	| Misc

Kết quả đầu ra sẽ là:

item_name	| item_type	| item_count
----------|-----------|-----------
Cinco 30-Pack	| DVD	| 1
Cinco 50-Pack	| DVD	| 2
SafeDisk 4GB	| Memory card	| 3
SafeDisk 8GB	| Memory card	| 1
DiskCleaner Pro	| Misc	| 1
DiskHolder	| Misc	| 1
SafeDisk 4GB	| USB drive	| 2
SafeDisk 8GB	| USB drive	| 1
