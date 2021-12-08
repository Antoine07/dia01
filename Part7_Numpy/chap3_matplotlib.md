# Matplotlib

Matplotlib permet de générer des graphiques dans l'univers Python.

Pour créez des graphiques il existe deux méthodes : fonctionnelle ou objet.


## Approche fonctionnelle

Pour tracer une courbe simple on utilise plot et show

```python
import matplotlib.pyplot as plt
plt.plot([1, 2, 3, 4])
plt.ylabel('some numbers')
plt.show()
```

la fonction plot permet de réunir des points qui seront pas la suite tracés sur un graphique.

```python
plt.plot([1, 2, 3, 4], [1, 4, 9, 16])
```

Vous pouvez définir des valeurs pour les axes, notez l'option ro affichera des cercles rouges.

```python
plt.plot([1, 2, 3, 4], [1, 4, 9, 16], 'ro')
# définir des valeur pour les axes x et y respectivement
plt.axis([0, 6, 0, 20]) 
plt.show()
```

Vous pouvez également tracez plusieurs graphiques en même temps

```python
import numpy as np

# evenly sampled time at 200ms intervals
t = np.arange(0., 5., 0.2)

# red dashes, blue squares and green triangles
plt.plot(t, t, 'r--', t, t**2, 'bs', t, t**3, 'g^')
plt.show();
```

## Définir l'environnement de travail

```python
import matplotlib.pyplot as plt
plt.style.use('seaborn-whitegrid');
```

## Exemple tracer une fonction

```python
fig = plt.figure()
ax = plt.axes()
```

- fig est un conteneur, c'est un objet qui contient : axes, labels, données, ..

Il faut importer également Numpy et tracer la fonction à l'aide de valeurs :

```python
import numpy as np

fig = plt.figure()
ax = plt.axes()
x = np.linspace(0, 10, 1_000)
# le point virgule permet d'afficher le resultat dans un Notebook
ax.plot(x, np.sin(x));
```

Vous pouvez styliser un graphique 

```python
plt.plot(x, np.sin(x - 1), color='blue', linestyle='solid', label='bleu')
```

Définir également les limites des axes

```python
plt.axis([-1, 11, -1.5, 1.5]);

plt.axis([-1, 11, -1.5, 1.5]);

# Label
plt.title("Un exemple de graphe")
# Placement de la légende
plt.legend(loc='lower left');

# Titres des axes
ax = ax.set(xlabel='x', ylabel='sin(x)')
```

## L'approche fonction : plot

```python
import matplotlib.pyplot as plt
import numpy as np
# meme dimension pour x et y 
 x = np.linspace(0,2, 10)
 y = x**2

plt.plot(x, y);
# plt.show()
```

On peut également afficher un nuage de point avec la fonction scatter

```python
plt.scatter(x, y);
```

- Pour le style on a beaucoup de possiblité

c : couleur "red", "black"
lw : épaisseur de ligne 
ls : -- pour des tirets

## Notion importante

```python
# figure définir la taille
plt.figure(figsize=(12,8))
```

On peut ajouter d'autres figures sur l'objet figure.

On peut également ajouter un titre, des noms pour les axes :

```python
plt.plot(x, x**2, label="quadratique")
plt.plot(x, x**3, label="cubique")

plt.title('Figure 1')
plt.xlabel('axe x')
plt.ylabel('axe y')
# légende il faut les définir dans la fonction plot avant
plt.legend()
plt.show()
# sauvegarde de la figure 
plt.savefig('f.png')
```

On peut également créer d'autres figures qui s'afficheront à la suite dans votre Notebook.

```python
plt.figure(figsize=(12,8))
plt.plot(x, x**5)
```

## Plusieurs graphiques sur une même grille

Deux graphiques

subplot(nrows, ncols, index, **kwargs)

```python
# création de la figure
plt.figure()
# grille
plt.subplot(2,1,1)
plt.plot(x, x**2, c="red")
plt.subplot(2,1,2)
plt.plot(x, x**3, c="blue")
```

## Méthode orienté 

Voici un exemple de l'approche objet, nous y reviendrons plus tard, l'approche fonctionnelle est pour l'instant suffisante pour les besoins de nos analyses de données.

```python
fig, ax = plt.subplots(2,1 sharex=True)
ax[0].plot(x, x)
ax[1].plot(x, x**2)
plt.show()
```

## 01 Exercice plusieurs graphiques

Soit le dataset suivant créez les graphiques de chaque valeurs aléatoire.

```python
dataset = {f"e{i}" : np.random.randn(100) for i range(3)  }
```

## Fleurs d'Iris de Fisher

Nous allons travailler avec un dataset connu sur les fleurs d'Iris.

Quatre caractéristiques ont été mesurées à partir de chaque échantillon : la longueur et la largeur des sépales et des pétales.

Il y a 150 mesures pour 3 catégories de fleures d'Iris (target). Chaque Iris comporte 4 critères de mesure pour les sépales et pétales

Import du dataset.

```python
import numpy as np
import matplotlib.pyplot as plt
from sklearn.datasets import load_iris

iris = load_iris()

# longueur/largeur des sépales et pétales
x = iris.data
y = iris.target
```

## plt.scatter

On peut par exemple étudier la première variable et la deuxième variable : longueur et largeur du premier critère sépale.

```python

plt.scatter(x[:,0], x[:,1])

```

Et vous pouvez également préciser la target (3 critères) en troisième paramètre. Si on ajoute s pour la taille on peut définir des points qui seront fonction de la taille de la longueur du pétale. Les disques seront proportionnels à leurs longueurs.

```python
plt.scatter(x[:,0], x[:,1], c=y, alpha=0.8, s=x[:,2]*100)
plt.xlabel("Longueur sépale")
plt.ylabel("largeur sépale")
```


## Diagramme avec des variables catégorielles


```python
names = ['group_a', 'group_b', 'group_c']
values = [1, 10, 100]

plt.figure(figsize=(9, 3))

plt.subplot(131)
plt.bar(names, values)
plt.subplot(132)
plt.scatter(names, values)
plt.subplot(133)
plt.plot(names, values)
plt.suptitle('Categorical Plotting')
plt.show()
```