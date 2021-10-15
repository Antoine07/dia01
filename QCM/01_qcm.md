# 01 QCM Python

## Question 1

Qu'est ce que le module this dans Python ?

Répondez en choisissant une seule et bonne réponse ci-dessous.

```python
import this
```

_Réponses_ :

- [ ] C'est un ensemble d'annotation pour le typage.
- [ ] C'est une base de données.
- [ ] C'est un service Web.
- [ ] C'est l'ensemble des règles Python à suivre.

## Question 2

Quel principe Python LEGB utilise Python pour trouver la définition de la variable b dans le script courant ?

Répondez en choisissant une seule et bonne réponse ci-dessous.

```python
# ICI Script courant

def foo():
    b = 1
    def baz():
        print(b)

    baz()

```

_Réponses_ :

- [ ] L pour localement, Python regarde si vous avez défini la variable localement.
- [ ] E pour englobante, Python regarde si la variable n'est pas définie dans la première fonction englobante puis remonte
- [ ] G pour globalement, Python va alors chercher la variable de manière globale.
- [ ] B pour Builtins, Python regarde alors dans le module Builtins.

## Question 3

Quel principe Python LEGB utilise Python pour trouver la définition de la variable b dans le script courant ?

Répondez en choisissant une seule et bonne réponse ci-dessous.

```python
# ICI Script courant

b = 1

def foo():
    def baz():
        print(b)

    baz()
```

_Réponses_ :

- [ ] L pour localement, Python regarde si vous avez défini la variable localement.
- [ ] E pour englobante, Python regarde si la variable n'est pas définie dans la première fonction englobante puis remonte
- [ ] G pour globalement, Python va alors chercher la variable de manière globale.
- [ ] B pour Builtins, Python regarde alors dans le module Builtins.

## Question 4

Quel principe Python LEGB utilise Python pour trouver la définition de la variable b dans le script courant ?

Répondez en choisissant une seule et bonne réponse ci-dessous.

```python
# ICI Script courant

def foo():
    def baz():
        b = 1
        print(b)

    baz()
```

_Réponses_ :

- [ ] L pour localement, Python regarde si vous avez défini la variable localement.
- [ ] E pour englobante, Python regarde si la variable n'est pas définie dans la première fonction englobante puis remonte
- [ ] G pour globalement, Python va alors chercher la variable de manière globale.
- [ ] B pour Builtins, Python regarde alors dans le module Builtins.

## Question 5

Quel principe Python LEGB utilise Python pour trouver la définition de la variable b dans le script courant ?

Répondez en choisissant une seule et bonne réponse ci-dessous.

```python
# ICI Script courant

print("Bonjour tout le monde")
```

_Réponses_ :

- [ ] L pour localement, Python regarde si vous avez défini la variable localement.
- [ ] E pour englobante, Python regarde si la variable n'est pas définie dans la première fonction englobante puis remonte
- [ ] G pour globalement, Python va alors chercher la variable de manière globale.
- [ ] B pour Builtins, Python regarde alors dans le module Builtins.

## Question 6

Comment appeler le plus correctement possible fonction g ci-après pour lui passer deux paramètres ?

Répondez en choisissant une seule et bonne réponse ci-dessous.

```python
def g(*t):
	return t
```

_Réponses_ :

- [ ] 
```python
g({a : 1, b : 2})
```
- [ ] 

```python
g({ 1, 2})
```

- [ ] 

```python
g(1, 2)
```

- [ ] 

```python
g( a= 1, b = 2)
```

## Question 7

Comment appeler le plus correctement possible fonction g ci-après pour lui passer deux paramètres ?

Répondez en choisissant une seule et bonne réponse ci-dessous.

```python
def g(**t):
	return t
```

_Réponses_ :

- [ ] 
```python
g({a : 1, b : 2})
```
- [ ] 

```python
g({ 1, 2})
```

- [ ] 

```python
g(1, 2)
```

- [ ] 

```python
g( a= 1, b = 2)
```

## Question 8

Comment modifier la liste ci-dessous pour obtenir la liste inversée ci-après ?

Répondez en choisissant une seule et bonne réponse ci-dessous.

```python
l = [1,2,3,4,5,6,7,8,9,10]

# [10, 8, 6, 4]
```

_Réponses_ :

- [ ] 
```python
l[1::-2]
```
- [ ] 

```python
l[-1::-2]
```

- [ ] 

```python
l[:1:-2]
```

- [ ] 

```python
l[:-2]
```
## Question 9

Comment faire une shallow copy de la liste suivante ?

Répondez en choisissant une/des bonne(s) réponse(s) ci-dessous.

```python
l = [1,2,3,4,5,6,7,8,9,10]
```

_Réponses_ :

- [ ] 
```python
q  = l[]
```
- [ ] 

```python
q = l[:]
```

- [ ] 

```python
q = l[::]
```

- [ ] 

```python
q = l
```

## Question 10

D'où vient l'origine du nom du langage Python ?

Répondez en choisissant une seule et bonne réponse ci-dessous.

_Réponses_ :

- [ ]  C'est Guido Van Rossum qui était fan des Monty Python.
- [ ]  C'est Guido Van Rossum qui était fan des serpents.
- [ ]  C'est Guido Van Rossum qui n'était pas fan des Monty Python.

## Question 11

Comment faire une copy profonde de la liste suivante dans une nouvelle liste q ?

Répondez en choisissant une seule et bonne réponse ci-dessous.

```python
r = [[1, 2], [3, 4], [5, 6]]
```

_Réponses_ :

- [ ] 
```python
q  = r
```
- [ ] 

```python
q = r[:]
```

- [ ] 

```python
q = [ s for s in r ]
```

- [ ] 

```python
q = [ s[:] for s in r]
```

## Question 12

Trouvez la manière équivalente du script suivant en choisissant une seule et bonne réponse.

```javascript
l = []
for a in range(1, 4):
	for b in range(4, 11):
		if a + b < 8:
			l.append((a, b))
```

_Réponses_ :

- [ ] 
```python
l = [(a,b) for a, b range(1, 15)]
```
- [ ] 

```python
l = [ (a,b) for a in range(1, 4) for b in range(4, 11)  ]
```

- [ ] 

```python
l = [ (a,b) for a in range(1, 4) for b in range(4, 11)  if a + b < 8 ]
```

- [ ] 

```python
l = [ (a,b) for a in range(1, 4) for b in range(4, 11)  if a + b > 8 ]
```

## Question 13

Quel code devez vous ajouter dans le module fibo ci-dessous pour éviter que le script suivant s'exécute lorsqu'on l'importera en tant que module ailleurs dans l'application ?

Répondez en choisissant une seule et bonne réponse ci-dessous.

```python
def fib(n):    
    a, b = 1, 1
    while a < n:
        print(a, end=' ')
        a, b = b, a+b
    print()

# Code qui s'exécute 
fib(100)
```

_Réponses_ :

- [ ] 
```python
pass
```
- [ ] 

```python
if __name__ == "__main__":
    fib(100)
```

- [ ] 

```python
if __name__ == "MAIN":
    fib(100)
```

- [ ] 

```python
assert true
    fib(100)
```

## Question 14

Est-ce qu'un dictionnaire ordonne ses valeurs qu'il stocke ?

Répondez en choisissant une seule et bonne réponse ?

_Réponses_ :

- [ ]  Oui 
- [ ]  Non 

## Question 15

Comment définissez-vous un dictionnaire d ?

Répondez en choisissant une/des bonne(s) réponse(s) ?

_Réponses_ :

- [ ] 
```python
d = {}
```
- [ ] 

```python
d = dict()
```

- [ ] 

```python
d = []
```

- [ ] 

```python
d = set()
```

## Question 16

Comment définissez-vous un ensemble d ?

Répondez en choisissant une/des bonne(s) réponse(s) ?

_Réponses_ :

- [ ] 
```python
d = {}
```
- [ ] 

```python
d = dict()
```

- [ ] 

```python
d = []
```

- [ ] 

```python
d = set()
```

## Question 17

Pour stocker des valeurs, sans la notion d'ordre pour ces dernières, quelle est la/les structure(s) qui vous semble être la mieux adapter ?

Répondez en choisissant une/des bonne(s) réponse(s) ?

_Réponses_ :

- [ ] Un dictionnaire 

- [ ] Un set (ensemble)

- [ ] Une liste 

- [ ] Un objet

- [ ] Un tuple

## Question 18

Avec quel type de valeur(s) vous pouvez définir une clé d'un dictionnaire ?

Répondez en choisissant une/des bonne(s) réponse(s) ?

_Réponses_ :

- [ ] Un dictionnaire 

- [ ] Un set (ensemble)

- [ ] Une liste 

- [ ] Un objet

- [ ] Un tuple

- [ ] Un string

## Question 19

Qu'affiche le code suivant dans Ipython ?

Répondez en choisissant une seule et bonne réponse ?

```python
languages = ['JS', 'Python', 'PHP'] 
versions = [6, 3, 8] 
res = zip(languages, versions)
res
```

_Réponses_ :

- [ ] None
- [ ] Un objet de type zip
- [ ] [('JS', 6), ('Python', 3), ('PHP', 8)]
- [ ] 3

## Question 20

Qu'affiche le code suivant dans Ipython ?

Répondez en choisissant une seule et bonne réponse ?

```python
x, *y = ( 100, (200, 300 ), (500, 900) )   
x, y
```

_Réponses_ :

- [ ] None
- [ ] (100, [(200, 300), (500, 900)])
- [ ] ( 100, (200, 300 ), (500, 900) )  
- [ ] 100, 200

## Question 21

Qu'affiche le code suivant dans Ipython ?

Répondez en choisissant une seule et bonne réponse ?

```python
A = {'b', 'a', 'c'}
B = {'r', 'c'}
# Différence entre A et B
A-B
```

_Réponses_ :

- [ ] {'b', 'a', 'c', 'r' }
- [ ] {'b', 'a', 'c'}
- [ ] {'r', 'c'}
- [ ] {'a', 'b'}

## Question 22

Qu'affiche le code suivant dans Ipython ?

Répondez en choisissant une seule et bonne réponse ?

```python
A = {'b', 'a', 'c'}
B = {'r', 'c'}
# Différence entre A et B
(A-B) | B
```

_Réponses_ :

- [ ] {'b', 'a', 'c', 'r' }
- [ ] {'b', 'a', 'c'}
- [ ] {'r', 'c'}
- [ ] {'a', 'b'}

## Question 23

Qu'affiche le code suivant dans Ipython ?

Répondez en choisissant une seule et bonne réponse ?

```python
a = { x for x in zip( [1,1,1], [1,1,1] ) }

```

_Réponses_ :

- [ ] {1}
- [ ] {}
- [ ] {(1,1,1)}
- [ ] {(1, 1)}

## Question 24

Qu'affiche le code suivant dans Ipython ?

Répondez en choisissant une seule et bonne réponse ?

```python
class Mapping:
    def __init__(self, iterable):
        self.items_list = []
        self.__update(iterable)

    def update(self, iterable):
        for item in iterable:
            self.items_list.append(item)

    __update = update

class MappingSubclass(Mapping):
    def update(self, keys, values):
        for item in zip(keys, values):
            self.items_list.append(item)

mapSub = MappingSubclass("Bonjour")
mapSub.update("le", "monde")
mapSub.items_list
```

_Réponses_ :

- [ ] ['B', 'o', 'n', 'j', 'o', 'u', 'r', ('l', 'm'), ('e', 'o')]
- [ ] []
- [ ] ['B', 'o', 'n', 'j', 'o', 'u', 'r', 'l', 'm', 'e', 'o']
- [ ] [('B', 'o', 'n', 'j', 'o', 'u', 'r'), ('l', 'm'), ('e', 'o')]


## Question 25

Comment ajouter plusieurs "Bonjour" à partir de l'objet type Message comme une concaténation de chaîne de caractères à partir de la classe Message ?

On aimerait avoir Bonjour Bonjour Bonjour.

Répondez en choisissant une seule et bonne réponse ?

```python
class Message:

    """
    définit l'initialisateur de la classe les variables de classe
    """
    def __init__(self, message):
        self.message = message 

    def __str__(self):
        print(self.message)

    def __add__(self, other):
        return self.message + " " + other.message

m = Message("Bonjour")
```

_Réponses_ :

- [ ] m + m + m
- [ ] Message(m+m) + m
- [ ] Message("Bonjour") + Message("Bonjour") + Message("Bonjour")
- [ ] (m + m) + m