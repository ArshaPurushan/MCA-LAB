import csv
fields=['Name','Department','Birthday Month']
rows=[{'Name':'Vineeth','Department':'Accounting','Birthday Month':'June'},
      {'Name':'Vinsa','Department':'Finance','Birthday Month':'July'},
      {'Name':'Arsha','Department':'MCA','Birthday Month':'March'}]

with open('xyz.csv','w') as f:
    writer=csv.DictWriter(f,fieldnames=fields)
    writer.writeheader()
    writer.writerows(rows)
    f.close()
