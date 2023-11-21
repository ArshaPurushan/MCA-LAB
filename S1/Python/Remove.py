big= lambda s:[x for x in s if len(x)>5]

s=input("Enter the list of strings: ")
s=s.split()
print(big(s))
