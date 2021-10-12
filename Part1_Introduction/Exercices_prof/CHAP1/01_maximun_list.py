

def indiceMaxElementList(l):
    assert type(l) == list and len(l) > 0

    q = l[:]
    m = q.pop(0)

    for el in q:
        if el > m:
            m = el

    return l.index(m)
