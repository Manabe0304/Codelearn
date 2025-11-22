## Lý thuyết
Ở trong các chương trước ta đã được làm quen với chuỗi, trong chương này ta sẽ được học một vài kỹ thuật xử lý chuỗi.

Trong Python, chuỗi là một tập hợp các kí tự Unicode. Tuy nhiên, Python không có kiểu kí tự (character) giống các ngôn ngữ lập trình khác, thay vào đó ta có thể hiểu rằng ký tự là một xâu có độ dài bằng 1.

Để khai báo một chuỗi trong Python ta có thể sử dụng một cặp dấu nháy đơn hoặc nháy đôi. Ví dụ `"Codelearn"` và `'Codelearn'` đều là một chuỗi. Ngoài ra ta cũng có thể sử dụng 3 cặp nháy đơn, nháy đôi để tạo ra một chuỗi trên nhiều dòng. Ví dụ:
```
s = """
Banana
Apple
Orange
"""
print(s)
```
Kết quả khi chạy chương trình:
```
Banana
Apple
Orange
```
Trong Python, các chuỗi được viết bằng 3 dấu nháy thường được sử dụng như các comments nếu như nó không được gán cho một biến cụ thể nào.

## Một số hàm và phương thức để xử lý chuỗi trong Python
### 1. Hàm len()

Đây là hàm trả về độ dài của chuỗi:
```
s = "abc"
print(len(s))
s = "abcd"
print(len(s))
```
Kết quả khi chạy chương trình:
```
3
4
```
### 2. Phương thức lower()

Đây là phương thức được dùng để chuyển 1 chuỗi về dạng in thường:
```
s = "CODELEARN123"
print(s.lower())
```
Kết quả khi chạy chương trình:
```
codelearn123
```
### 3. Phương thức upper()

Đây là phương thức được dùng để chuyển 1 chuỗi về dạng in hoa:
```
s = "codelearn123"
print(s.upper())
```
Kết quả khi chạy chương trình:
```
CODELEARN123
```
### 4. Phương thức isalnum()

Đây là phương thức được dùng để kiểm tra xem một xâu có chỉ chứa các ký tự chữ và số hay không. Ví dụ:
```
s = "codelearn2020"
print(s.isalnum())
s = "codelearn2020.io"
# Kết quả sẽ là False do chuỗi s chứa ký tự .
print(s.isalnum())
```
Kết quả khi chạy chương trình:
```
True
False
```
### 5. Phương thức isalpha()

Phương thức này được dùng để kiểm tra xem một chuỗi có chứa toàn các ký tự chữ không:
```
s = "codelearn"
print(s.isalpha())
# Kết quả sẽ là False do chuỗi s chứa số 2020
s = "codelearn2020"
print(s.isalpha())
```
Kết quả khi chạy chương trình:
```
True
False
```
### 6. Phương thức isnumeric()

Phương thức này dùng để kiểm tra xem một xâu có chứa toàn các ký tự số hay không:
```
s = "2020"
print(s.isnumeric())
s = "c2020"
print(s.isnumeric())
```
Kết quả khi chạy chương trình:
```
True
False
```
### 7. Phương thức split()

Phương thức này được dùng để cắt một chuỗi ra thành list các chuỗi khác dựa trên một phần tử trong chuỗi đầu vào:
```
s = "Welcome to Codelearn.io!"
print(s.split(" "))
s = "A1B1C1D1E1"
print(s.split("1"))
```
Kết quả khi chạy chương trình:
```
['Welcome', 'to', 'Codelearn.io!']
['A', 'B', 'C', 'D', 'E', '']
```
### 8. Phương thức join()

Phương thức này được dùng để nối một tập hợp thành một chuỗi sử dụng kí tự cho trước. Ví dụ:
```
lst = ["Welcome", "to", "Codelearn.io!"]
print(" ".join(lst))
lst = ["A", "B", "C"]
print("-".join(lst))
```
Kết quả khi chạy chương trình:
```
Welcome to Codelearn.io!
A-B-C
```
Ta có thể sử dụng hàm split() và hàm join() để loại bỏ các khoảng trắng thừa trong chuỗi. Ví dụ:
```
message = "   Welcome   to Codelearn.io!   "
print(" ".join(message.split()))
```
Kết quả khi chạy chương trình:
```
Welcome to Codelearn.io!
```
### 9. Phương thức replace()

Phương thức này được dùng để thay thế các chuỗi con tìm thấy thành chuỗi con mới. Ví dụ:
```
name = "Cod3l3arn"
print(name.replace("3", "e"))
```
Kết quả khi chạy chương trình:
```
Codelearn
```
