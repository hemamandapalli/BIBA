## method over loading
## sameclass
##same function or method names
##diff parameters
class A:
    def sum(self,a,b):
        return a+b
    def sum(self,a,b,c=1):
        return a+b+c
obj=A()
print(obj.sum(1,2))
##method overriding
##diff classes
#same method names or function names
##diff parameters

class A:
    def display(self):
        print('this is class A')
class B(A):
    def display(self):
        print('this is class B')
        super().display()
obj=B()
obj.display()