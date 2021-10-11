import random as r

def maxList(l):
    assert type(l) == list and len(l) > 0
    m = l.pop(0)

    for el in l:
        if el > m:
            m = el

    return m

l = []

# Crée un exemple
# r.randint retourne un entier aléatoire compris entre 1 et 100
# _ dans le range pour ne pas 
l.extend( r.randint(1, 101) for _ in range(20) )

print(l)
print(maxList(l))