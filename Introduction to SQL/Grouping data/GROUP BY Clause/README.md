## Lý thuyết
Mệnh đề `GROUP BY` chia các hàng được trả về từ câu lệnh `SELECT` thành các nhóm. Đối với mỗi nhóm, bạn có thể áp dụng hàm tổng hợp (aggregate function), ví dụ: `SUM()` để tính tổng các mục hoặc `COUNT()` để lấy số lượng mục trong các nhóm.

Câu lệnh sau minh họa cú pháp của mệnh đề `GROUP BY`:
```
SELECT cột_1, hàm_tổng_hợp(cột_2)
FROM tên_bảng
GROUP BY cột_1;
```
Mệnh đề `GROUP BY` phải xuất hiện ngay sau mệnh đề `FROM` hoặc `WHERE`. Tiếp theo là mệnh đề `GROUP BY` là một cột hoặc danh sách các cột được phân tách bằng dấu phẩy. Bên cạnh cột bảng, bạn cũng có thể sử dụng biểu thức với mệnh đề `GROUP BY`.
