try:
    a=int(input("Enter a number:"))
    assert(a>0),"negative value"
except AssertionError as a:
    print(a)
finally:
    print("Success")
