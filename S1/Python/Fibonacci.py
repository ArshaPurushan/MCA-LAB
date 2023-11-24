def fibo(n):
    a,b=0,1
    for i in range(1,n):
        a,b=b,a+b
    return a
n=int(input("Enter a number: "))
print(n,"th fibonacci number is ",fibo(n))
