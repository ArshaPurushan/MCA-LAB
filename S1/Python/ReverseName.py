def reverse(s):
    for word in s[::-1]:
        print(word,end=" ")

a=input("Enter full name")
a=a.split()
reverse(a)
