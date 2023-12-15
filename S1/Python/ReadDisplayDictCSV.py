import csv
with open('xyz.csv','r') as f:
    file=csv.DictReader(f)
    for lines in file:
        if lines:print(lines['Name'],'\t',lines['Department'],'\t',lines['Birthday Month'])

