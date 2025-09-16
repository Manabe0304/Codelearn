## Lý thuyết
Để làm được bài này ta cần biết cách sử dụng đề `if-else`. Mệnh đề `if-else` được dùng để kiểm tra một điều kiện có đúng hay không, nếu đúng thì khối lệnh bên trong `if` sẽ được thực thi, ngược lại nếu điều kiện là sai thì khối lệnh bên trong `else` sẽ được thực thi:
```
if condition:
    # Nếu condition đúng thì khối lệnh này sẽ được thực thi
else:
    # Nếu condition sai thì khối lệnh này sẽ được thực thi
```
Lưu ý: khối lệnh trong `if` và `else` chính là các đoạn code được thụt lề vào trong (ở các ngôn ngữ lập trình khác thì khối lệnh được xác định bằng cặp dấu {} nhưng đối với Python thì khối lệnh được xác định bằng việc thụt lề).

Ví dụ về chương trình sử dụng mệnh đề `if-else` để kiểm tra tính chẵn lẻ của một số được nhập từ bàn phím:
```
n = int(input())
if n % 2 == 0:
    # Nếu n là số chẵn thì hiển thị ra màn hình n is an even number
    print("n is an even number")
else:
    # Ngược lại, nếu n không là số chẵn thì hiển thị ra màn hình n is an odd number
    print("n is an odd number")
```
Chương trình trên cũng có thể tách thành 2 mệnh đề `if` giống như sau:
```
n = int(input())
if n % 2 == 0:
    # Nếu n là số chẵn thì hiển thị ra màn hình n is an even number
    print("n is an even number")
if n % 2 != 0:
    # Nếu n là số lẻ thì hiển thị ra màn hình n is an odd number
    print("n is an odd number")
```
### Toán tử 3 ngôi trong Python
Toán tử ba ngôi cũng được dùng để kiểm tra các điều kiện giống như mệnh đề `if-else` nhưng nó đơn giản hơn ở chỗ có thể viết gọn thành một dòng. Toán tử 3 ngồi có thể thay thế cho mệnh đề `if-else` khi cần kiểm tra các điều kiện đơn giản.

Ví dụ về chương trình so sánh giá trị 2 số sử dụng toán tử 3 ngồi:
```
# Python program to demonstrate nested ternary operator 
a, b = 10, 20

print ("Both a and b are equal" if a == b else "a is greater than b"
		if a > b else "b is greater than a")
```
Nếu sử dụng mệnh đề `if-else` để so sánh giá trị 2 số thì sẽ như sau:
```
a, b = 10, 20

if a != b:
	if a > b:
		print("a is greater than b")
	else:
		print("b is greater than a")
else:
	print("Both a and b are equal")
```

## Lý thuyết
Nếu bên trong mệnh đề `else` có mệnh đề `if` giống như chương trình sau:
```
a = int(input())
b = int(input())
if a == b:
    print("a = b")
else:
    if a > b:
        print("a > b")
    else:
        print("a < b")
```
thì ta có thể rút gọn thành `elif` giống như sau:
```
a = int(input())
b = int(input())
if a == b:
    print("a = b")
elif a > b:
    print("a > b")
else:
    print("a < b")
```
