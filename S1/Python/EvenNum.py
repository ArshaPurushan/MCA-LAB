def even(n):
    for i in n:
        if(i==237):
            break
        elif not i%2:
            print(i)
            


num=input("enter the number")
num=list(map(int,num.split()))
even(num)
