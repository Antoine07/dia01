
# classique
def g(a,b, c= 1):
    return a + b + c

print(g(2,2))

def h(a,b,c):
    return {'a' : a, 'b' : b, 'c' :c}

# dans l'ordre que l'on souhaite si nommé
print(h(a = 1,c = 2, b = 3))

# passage d'un tuple
def i(*t):
    return t

print(i(1,2,4)) # retourne un tuple (1, 2, 4)

def j(**d):
    return d # retourne un dictionnaire

print(j(a = 1,b = 2,c = 4)) # retourne un dictionnaire {'a': 1, 'b': 2, 'c': 4}



