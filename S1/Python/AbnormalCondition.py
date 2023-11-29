#Abnormal Exception

try:    
    n=int(input("enter a number"));
    if(n not in range(90,120)):
        raise ValueError
    else:print("Value is ",n)
except ValueError:
    print("abnormal condition");
        
