import re

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

# A string that contains a person's name, school's name, and total points
data = "Name of student: Jack, Name of school: ASD, Total: 55"

# Extracting person's name using regEx
name = re.search(r"Name of student: (.*),", data)
name_extracted = name.group(1)

# Extracting school's name using regEx
school = re.search(r"Name of school: (.*),", data)
school_extracted = school.group(1)

# Extracting total points using regEx
total = re.search(r"Total: (.*)", data)
total_extracted = int(total.group(1))

# Creating a Student object using the extracted information
p1 = Person(name_extracted)
s1 = School(school_extracted)
st1 = Student(p1, s1, total_extracted)

# Displaying the information
st1.display()

