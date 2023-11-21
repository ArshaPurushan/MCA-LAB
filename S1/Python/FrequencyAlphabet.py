a=input("Enter a word: ")
b={}
print("Frequency of alphabet: ")
for i in a:
    b[i]=b.get(i,0)+1
print(b)    
