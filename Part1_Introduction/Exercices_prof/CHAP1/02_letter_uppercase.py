def testUpper(l):
    assert type(l) == list and len(l) > 0

    res = []
    for el in l:
        res.append( el.upper() == el)

    return all(res)

print(testUpper(['A', 'B', 'C' , 'D']))

print(testUpper(['A', 'b', 'C' , 'D']))
