# JSON string
import json
json_string = '{"name": "John", "age": 30, "city": "New York"}'

# Convert JSON string to dictionary
data_dict = json.loads(json_string)

# Print the resulting dictionary
print(data_dict)