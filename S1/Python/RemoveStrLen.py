s=input("Enter the list of strings: ");
l=list(filter(lambda x:len(x)>5,s.split()))
print(l)
