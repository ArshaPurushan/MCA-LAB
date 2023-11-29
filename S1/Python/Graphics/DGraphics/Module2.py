import math
def cuboid(l,w,h):
    a=2*(l*w+l*h+h*w)
    v=l*w*h
    print("Area of cuboid: ",a)
    print("Volume of cuboid: ",v)

def sphere(r):
    a=4*math.pi*r*r
    v=(4/3)*math.pi*r*r*r
    print("Area of sphere: ",a)
    print("Volume of sphere: ",v)
    
