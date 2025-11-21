## Lý thuyết
Để làm được bài này ta cần biết cách sử dụng vòng lặp trong Python. Vòng lặp được hiểu đơn giản là lặp lại một đoạn code nhiều lần. Trong Python có hỗ trợ 2 loại vòng lặp là vòng lặp `while` và vòng lặp `for`.

### Vòng lặp while

Vòng lặp `while` được dùng để lặp lại một hành động cho tới khi điều kiện lặp không còn thỏa mãn nữa. Cú pháp của vòng lặp`while`:
```
while condition:
    # Khối lệnh này sẽ được thực thi nếu condition còn đúng
```
Ví dụ về chương trình hiển thị ra màn hình các số từ `1` tới `5` sử dụng vòng lặp `while`:
```
i = 1
while i <= 5:
    print(i)
    i += 1
```
Kết quả khi chạy chương trình:
```
1
2
3
4
5
```
Có thể thấy cách sử dụng vòng lặp `while` rất đơn giản, bạn có thể sử dụng vòng lặp `while` để tính tổng các số từ `1` tới `n` giống như sau:
```
n = int(input())
i = 1
answer = 0
while i <= n:
    answer += i
    i += 1
print(answer)
```
### Vòng lặp for

Không giống với vòng lặp `while`, vòng lặp `for` được dùng để lặp qua một tập hợp cho trước, vòng lặp `for` thường được sử dụng với hàm `range()`. Ví dụ:
```
for i in range(1, 5):
    print(i)
```
Kết quả khi chạy chương trình:
```
1
2
3
4
```
Giải thích: `range()` chính là hàm trả về một tập hợp, như ở ví dụ trên thì `range(1, 5)` sẽ trả về một tập hợp chứa các số từ `1` tới `4`.

Ngoài ra, bạn có thể sử dụng vòng lặp `for` để duyệt qua các ký tự của một xâu. Ví dụ:
```
name = "Codelearn"
for c in name:
    print(c)
```
Kết quả khi chạy chương trình:
```
C
o
d
e
l
e
a
r
n
```
