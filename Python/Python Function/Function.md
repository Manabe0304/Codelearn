## Lý thuyết
Trong các chương trước ta đã biết cách sử dụng các hàm có sẵn như hàm `len(), upper(), lower(), sort(), ...` qua bài này ta sẽ hiểu được cách tạo và sử dụng hàm.

Hàm được hiểu đơn giản là 1 đoạn code, khi ta gọi hàm thì thực ra là ta đang gọi tới đoạn code này (ta cũng có thể hiểu hàm là viết tắt của 1 đoạn code). Để khai báo một hàm ta dùng từ khóa `def` giống như sau:
```
def <tên_hàm>:
    # Các đoạn code trong thân hàm
```
Ví dụ về hàm hiển thị ra màn hình các số từ 1 tới 10:
```
def show():
    for i in range(1, 11):
        # end = " " có nghĩa là sử dụng hàm print và không xuống dòng
        print(i, end=" ")
    print()

# gọi tới hàm show
show()
show()
```
Kết quả khi chạy chương trình:
```
1 2 3 4 5 6 7 8 9 10 
1 2 3 4 5 6 7 8 9 10
```
Có thể thấy cách tạo và sử dụng hàm rất đơn giản, chương trình trên hiển thị ra 2 lần các số từ 1 tới 10 do gọi tới hàm `show()` 2 lần.

Ngoài ra ta cũng có thể truyền các tham số vào hàm và trả về kết quả bằng từ khóa `return <giá_trị_trả_về>`. Ví dụ về hàm trả về tổng của một `list`:
```
def sum_of_list(lst):
    answer = 0
    for v in lst:
        answer += v
    return answer

print(sum_of_list([3, 4, 2]))
print(sum_of_list([8, 4, 7]))
print(sum_of_list([1, 2, 3]))
```
Kết quả khi chạy chương trình:
```
9
19
6
```
Ví dụ khác về hàm trả về số các số chẵn trong `list`:
```
def count_even(lst):
    count = 0
    for v in lst:
        if v % 2 == 0:
            count += 1
    return count


print(count_even([3, 4, 2]))
print(count_even([2, 4, 6]))
print(count_even([7, 3, 2]))
```
Kết quả khi chạy chương trình:
```
2
3
1
```
