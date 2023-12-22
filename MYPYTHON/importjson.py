import json
 
# Define JSON string
jsonString = '{ "id": 121, "name": "Naveen", "course": "MERN Stack"}'
 
# Convert JSON String to Python
student_details = json.loads(jsonString)
 
# Print Dictionary
print(student_details)
 
# Print values using keys
print(student_details['name'])
print(student_details['course'])


# JSON string
import json
json_string = '{"name": "John", "age": 30, "city": "New York"}'

# Convert JSON string to dictionary
data_dict = json.loads(json_string)

# Print the resulting dictionary
print(data_dict)