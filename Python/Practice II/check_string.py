s = str(input())

def format(s):
    # Nếu chuỗi dài dưới 3 thì trả về chính nó
    if len(s) < 3:
        return s
    
    # Nếu kết thúc bằng "ing" thì thêm "ly"
    if s[-3:] == "ing":
        return s + "ly"
    
    # Ngược lại thêm "ing"
    return s + "ing"

print(format(s))
