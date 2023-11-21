firstname=['Varsha','Arun','Devika','Anjali','Arshika','Vimal','Geethu','Anwar']
count=0
for name in firstname:
    if name.startswith('A'):
        count=count+1
print("Number of names start with 'A': ",count) 
