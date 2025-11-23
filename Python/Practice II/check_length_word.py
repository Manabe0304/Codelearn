s = str(input())

def filter_words(s):
    words = s.split()                 # Tách chuỗi thành list các từ
    result = [w for w in words if len(w) > 3]   # Lọc từ có độ dài > 3
    return result

print(filter_words(s))
