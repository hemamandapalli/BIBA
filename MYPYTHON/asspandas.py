import pandas as pd
a= pd.Series([1.1, 7, 5, 8,6])
print("Pandas Series:")
print(a)

data = {'Name': ['priya', 'sree', 'nandu'],
        'Age': [20, 25, 22],
        'City': ['delhi', 'hyderabad', 'tirupathi']}
dataframe = pd.DataFrame(data)
print("Pandas DataFrame:")
print(dataframe)
dataframe['Salary'] = [50000, 60000, 45000]
print("Updated DataFrame:")
print(dataframe)