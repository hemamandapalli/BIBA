class father():
    def father_quality(self):
        print('father has intelligence and kind hearted')
    def father_nature(self):
        print('father is strick in principle')
narshimhulu=father()
class mother():
    def mother_quality(self):
        print('mother is good cooker')
    def mother_nature(self):
        print('mother has soft mind')
gangadevi=mother()
class child(father,mother):
    def daughter_quality(self):
        print('daughter has deep knowledge and innocent')
divya=child()   
divya.father_quality()
divya.father_nature()
divya.mother_quality()
divya.mother_nature()
divya.daughter_quality()

