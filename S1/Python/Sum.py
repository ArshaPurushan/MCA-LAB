def sum(n):
    sum=0
    for i in n:
        sum+=i
    return sum

n=input("enter number separated by comma")
n=list(map(int,n.split(",")))
if len(n)==1:
    print("sum is ",n[0])
else:
    print("sum is ",sum(n))

