
# Pour définir une fonction 
def myFunction(a, b):
	print(a + b)

myFunction(1, 2)

"""
Pour les conditions
"""

if True :
	print("Bonjour tout le monde")
else: 
	print("Aurevoir tout le monde")

# Boucle en Python
for x in range(1, 10):
	print(x)

for e in [1, 2, 3]:
    print(e)

# range est un générateur 
print( list( range(1, 10) ) )

for e in range(1, 100, 3):
    print('step :', e, end="") # afficher les nombres 1 à 99 par pas de 3
    print() # retour à la ligne par défaut dans print

# Syntaxe de la boucle while
count = 0
while True:
	count += 1 # incrémentation de la variable
	if count > 100:
		break

print('Count : ', count)