
def testUpper(l):
    assert type(l) == list and len(l) > 0

    res = []
    for el in l:
        res.append( el.upper() == el)

    return all(res)

# Pour faire un ternaire en Python avec notre fonction
print( "Yes" if testUpper(['A', 'B', 'C' , 'D']) else "No" )