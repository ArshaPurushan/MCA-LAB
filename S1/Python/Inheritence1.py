class Person:
    def __init__(self, name=None):
        self._name = name

    def display(self):
        print("Name of student: ", self._name)

class School:
    def __init__(self, sname=None):
        self._sname = sname

    def display(self):
        print("Name of school: ", self._sname)

class Student:
    def __init__(self, name=None, school=None, total=0):
        self._name = name
        self._school = school
        self._total = total

    def display(self):
        self._name.display()
        self._school.display()
        print("Total: ", self._total)

p1 = Person("Jack")
s1 = School("ASD")
st1 = Student(p1, s1, 55)
st1.display()
