import csv

file_path = r"C:\Users\hp\Downloads\Salary_Data.csv"
rows=[]
with open(file_path,'r') as file:
    csvreader = csv.reader(file)
    header = next(csvreader)
    for row in csvreader:
        rows.append(row)
    print(header)
    print(rows)
        
        