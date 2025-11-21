lst = []
n = int(input())

for i in range(n):
    lst.append(int(input()))
# Odd
answer = []
for v in lst:
    if v % 2 != 0:
        answer.append(v)

print(answer)

# Even
answer = []
for v in lst:
    if v % 2 == 0:
        answer.append(v)
        
print(answer)
