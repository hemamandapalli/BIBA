class animal():
    def eat(self):
        print("i can eat")
    
class dog(animal):
    def bark(self):
        print("i can bark")
class cat(animal):
    def cat(self):
        print("i am getting grumpy")

dog1=dog()
dog1.bark()
dog1.eat()
cat1=cat()
cat1.eat()