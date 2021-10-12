# Structure de données

Nous avons déjà abordé les listes comme structure de données.


## Dictionnaire

Un autre type natif existe en Python : les dictionnaires. Ils sont indexés par des clés, qui peuvent être de n'importe quel type immuable, comme par exemple les chaînes de caractères ou les nombres.

Par contre une liste ne peut être une clé car mutable.

Un dictionnaire est un ensemble non ordonné de pair clé/valeur devant être unique dans le dictionnaire.

On peut définir un dictionnaire en utilisant une paire d'accolade vide :

```python
a = {}
```

## Les dictionnaires présentation 2

 Les principales opérations sur les dictionnaires sont de stocker une valeur pour une clé et extraire la valeur correspondante pour une clé. 
 On peut également supprimer une paire clé/valeur avec l'opérateur del de Python.
 Attenion, si vous stockez une valeur pour une clé déjà présente dans le dictionnaire l'ancienne valeur sera perdue. 

 Et si vous essayez d'accéder à une valeur pour une clé qui n'existe pas une exception sera levée.

## Les dictionnaires présentation 3

Un dictionnaire est un tableau de hash, ceci permet d'accéder à une valeur du dictionnaire en un temps constant et extrèmement rapide.
De même vérifier qu'une clé existe est directe :

```python
students = { 'alan' : 1, 'albert' : 2 , 'brice' : 3 }
print('albert' in students)
```

## Les dictionnaires présentation 4

La fonction map et le mot clé hash permet de voir les hash dans la structure de dictionnaire :

```python
students = { 'alan' : 1, 'albert' : 2 , 'brice' : 3 }
print('albert' in students)
```

Dans un tableau de hash on implémente une fonction f(key,dict) permettant d'accéder directement à 
une valeur du dictionnaire. Notons que la fonction de hash de Python est très rapide.

```python
students = { 'alan' : 1, 'albert' : 2 , 'brice' : 3 }
for h in map(hash, students): 
    print(h) 
"""
1623984986049861657
-2969457881634950836
8552435218161168756
"""
```

Le constructeur dict permet de transformer une liste de tuples en dictionnaire :

```python
l = [('alan', 1), ('albert' ,2) , ('brice', 3) ]
lDic = dict(l)
```

### Opérations sur les dictionnaires

```python
students = { 'alan' : 1, 'albert' : 2 , 'brice' : 3 }
students['alan'] = 1001
students['alan'] # 1001
del students['alan'] # supprime cet clé/valeur
students.keys() # transforme les clés en liste
```

## Les tuples 1
 Les tuples sont un autre type natif dit de séquence comme les listes et les dictionnaires, les tuples sont non modifiables (non mutable), ils n'ont pas de méthode. 
 Un tuple est donc protégé en écriture. C'est un tableau de hash donc rapide pour l'accès et le parcours de ses éléments. Comme il est non mutable on peut l'utiliser comme clé d'une liste par exemple. On rappelle qu'une clé d'une liste doit être non mutable.

```python
# définition d'un tuple
t = 'a', 'b', 'c'
```

- Ils peuvent être imbriqués :

```python
# définition d'un tuple
t = 'a', 'b', 'c'
u = t, (1,2,4)
print(u)
# ('a', 'b', 'c', (1,2,4))
```

Notez que souvent on utilisera des parenthèses pour définir un tuple par exemple : (1,2,3). Dans certains cas ils seront nécessaires, comme les tuples imbriqués.

## Les tuples 2
 On peut accéder à une valeur d'un tuple mais on ne peut pas modifier une de ses valeurs :

```python
# définition d'un tuple
t = 1, 2
# accès
t[0]
```

Par contre un tuple est immuable donc on peut pas ré-assigner une valeur

```python
# définition d'un tuple
t = 1, 2
# accès
t[0] = 8 # TypeError 'tuple' object does not support item assigment
```

## Les tuples 3
Déballage de séquence. L'opération suivante permet de déballer des valeurs d'un tuple dans des variables :

```python
t = ('a', 'b', 'c')
x,y,z = t
```

### 01 Exercice Matrix zip

Reprendre la matrice précédente et à l'aide de la fonction native **zip** et de l'opérateur de déballage * essayez de transposer cette matrice.

```python
matrix = [
    [1, 2, 3, 4, 5],
    [6, 7, 8, 9, 10],
    [11, 12, 13, 14, 15],
 ]
 ```

- La fonction zip 

```python
languages = ['JS', 'Python', 'PHP'] 
versions = [6, 3, 8] 
res = zip(languages, versions)
print(list(res))
#[('JS', 6), ('Python', 3), ('PHP', 8)]
 ```

 - Déballage ou unpacking en Python

 ```python
 x, *y = [100, 200, 300]  
 print(x)
 # 100
 print(y)
 # [200, 300]
 ```

## Les ensembles 1

Python fournit également un type de donnée pour les ensembles. Un ensemble est une collection non ordonnée sans élément dupliqué. 
Les ensembles supportent les opérations mathématiques comme les unions, intersections, différences et différences symétriques. 
Pour définir un ensemble on peut utiliser les accolades mais attention on ne peut pas définir un ensemble vide comme suit {} (dans ce cas cela définit un dictionnaire).

Pour définir un ensemble vide on utilisera la déclaration Python suivante : set().

```python
a =set('aaabbbccc')
print(a)
# {'b', 'a', 'c'}
```

Sur les ensembles différence :

```python
A = {'b', 'a', 'c'}
B = {'r', 'c'}
print(A-B)
# {'b', 'a'}
```

Sur les ensembles union :

```python
A = {'b', 'a', 'c'}
B = {'r', 'c'}
print(A|B)
# {'r', 'b', 'a', 'c'}
```

Sur les ensembles intersecion :

```python
A = {'b', 'a', 'c'}
B = {'r', 'c'}
print(A&B)
# {'c'}
```

A ou B mais pas les deux 

```python
A = {'b', 'a', 'c'}
B = {'r', 'c'}
print(A^B)
# {'b', 'r', 'a'}
```

Les compréhensions de liste peuvent être utiliser sur les ensembles

```python
a = { x for x in "abbbbbcccrrreee"  }
# {'a', 'b', 'c', 'e', 'r'}
```

- Itération sur les listes et les dictionnaires


## 02 Exercice population

Récupérez les données dans l'énoncé de l'exercice ci-après.

Modifiez la liste populations pour ajouter les relations (liste relationships) de chaque user de cette population, vous pouvez par exemple
ajoutez une clé "relation" ainsi qu'une liste vide dans un premier temps. Puis placez les relations de chaque user dans la liste populations.
1. Calculer la moyenne des relations.

2. Créez une liste représentant les users (id) et le nombre de relation(s) qu'ils possèdent. Et retournez l'utilisateur qui possède le plus de relation(s).
3. Trouvez les amis des amis de chaque utilisateur. 
4. En utilisant set sur une liste cela permet de supprimer les doublons, vous obtenez alors un ensemble. Retournez une liste sans doublon.

```python

populations = [
    { "id" : 0, "name" : "Alan" },
    { "id" : 1, "name" : "Albert" },
    { "id" : 2, "name" : "Jhon" },
    { "id" : 3, "name" : "Brice" },
    { "id" : 4, "name" : "Alexendra" },
    { "id" : 5, "name" : "Brad" },
    { "id" : 6, "name" : "Carl" },
    { "id" : 7, "name" : "Dallas" },
    { "id" : 8, "name" : "Dennis" },
    { "id" : 9, "name" : "Edgar" },
    { "id" : 10, "name" : "Erika" },
    { "id" : 11, "name" : "Isaac" },
    { "id" : 12, "name" : "Ian" }
]

relationships = [
    (0,1), (0,2), (1,2), (1,4),(2,3), (2,5),
    (3,4), (3,7), (4,5),(4,8), (4,9), (5,7),
    (5,9), (6,7), (6,8), (7,1), (7,8), (8,9),
    (10,1),(10,2),(10,3),(11,12),(11,2),(11,5)
]
```

## 03 Exercice level

Soit les deux listes suivantes : students et levels ces deux listes sont de même longueur et correspondent respectivement aux noms des étudiants et à leur niveau d'étude, à l'aide de la fonction zip et d'une itération affichez le nom et le niveau de chaque étudiant.

```python
students = [
    "Alan",
    "Albert",
    "Jhon",
    "Brice",
    "Alexendra",
    "Brad",
    "Carl",
    "Dallas",
    "Dennis",
    "Edgar",
     "Erika",
     "Isaac",
    "Ian" 
]

levels = [4,2,3,5,7,8,2,6,4,3,5]
```

## 04 Exercice center

Ecrire une fonction qui retourne tous les utilisateurs qui partagent le même centre d'intérêt.

```python

populations = [
    { "id" : 0, "name" : "Alan" },
    { "id" : 1, "name" : "Albert" },
    { "id" : 2, "name" : "Jhon" },
    { "id" : 3, "name" : "Brice" },
    { "id" : 4, "name" : "Alexendra" },
    { "id" : 5, "name" : "Brad" },
    { "id" : 6, "name" : "Carl" },
    { "id" : 7, "name" : "Dallas" },
    { "id" : 8, "name" : "Dennis" },
    { "id" : 9, "name" : "Edgar" },
    { "id" : 10, "name" : "Erika" },
    { "id" : 11, "name" : "Isaac" },
    { "id" : 13, "name" : "Brice" },
    { "id" : 14, "name" : "Alice" },
    { "id" : 15, "name" : "Sophia" },
    { "id" : 16, "name" : "Rasmus" },
    { "id" : 18, "name" : "Taylor" },
    { "id" : 19, "name" : "Olivia" },
    { "id" : 20, "name" : "Jessica" },
    { "id" : 21, "name" : "Anna" },
    { "id" : 22, "name" : "Samantha" },
    { "id" : 23, "name" : "Grace" },
    { "id" : 24, "name" : "Anna" },
    { "id" : 25, "name" : "Alexis" },
    { "id" : 26, "name" : "Madison" },
    { "id" : 27, "name" : "Nicole" },
    { "id" : 28, "name" : "Amanda" },
    { "id" : 29, "name" : "Haley" }  
]

centers = [
    (0, 'PHP'), (0, 'MySQL'), (0, 'Angular'), (1, 'MySQL'), (2, 'Python'), (3, 'PHP'), (4, 'PHP'), 
    (5, 'Angular'), (6, 'Vuejs'), (7, 'Angular'), (8, 'Big data'), (9, 'PHP'), 
    (10, 'Angular'), (10, 'NoSQL'), (11, 'NoSQL'), (12, 'Angular'), (13, 'Angular'), (14, 'Angular'), 
    (15, 'Angular'), (16, 'Angular'), (17, 'PHP'), (18, 'PHP'), (19, 'PHP'), (19,'Angular'), (19, 'Python'),
    (20, 'Python'), (21, 'Python'), (22, 'Python'), (23, 'Python'), (24, 'PHP'), 
    (25, 'NoSQL'), (26, 'NoSQL'), (27, 'Big data'), (28, 'NoSQL'), (29, 'Angular'), (29, 'PHP'), (29,'Big data')
]

"""
Ecrire une fonction qui trouve les utilisateurs partageant le même centre d'intérêt
"""
```

## 05 Exercice mississippi

Soit la chaîne de caractères suivante : "mississippi" compter le nombre de lettre dans une liste de tuple.
