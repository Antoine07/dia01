
# Copie peu profonde : shallow copy

l = [1, 4, 9, 16, 25, 36, 49, 64, 81]

q = l[:]

q[0] = 100

print(l, q)

# il y a 4 références ici 
r = [[1, 2], [3, 4], [5, 6]]

# shallow copy ne fait la copie que de la première 
t = r[:]
t[0][0] = 100

print(r, t)
# [[100, 2], [3, 4], [5, 6]] [[100, 2], [3, 4], [5, 6]]