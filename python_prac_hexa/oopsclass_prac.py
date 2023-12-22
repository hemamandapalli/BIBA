class student():
    def check_pass_fail(self):
        if self.marks>45:
            return("pass")
        else:
            return("false")
    

student1=student()
student1.name="hema"
student1.marks=80
did_pass=student1.check_pass_fail()
print(did_pass)
