import csv
fields=['Nmae','Department','Birthday Month']
rows=[['Vineeth','Accounting','June'],
      ['Vinsa','Finance','July'],['Arsha','MCA','March']]

with open('abc.csv','w') as f:
    writer=csv.writer(f)
    writer.writerow(fields)
    writer.writerows(rows)
    f.close()
