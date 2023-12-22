class student():
    def check_pass_fail(self):
        if self.marks>45:
            return("pass")
        else:
            return("fail")
    def __init__(self,name,marks):
        self.name=name
        self.marks=marks
student1=student("marry",55)
student2=student("harry",44)
did_pass=student1.check_pass_fail()
print(did_pass)
did_pass=student2.check_pass_fail()
print(did_pass)

