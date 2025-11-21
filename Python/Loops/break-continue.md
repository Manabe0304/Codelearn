## Lý thuyết
Bài này sẽ giúp ta hiểu về các câu lệnh điều khiển vòng lặp.

### Câu lệnh Break

Câu lệnh `break` được dùng để thoát khỏi vòng lặp, khi chương trình gặp câu lệnh `break` thì vòng lặp sẽ không được thực thi tiếp. Ví dụ:
```
for i in range(1, 11):
    if i == 6:
        break
    print(i)
```
Kết quả khi chạy chương trình:
```
1
2
3
4
5
```
Có thể thấy chương trình trên hiển thị ra màn hình các số từ `1` tới `5` thay vì từ `1` tới `10` do khi `i == 6` thì chương trình gặp câu lệnh `break` và vòng lặp sẽ không được thực thi tiếp.

### Câu lệnh continue

Khi gặp câu lệnh `continue` trong vòng lặp, các đoạn code bên dưới câu lênh này trong vòng lặp sẽ không được thực thi. Ví dụ:
```
for i in range(1, 20):
    if i % 2 == 0:
        continue
    print(i)
```
Kết quả khi chạy chương trình:
```
1
3
5
7
9
11
13
15
17
19
```
Giải thích: chương trình trên không hiển thị ra màn hình các số từ `1` tới `20` do khi `i % 2 == 0` (`i` là số chẵn) thì chương trình sẽ gặp câu lệnh `continue` và do câu lệnh `print(i)` nằm dưới câu lệnh này nên sẽ không được thực thi.
