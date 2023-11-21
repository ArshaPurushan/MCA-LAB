a=input("enter a sentence: ")
b={}
print("fequence of word: ")
for i in a.split():
    b[i]=b.get(i,0)+1
print(b)    
    
