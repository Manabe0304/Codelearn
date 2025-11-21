# While-loop
a = int(input())
b = int(input())

answer = 0
while a <= b:
    if a % 2 != 0:
        answer += a
    a += 1
print(answer)

# For-loop
a = int(input())
b = int(input())

answer = 0
for i in range(a, b + 1):
    if i % 2 != 0:
        answer += i
print(answer)
