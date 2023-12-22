set1=()
set2=()
for i in range(5):
     set1.add(i)
     for i in range(3,9):
         set2.add(i)
         set3=set1.intersection(set2)
         print("intersection between set1 and set2 is:")
         print(set3)
 