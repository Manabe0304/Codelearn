#Initial list
res = []

# Input lengths
lengths = int(input())

# Add element
for i in range(lengths):
    # Input elements
    n = int(input())
    res.append(n)

# Chuyển từng phần tử sang chuỗi, nối lại, rồi ép về số nguyên
result = int("".join(str(x) for x in res))

print(result)
