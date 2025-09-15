## Lý thuyết
Trong chương trước ta đã được làm quen với các toán tử như toán tử `= +, -, *, /, %, ...` Ở chương này ta sẽ đi sâu hơn về các toán tử trong Python. 

Python xây dựng 7 loại hình tính toán trên toán tử như sau:

- Python Arithmetic Operator (toán tử số học)
- Python Relational Operator (toán tử quan hệ)
- Python Assignment Operator (toán tử gán)
- Python Membership Operator (toán tử membership)
- Python Identity Operator (toán tử identity)
- Python Logical Operator (toán tử logic)
- Python Bitwise Operator (toán tử thao tác bit)

Trong bài này ta sẽ tìm hiểu về loại toán tử đầu tiên, đó là **Arithmetic Operators**

### Arithmetic Operators

Đây là toán tử dùng để thao tác với các phép toán như cộng, trừ, nhân, chia, chia dư, ... Xem bảng đầy đủ về các toán tử số học:

| Operator	| Purpose	| Ví dụ |
|-|-|-|
| +	| Toán tử cộng 2 giá trị. | 7 + 3 = 10
| -	| Toán tử trừ 2 giá trị. | 7 - 3 = 4
| *	| Toán tử nhân 2 giá trị.	| 7 * 3 = 21
| /	| Toán tử chia 2 giá trị. | 7 / 3 = 2.(3)
| // | Toán tử chia lấy phần nguyên của 2 giá trị.| 7 // 3 = 2  <br>   10 // 6 = 1 
| %	| Toán tử chia lấy phần dư của 2 giá trị. | 7 % 3 = 1 <br> 10 % 6 = 4
| ** |Toán tử mũ (a**b = a^b) |	2 ** 3 = 8 <br> 5 ** 7 = 78125

### Ví dụ
```
x = 15
y = 4

print('x + y =', x+y)
print('x - y =', x-y)
print('x * y =', x*y)
print('x / y =', x/y)
print('x % y =', x % y)
print('x // y =', x//y)
print('x ** y =', x**y)
```
Kết quả khi chạy chương trình:
```
x + y = 19
x - y = 11
x * y = 60
x / y = 3.75
x % y = 3
x // y = 3
x ** y = 50625
```

## Lý thuyết
Các toán tử so sánh được dùng để so sánh hai giá trị với nhau. Kết quả của các toán tử này sẽ là `True` hoăc `False` (đúng hoặc sai). Các toán tử so sánh sẽ giúp ta kiểm tra xem hai giá trị có bằng, lớn hơn hay nhỏ hơn nhau hay không,... Bảng thể hiển các toán tử so sánh:

| Toán tử	| Miêu tả	| Ví dụ |
|-|-|-|
| > | 	Toán thử lớn hơn - nếu số hạng bên trái lớn hơn số hạng bên phải thì kết quả sẽ là True| 3 > 5 (False)
| <	| Toán tử nhỏ hơn - nếu số hạng bên trái nhỏ hơn số hạng bên phải thì kết quả sẽ là True |3 < 5 (True)
| ==	| Toán tử bằng với - nếu hai số hạng có giá trị bằng nhau thì kết quả sẽ là True. | 3 == 3 (True)
| !=	| Toán tử khác bằng - nếu hai số hạng có giá trị khác nhau thì kết quả sẽ là True.| 3 != 3 (False)
| >=	| Toán tử lớn hơn hoặc bằng - nếu số hạng bên trái lớn hơn hoặc bằng số hạng bên phải thì kết quả sẽ là True| 7 >= 6 (True)
| <=	|Toán tử nhỏ hơn hoặc bằng - nếu số hạng bên trái nhỏ hơn hoặc bằng số hạng bên phải thì kết quả sẽ là True| 5 <= 6 (true)

### Ví dụ cụ thể với Python:
```
x = 10
y = 12

print('x > y is', x > y)
print('x < y is', x < y)
print('x == y is', x == y)
print('x != y is', x != y)
print('x >= y is', x >= y)
print('x <= y is', x <= y)
```
Kết quả khi chạy chương trình:
```
x > y is False
x < y is True
x == y is False
x != y is True
x >= y is False
x <= y is True
```

## Lý thuyết
Toán tử gán thường được dùng để gán giá trị của vế phải sang cho vế trái. Bảng thể hiện các toán tử gán:

| Loại toán tử	| Mục đích	| Cách dùng
|-|-|-|
| =	| Gán giá trị của vế phải cho vế trái |x = 5
| +=	| Tăng vế trái một phần bằng vế phải sau đó gán giá trị cho vế trái |x += 5 <br> (x = x + 5)
| -=	| Giảm vế trái một phần bằng giá trị vế phải sau đó gán kết quả cho vế trái | x -= 5 <br> (x = x - 5)
| *=	| Nhân giá trị của vế trái với vế phải sau đó gán kết quả cho vế trái | x *= 5 <br> (x = x * 5)
| /=	| Chia giá trị của vế trái cho vế phải sau đó gán kết quả cho vế trái | x /= 5 <br> (x = x / 5)
| %=	| Chia giá trị của vế trái cho vế phải sau đó gán phần dư cho vế trái (chia lấy dư) | x %= 5 <br> (x = x % 5)
| //=	| Phép chia lấy phần nguyên. | x //= 5 <br> (x = x // 5)
| **=	| Lấy vế trái lũy thừa với bậc là giá trị vế phải sau đó gán kết quả cho vế trái | x **= 5 <br> (x = x ** 5)
| &=	| Thực hiện phép toán của toán tử AND cho 2 vế sau đó gán cho vế trái| x &= 5 <br> (x = x & 5)
| \|=	| Thực hiện phép toán của toán tử OR cho 2 vế sau đó gán cho vế trái | x \|= 5 <br> (x = x \| 5)
| ^=	| Thực hiện phép toán của toán tử XOR 2 vế sau đó gán cho vế trái | x ^= 5 <br> (x = x ^ 5)
| >>=	| Thực hiện phép toán dịch phải của vế phải sau đó gán cho vế trái | x >>= 5 <br> (x = x >> 5)
| <<=	| Thực hiện phép toán dịch trái của vế phải sau đó gán cho vế trái | x <<= 5 <br> (x = x << 5)

### Ví dụ
```
x = 15
y = 4

print('x + y =', x + y)
print('x - y =', x - y)
print('x * y =', x * y)
print('x / y =', x / y)
print('x // y =', x // y)
print('x ** y =', x ** y)
```
Kết quả khi chạy chương trình:
```
x + y = 19
x - y = 11
x * y = 60
x / y = 3.75
x // y = 3
x ** y = 50625
```

## Lý thuyết
Toán tử membership là toán tử dùng để kiểm xem một giá trị có nằm trong giá trị khác hay không.

`in` và `not in` là hai toán tử membership với cách sử dụng rất đơn giản. Ví dụ bạn có thể kiểm tra xem một xâu có nằm trong một xâu khác không giống như sau:.
```
print("Code" in "Codelearn")
print("Py" not in "Python")
```
Kết quả khi chạy chương trình:
```
True
False
```

## Lý thuyết
Toán tử định danh (`identity`) được dùng để xác định xem hai biến có đang trỏ tới cùng một đối tượng hay không. Với các kiểu dữ liệu như `int, str, float,...` thì toán tử này tương đương với toán tử `==`. Ta sẽ được học về sự khác nhau giữa hai toán tử này ở các bài sau.

Trong Python, `is` và `is not` chính là 2 toán tử định danh. Ví dụ:
```
a = 5
b = 7
print(a is b)
print(a is not b)
```
Kết quả khi chạy chương trình:
```
False
True
```

## Lý thuyết
Toán tử logical (logic) `not`, `or` và `and` là các toán tử được dùng để kết hợp các mệnh đề lại với nhau. Bảng thể hiện toán tử logic:

| Loại toán tử	| Mục đích	| Cách dùng
|-|-|-|
| and	| Trả về True nếu hai điều kiện cùng đúng, ngược lại trả về False | a and b
| or	| Trả về True nếu có ít nhất một điều kiện đúng, ngược lại nếu cả hai điều kiện đều sai thì trả về False | a or b
| not	| Toán tử phủ định, toán tử này trả về False nếu điều kiện là True, ngược lại nếu điều kiện là False thì trả về True | not a

Ví dụ với Python:
```
x = True
y = False
print(x and y)
print(x or y)
print(not x)
```
Kết quả khi chạy chương trình:
```
False
True
False
```
