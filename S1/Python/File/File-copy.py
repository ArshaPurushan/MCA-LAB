#copy one file to another

inputfile=False
outputfile=False
try:
    inputfile=open("Sample.txt")
    #print(inputfile.read())
    print("Copy\n")
    outputfile=open("output.txt",'w+')
    output=outputfile.write(inputfile.read())
    outputfile.seek(0,0)
    print(outputfile.read())
    
except Exception as e:
    print(e)
finally:
    if inputfile:inputfile.close()
    if outputfile:outputfile.close()

##Result ==> output file will be rewritted
