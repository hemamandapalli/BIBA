add=lambda a,b : a + b
print(add)
print(add(3,4))
##keyword argument
product=lambda a,b: a*b
print(product(b=6,a=-7))

##default argument
def myFun(x, y=70):
    print("x: ", x)
    print("y: ", y)
myFun(10)

def myFun(y, x=50):
    print("x: ", x)
    print("y: ", y)
myFun(10)

add=lambda x,y=20,z=10 : x+y+z
print(add(15))
##*args allows as many arguments as you want
add=lambda *args:sum(args)
print(add(1,2,3,45))

##even or odd
even_odd=lambda x:(x % 2 and 'odd ' or 'even')
print(even_odd(23))
##using filter
num=[20,30,32,54,36,12]
greater=list(filter(lambda num:num>15,num))
print(greater)
##map function
num=[20,30,32,54,36,12]
double_num=list(map(lambda num:num*2,num))
print(double_num)


