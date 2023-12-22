list=["greeks",4,"greeks!"]
print(list[:1:-2])
print(list[:-1:2])

list1=[1,2.2,"hema",True]
#1 is added to the list
list1.append(1)
print(list1)
print(type(list1))
list1.extend([1,2,3])
print(list1)
list1.insert(1,"python")
print(list1)
list1.pop(2)
print(list1)
print(len(list1))
