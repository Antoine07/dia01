import random as r

l = [1,2,3,4,5]
l[0] # 1
l[-1] # 5

# Slicing
l[-2:]

print(l[-2:])

q = list(range(1, 21))
# r.shuffle(q) # mélanger la liste si on veut
print(q)

# Slicing

## Par pas de 2

# liste de 1 à 20 on affiche que les nombres pairs
print(q[1::2])

# Inverser une liste
print(q[::-1])

print(q[::-2])

# on part du bout de la liste au niveau avec l'indice 1 exclu 
print(q[:1:-2])

print(q[-5::-2])