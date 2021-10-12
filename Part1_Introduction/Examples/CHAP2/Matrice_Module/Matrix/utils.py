

"""
dimension calcul la dimension de votre matrice en vérifiant également sa cohérence de manière défensive
"""
def dimension(m):
    n = len(m)
    assert n > 0
    p = len(m[0])
    assert p > 0
    for r in m:
        assert len(r) == p

    return (n, p)

"""
transpose qui permet de transposer une matrice 
"""
def transpose(m):
    n, p = dimension(m)

    return [ [ m[i][j] for i in range(n)] for j in range(p) ]

