s = str(input())

s = s.split() # tách chuỗi thành list các từ.
s = s[::-1] # đảo ngược list đó.
s = ' '.join(s) # ghép lại thành chuỗi hoàn chỉnh.
print(s)
