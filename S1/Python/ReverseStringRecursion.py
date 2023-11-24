def string_rev(s):
    if not len(s):return ''
    else:
        return s[-1]+string_rev(s[:-1])
s=input("Enter a string: ")
print('Using recursion :',string_rev(s))
