# Etude de données en Python

## Partie 1 population

Récupérez les données dans l'énoncé de l'exercice ci-après.

1. Modifiez la liste populations pour ajouter les relations (liste relationships) de chaque user de cette population, vous pouvez par exemple ajoutez une clé "relation" ainsi qu'une liste vide dans un premier temps. Puis placez les relations de chaque user dans la liste populations en utilisant relationships.

2. Calculer la moyenne des relations.

3. Créez une liste représentant les users (id) et le nombre de relation(s) qu'ils possèdent. Et retournez l'utilisateur qui possède le plus de relation(s).

4. Trouvez les amis des amis de chaque utilisateur. 


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

---- Le reste est facultatif mais si vous avez le temps faites la

## Partie 2 level (facultative)

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

## Partie 3 (facultative) 

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
```

