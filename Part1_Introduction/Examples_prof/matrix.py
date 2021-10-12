

matrix = [
    [1, 2, 3, 4, 5],
    [6, 7, 8, 9, 10],
    [11, 12, 13, 14, 15],
]

res = []
for c in range(5):
    resint = []
    for l in matrix:
        resint.append(l[c])
    
    res.append(resint)


print(res)