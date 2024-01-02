inputfile=False
try:
    inputfile=open("Sample.txt")
    inputf=list(set(inputfile.read().split()))
    #print(inputf)
    inputf.sort(key=len,reverse=True)
    print(inputf)
    print("Longest word(s):")
    for i in inputf:
        if len(i)==len(inputf[0]):
            print(i)
    
    
        
except Exception as e:
    print(e)
finally:
    if inputfile:inputfile.close()
