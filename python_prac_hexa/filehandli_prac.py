s=open('file.txt',mode='r')
print(s.read())
s.close()

with open('example.txt', 'r') as file:
    content = file.read()
    print(content)
