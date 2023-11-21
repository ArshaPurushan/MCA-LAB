def count(s):
    count=0
    for i in s:
        if len(i)>1 and i[0]==i[-1]:
            count+=1
            return count

s=input("Enter list of strings")
s=s.split()
print(count(s))
            
