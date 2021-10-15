
import random as r


class GenerateMatrix:

    rMin, rMax = 1, 100
    complexity = 100

    def __init__(self, n, p):
        self.dim = (n, p)
        self.Matrix = self.__run()

    def __run(self):
        n, p = self.dim

        return [
            [r.randint(GenerateMatrix.rMin, GenerateMatrix.rMax) for _ in range(p)] for _ in range(n)
        ]

    def shuffle(self):
        count = GenerateMatrix.complexity

        while count > 0:
            i, j = self.lines()
            self.Matrix[i], self.Matrix[j] = self.Matrix[j], self.Matrix[i]
            count -= 1

    def lines(self):
        n, p = self.dim

        i, j = r.randint(0, n-1), r.randint(0, n-1)
        while i == j:
            i, j = r.randint(0, n-1), r.randint(0, n-1)

        return i, j


GenerateMatrix.rMin = 0
GenerateMatrix.rMax = 1

gen = GenerateMatrix(5, 7)

print(gen.Matrix)
