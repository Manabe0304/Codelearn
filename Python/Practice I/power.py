a = int(input())
b = int(input())

def power(a, b):
    product = 0
    if (a and b) > 0:
        product = a ** b
    return product

print(power(a, b))
