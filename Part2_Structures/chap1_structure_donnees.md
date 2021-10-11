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

## 01 Exercice mississippi

Soit la chaîne de caractères suivante : "mississippi" compter le nombre de lettre(s) dans une liste de tuple de chaque lettre.

## 02 Entiers inversés

Nous souhaitons créer une fonction qui permet d'inverser des entiers signés ou non :

-6523 donnerait -3256 par exemple.

Utilisez les notions du cours pour créer cette fonction. Notamment pensez à caster vos données afin de pouvoir utiliser d'autres fonctions.

## 03 Calculez la longueur moyenne

1. Créez une fonction qui donne la longueur moyenne des mots dans une phrase. Utilisez la fonction split sur une chaîne de caractères pour transformer la chaîne en tableau.

Remarques pour retirer les caractères de ponctuation dans la phrase vous pouvez utiliser le code suivant basé sur les expressions régulières :

```python
import re
s = "Hello World ?"
s = re.sub(r'[^\w\s]i','',s) # \w caractère \s espace i insensible à la casse
```
Une autre fonction Python peut également être utile, permettant de remplacer certain(s) caractère(s) par autre chose :

```python
"Bonjour 'tout' le monde".replace("'", "")
```

Extrait d'un article de Wikipédia (Python) :

```python
phrase = "Le langage Python est placé sous une licence libre proche de la licence BSD6 et fonctionne sur la plupart des plates-formes informatiques, des smartphones aux ordinateurs centraux7, de Windows à Unix avec notamment GNU/Linux en passant par macOS, ou encore Android, iOS, et peut aussi être traduit en Java ou .NET. Il est conçu pour optimiser la productivité des programmeurs en offrant des outils de haut niveau et une syntaxe simple à utiliser."
```

2. (facultatif) Quel est le mot ou particule qui apparait/ssent le plus dans le texte ?