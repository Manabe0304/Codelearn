#Initial list
res = []

# Input lengths
lengths = int(input())

# Add element
for i in range(lengths):
    # Input elements
    n = int(input())
    res.append(n)

# Define function to get even numbers
def evenNum(res):
    result = []
    for num in res:
        if num % 2 == 0:
            result.append(num)
    return result

# Define function to get even numbers
def oddNum(res):
    result = []
    for num in res:
        if num % 2 != 0:
            result.append(num)
    return result

# Output the list of even numbers
print(evenNum(res))   
# Output the list of odd numbers
print(oddNum(res))
