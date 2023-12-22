import csv
with open('salary_dataprac.csv', 'r') as csvfile:
    reader = csv.DictReader(csvfile)
    for row in reader:
       print(row)