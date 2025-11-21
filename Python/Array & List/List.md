## Lý thuyết
`list` trong Python là một kiểu dữ liệu cho phép lưu trữ nhiều kiểu dữ liệu khác. Để khởi tạo một `list` trong Python ta có thể sử dụng cặp dấu `[]`. Ví dụ:
```
# Tạo ra list để lưu trữ các số nguyên
list1 = [1, 2, 3]
# Tạo ra list để lưu trữ các xâu ký tự
list2 = ["Viet", "Tuan", "Duong"]
# Bạn cũng có thể tạo ra một list lưu trữ các kiểu dữ liệu khác nhau
list3 = [7, 3.5, "Codelearn"]
```
Để truy xuất tới các phần tử trong `list` bạn dùng toán tử `[]`. Ví dụ:
```
names = ["Viet", "Dung", "Huong"]
print(names[0])
print(names[1])
print(names[2])
```
Kết quả khi chạy chương trình:
```
Viet
Dung
Huong
```
Lưu ý: `names[1]` không phải là phần tử đầu tiên của `list` mà phải là `names[0]` (do chỉ số của `list` được bắt đầu từ `0`).

Ta cũng có thể dùng vòng lặp `for` để duyệt qua các phần tử của `list`. Ví dụ:
```
names = ["Viet", "Dung", "Huong"]
for name in names:
    print(name)
```
Để thêm một phần tử vào cuối của list bạn dùng hàm `append()`:
```
lst = []
lst.append(4)
lst.append(3)
lst.append(6)
print(lst)
```
Kết quả khi chạy chương trình:
```
[4, 3, 6]
```
