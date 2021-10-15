
import math as m
import random as r


class Point:

    def __init__(self, x, y):
        self.x = x
        self.y = y


c = Point(0, 0)


class Circle:

    def __init__(self, radius: float, N: int = 100000, center: Point = c) -> None:
        self.radius = radius
        self.norm = lambda p, q: m.sqrt((p.x - q.x)**2 + (p.y - q.y)**2)
        self.center = center
        self.N = N
        self.count = 0
        self.proba = 0

    def run(self) -> None:
        for _ in range(self.N):
            if self.norm(self.fire(), self.center) <= self.radius:
                self.count += 1
        
        self.proba = round( self.count / self.N , 4  )

    def fire(self, dim: float = 10.) -> Point:
        return Point(r.randint(-dim, dim), r.randint(-dim, dim))

    def __str__(self) -> str:

        return str( self.proba )


c = Circle(radius=2)
c.run()
print(c)

# Calcul des probabilités 
p = round( (4*m.pi) / (20*20) , 4 )
print(p)
print( abs( c.proba - p  ) * 100 )