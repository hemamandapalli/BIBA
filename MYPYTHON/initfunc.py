class cat:
    attr1 = "mammal"
    def __init__(self, name):
        self.name = name

kitty = cat("kitty")
sniffy = cat("sniffy")

print("kitty is a {}".format(kitty.__class__.attr1))
print("sniffy is also a {}".format(sniffy.__class__.attr1))
 
# Accessing instance attributes
print("My name is {}".format(kitty.name))
print("My name is {}".format(sniffy.name))