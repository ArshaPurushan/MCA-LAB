s=input("enter a sentence: ")
s=s.split()


for i in s:
    if len(i)==len(max(s,key=len)):
        print("Length of longestword: ",len(i))
    if len(i)>1:
       print("BINGO")
