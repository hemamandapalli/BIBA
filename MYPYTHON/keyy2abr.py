def myFun(**kwargs):
    for key, value in kwargs.items():
        print("%s == %s" % (key, value))
 
 
myFun(first='Hexa', mid='for', last='Hexa')