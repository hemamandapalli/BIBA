class father():
    def father_quality(self):
        print('father has intelligence and kind hearted')
    def father_nature(self):
        print('father is strick in principle')
narshimhulu=father()
class child(father):
    def daughter_quality(self):
        print('daughter has deep knowledge and innocent')
divya=child()   
divya.father_nature()
divya.daughter_quality()

class child2(father):
    def daughter2_quality(self):
        print('daughter is introvert')
reddy=child2()
reddy.father_quality()
reddy.daughter2_quality()