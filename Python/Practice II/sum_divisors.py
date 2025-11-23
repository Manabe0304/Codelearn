n = int(input())

def sumOfAll(n):
    divisors = []
    for i in range(1, n):
        if n % i == 0:
            divisors.append(i)
    
    return sum(divisors)

print(sumOfAll(n))
