inputfile=False
try:
    inputfile=open("Sample.txt","r+")
    print(inputfile.read())
    
    inputfile.seek(0,0)
    inputf=inputfile.readlines()
    #print(inputf)

    print("Number of lines in the file :",len(inputf))
except Exception as e:
    print(e)
finally:
    if inputfile:inputfile.close()
    


