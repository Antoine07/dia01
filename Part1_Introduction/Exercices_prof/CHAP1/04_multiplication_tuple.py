
def mult(l, m):
    assert type(l) in [list, tuple] and type(
        m) in [list, tuple] and len(l) == len(m)

    res = 0
    for i, el in enumerate(l):
        res += el * m[i]

    return res


print(mult([1, 2, 3], [1, 2, 3]))
print(mult((1, 2, 3), (1, 2, 3)))
