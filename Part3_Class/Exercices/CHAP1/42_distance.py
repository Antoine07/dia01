import math as m
from distance import Point


class DistanceAverage:
    precision = 2

    def __init__(self, *p):
        self.points = p  # tuple de point
        self.norm_euclidean = lambda p, q: m.sqrt(
            (p.x - q.x)**2 + (p.y - q.y)**2)

        self.norm_absolute = lambda p, q: abs(
            (p.x - q.x) + (p.y - q.y))

    def euclidean(self, centroid):
        assert len(self.points) > 0

        return round(sum(self.norm_euclidean(p, centroid) for p in self.points)/len(self.points), DistanceAverage.precision)

    def absolute(self, centroid):

        return round(sum(self.norm_absolute(p, centroid) for p in self.points)/len(self.points), DistanceAverage.precision)

DistanceAverage.precision = 4
centroid = Point(3, 7)
A = Point(5, 7)
B = Point(7, 1.3)
C = Point(10, 11)
D = Point(0.9, 11)
E = Point(3, 8)

distanceAvg = DistanceAverage(A, B, C, D, E)

print(distanceAvg.euclidean(centroid))
print(distanceAvg.absolute(centroid))
