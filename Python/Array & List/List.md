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

## Lý thuyết
Bài này sẽ giúp ta biết về các hàm thường được sử dụng trong `list`.

### 1. Hàm len

Đây là hàm trả về số phần tử có trong `list`. Ví dụ:
```
lst = [2, 3, 1]
print(len(lst))
```
Kết quả khi chạy chương trình:
```
3
```
Ta có thể tận dụng hàm `len()` để hỗ trợ duyệt qua các phần tử trong `list`:
```
lst = [2, 3, 1]
for i in range(len(lst)):
    print(lst[i])
```
### 2. Hàm max, min

Đây là hai hàm được dùng để trả về phần tử lớn nhất và nhỏ nhất trong `list`. Ví dụ:
```
lst = [2, 3, 1]
print(max(lst))
print(min(lst))
```
Kết quả khi chạy chương trình:
```
3
1
```
### 3. Hàm insert

Đây là hàm dùng để thêm một phần tử vào một ví trí trong `list`:
```
vowels = ['a', 'e', 'i', 'u']
# Chèn xâu 'o' vào vị trí thứ 4 trong list vowels
vowels.insert(3, 'o')
print(vowels)
```
Kết quả khi chạy chương trình:
```
['a', 'e', 'i', 'o', 'u']
```
### 4. Hàm remove

Hàm này dùng để xóa một phần tử khỏi `list`:
```
lst = ['A', 'B', 'C']
lst.remove('A')
print(lst)
```
Kết quả khi chạy chương trình:
```
['B', 'C']
```
### 5. Hàm pop

Hàm `pop()` được dùng để xóa một phần tử với chỉ số cho trước trong `list`:
```
lst = ['A', 'B', 'C']
# Xóa phần tử thứ 2 khỏi list
lst.pop(1)
print(lst)
```
Kết quả khi chạy chương trình:
```
['A', 'C']
```
### 6. Hàm sort

Hàm này được dùng để sắp xếp các phần tử trong `list` theo một thứ tự nhất định. Ví dụ:
```
lst = [4, 5, 3, 7, 6, 1]
# Sắp xếp các phần tử trong list theo thứ tự tăng dần
lst.sort()
print(lst)
# Sắp xếp các phần tử trong list theo thứ tự giảm dần
lst.sort(reverse=True)
print(lst)
```
Kết quả khi chạy chương trình:
```
[1, 3, 4, 5, 6, 7]
[7, 6, 5, 4, 3, 1]
```
### 7. Hàm reverse

Đây là hàm dùng để đảo ngược `list`:
```
lst = [4, 5, 3, 7, 6, 1]
lst.reverse()
print(lst)
```
Kết quả khi chạy chương trình:
```
[1, 6, 7, 3, 5, 4]
```
### 8. Hàm count

Đây là hàm dùng để đếm số lần xuất hiện của một thành phần trong `list`:
```
lst = [6, 2, 3, 8, 2]
print(lst.count(2))
```
Kết quả khi chạy chương trình:
```
2
```
### 9. Hàm clear

Đây là hàm dùng để xóa hết các phần tử bên trong `list`:
```
lst = [1, 2, 3]
lst.clear()
print(lst)
```
Kết quả khi chạy chương trình:
```
[]
```
