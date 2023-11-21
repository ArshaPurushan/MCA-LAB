a=input("Enter a list of numbers: ")
b=a.split(',')
b=list(map(int,b))
s=min(b)
b.remove(s)
ss=min(b)
print("Second smallest: ",ss)

