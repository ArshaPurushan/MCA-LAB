futureyear=int(input("Enter any upcoming year: "))
print('leap year from 2023 to',futureyear,'are')
for i in range(2023,futureyear+1):
    if((i%4==0 and i%100!=0) or (i%400==0)):
        print(i)
