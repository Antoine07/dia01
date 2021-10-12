a = 1

print(a)


def position(*coord):
    x, y, z = coord
    return x, y, z 

print(position(1,2,3) )

def dic(**info):

    return info

print(dic(name = 'Alan', email = 'alan@alan.fr', address='rue machin'))

l = [1,2]
m = l 

m[0] = 5

print(l)
print(m)
q = l[:]
q[0] = 7
print(q)
print(l)

# on suppose que c'est le plus grand
l = [7,5,89,1,78]
candidate = l[0]





