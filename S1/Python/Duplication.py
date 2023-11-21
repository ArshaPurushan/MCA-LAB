a=input("Enter a list: ")
b=a.split()
c=list(a)
l=[l.append(i) for i in c if i not in l]
print('After remove duplication: ',l)

       
