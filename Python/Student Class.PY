class student:
    def __init__(self, name, gender):
        self.name = name
        self.gender = gender
        self.grades = list()
    
    def avg(self):
        avg_grades = sum(self.grades)/len(self.grades)
        return avg_grades
    
    def add(self, grade):
        self.grades.append(grade)

    def fcount(self):
        cont = 0
        for i in self.grades:
            if i < 60:
                cont += 1
        return cont
###### add student data ######
Tom = student('Tom', 2)
Sara = student('Sara', 3)
Serena = student('Serena', 4)

Tom.add(85)
Tom.add(92)
Tom.add(75)

Sara.add(59)
Sara.add(54)
Sara.add(70)

Serena.add(96)
Serena.add(89)
Serena.add(100)

all_stu = [Tom, Sara, Serena]
###############################

for a in all_stu:
    print(a.name, '\'s average of grades is', a.avg(), sep = '')
    print(a.name, '\'s number of failing grades is', a.fcount(), sep = '')

class top(student):
    def __init__(self):
        super().__init__(' ', 0)
        self.stu_list = list()

    def add_stu(self,stu):
        self.stu_list.append(stu)

    def avg_top(self):
        avg_s = list()
        for i in self.stu_list:
            avg_s.append(i.avg())
        highest = max(avg_s)
        for n in range(0, len(avg_s)):
            if highest == avg_s[n]:
                break
        print(self.stu_list[n].name, 'have the highest score', sep = '')

top_stu = top()

for i in all_stu:
    top_stu.add_stu(i)
top_stu.avg_top()


    




