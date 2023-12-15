class Rectangle:

    def __init__(self, length=0, breadth=0):

        self.length = length

        self.breadth = breadth


    def area(self):

        return self.length * self.breadth


    def perimeter(self):

        return 2 * self.length + 2 * self.breadth


    def __eq__(self, other):

        return self.area() == other.area()



r1 = Rectangle(8, 3)

r2 = Rectangle(3, 8)


if r1 == r2:

    print("Both have the same area")

else:

    print("Both have different areas")
