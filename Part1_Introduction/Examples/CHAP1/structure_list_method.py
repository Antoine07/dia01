l = []

l.extend( x*x for x in range(1,10) )

# Compréhension de liste
print(l)

# insert un élément à l'indice 2
l.insert(2, 100)
print(l)

# Dépile un élément
l.pop(2)
print(l)

# renvoie l'incide
print(l.index(9))

alpahabet = list( set("abcdefghijklmnopqrstxyz") ) 

alpahabet.sort(reverse=True)

print(alpahabet)
