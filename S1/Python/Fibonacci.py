def fibo(n):
    a,b=0,1
    for i in n:
        a,b=b,a+b
    return a

n=int(input("Enter a number: "))
print("%d fibonacci number is %d",(n,fibo(n)))
