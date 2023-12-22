class grandfather():
    def gf_quality(self):
        print('grandfather is a honest person')
nageswar=grandfather()
class father(grandfather):
    def father_quality(self):
        print('father has intelligence and kind hearted')
venkatrao=father()
class child(father):
    def aim (self):
        print('child wants to be doctor')
Nandu=child()
Nandu.gf_quality()
Nandu.father_quality()
Nandu.aim()