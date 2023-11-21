s=input("enter a string")
s=s.split(',')
s.sort(key=len,reverse=True)
print("ll",len(s[0]))
if len(s[0])==len(s[1]):
    print("bingo")
