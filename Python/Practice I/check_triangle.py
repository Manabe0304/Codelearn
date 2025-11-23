a = int(input())
b = int(input())
c = int(input())

# Kiểm tra có tạo thành tam giác không
if a + b > c and a + c > b and b + c > a:

    if a == b == c:
        print("Equilateral triangle")   # Tam giác đều
    
    elif a == b or a == c or b == c:
        print("Isosceles triangle")     # Tam giác cân

    else:
        print("Scalene triangle")       # Tam giác thường

else:
    print("Not a triangle")             # Không tạo thành tam giác
