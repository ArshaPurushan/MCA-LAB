def sum(n):
    if len(n)==1:
        return n[0]
    else:
        return n[0]+sum(n[1:])

n=input("enter number separated by comma")
n=list(map(int,n.split(",")))
print("sum is ",sum(n))
