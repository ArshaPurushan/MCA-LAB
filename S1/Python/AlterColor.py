list=input('Enter list of color: ')
color=list.split(',')
print('list: ',color)
print('Alternate color: ')
for i in range(0,len(color),2):
    print(color[i])
