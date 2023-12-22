#import csv
#file = open('salary_dataprac','r')
#type(file)
#csvreader = csv.reader(file)
#header=[]
#header=next(csvreader)
#heade
import pandas as pd
data= pd.read_csv("Salary_dataprac.csv")
print(data)
print(data.columns)
print(data.salary)

