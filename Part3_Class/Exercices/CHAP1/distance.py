import math as m

class Point:
    def __init__(self, x, y):
        self._x = x
        self._y = y

    @property
    def x(self):
        return self._x
    
    @x.setter
    def x(self, x):
        return float(self._x)

    @property
    def y(self):
        return self._y
    
    @y.setter
    def y(self, y):
        return float(self._y)

class Distance:

    def __init__(self, p, q) :
        self.p = p
        self.q = q

    def euclidean(self):

        return m.sqrt((self.p.x - self.q.x)**2 + (self.p.y - self.q.y)**2)
    

if __name__ == "__main__":
    distance = Distance(Point(5,7), Point(15,1))

    print("Distance entre mes deux points {}".format(distance.euclidean()))
    print(f"Distance entre mes deux points {distance.euclidean()}")