s=input("Enter a string");
if len(s)==2:
    res=s*2
elif len(s)>2:
    res=s[:2]+s[-2:]
else:
    print("empty")
print(res)
    



