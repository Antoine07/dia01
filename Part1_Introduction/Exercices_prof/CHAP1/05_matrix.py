
matrix = [
    [1, 2, 3, 4, 5], # i = 0
    [6, 7, 8, 9, 10], # i = 1
    [11, 12, 13, 14, 15], # i =2
]


res = []

for i in range(5):
    sub = []
    # 3 fois
    for row in matrix:
        sub.append(row[i])
    res.append(sub)

print(res)

"""
i = 0
    sub = []

        sub= [1]  
        sub= [1, 6]


"""

# transposed = [ [ ... ]  ... ]