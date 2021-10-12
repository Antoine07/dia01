
l = [1,2,3]   
m = [1,2,3]  

def multLists(l, m):
    assert type(l) == list and type(m) == list and len(l) == len(m)

    res = 0
    for i,el in enumerate(l):
        res += el * m[i]

    return res 

