n = int(input())

def is_abundant(n):
    total = 0
    # duyệt các ước số từ 1 đến n-1
    for i in range(1, n):
        if n % i == 0:
            total += i
    return total > n

print(is_abundant(n))
