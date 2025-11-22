## Lý thuyết
Trước khi làm bài này ta hãy xem thêm một vài toán tử để thao tác với chuỗi:

| Toán tử	| Mô tả	| Ví dụ |
|-|-|-|
| []	| Slice - Trả về kí tự trong chuỗi	
```
x="Python"
print(x[1])
``` 
| [:]	| Range slice-Trả về dãy kí tự trong chuỗi	
x="Python"
print(x[1:3])
in	Kiểm tra xem một chuỗi có nằm trong chuỗi khác không	
x="Python"
print("u" in x)
not in	Kiểm tra xem một chuỗi có không nằm trong chuỗi khác không	
x="Python"
print("l" not in x)
%	Hỗ trợ định dạng chuỗi	
x = 12.3456789
print("The value of x is %3.2f" %x)
+	Cộng hai chuỗi bất kì	
x="Code"
y="Learn"
print(x+y)
*	Lặp lại chuỗi bất kì cho trước	
x="CodeLearn"
print(x*2)
