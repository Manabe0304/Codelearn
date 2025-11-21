'''
Cú pháp hàm round(): round(number, ndigits)
Trong đó number là số cần làm tròn, ndigits là số chữ số sau dấu phẩy cần làm tròn
'''

n = int(input())

ans = 0
for i in range(1, n+1):
    ans += i / (i + 1)

print(round(ans, 2))
