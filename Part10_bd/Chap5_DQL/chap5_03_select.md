# Sous-requêtes

## Sous interogations multilignes IN

- IN compare un élément à une donnée quelconque d'une liste ramenée par sous-interogations.

Vous pouvez effectuer en MySQL des sous-requêtes, attention cependant à mettre celles-ci dans des paranthèses, elles ne doivent pas comporter de clause ORDER BY :

```sql

SELECT colonne(s) FROM mytable1
WHERE colonne(s) IN (
  SELECT colonne(s) FROM mytable2
)
```

**Attention à la directive NOT IN, car elle retourne faux si un membre ramené par la sous-interrogation est NULL. Les atlernatives aux directives IN et NOT IN sont par exemple les JOINTURES.**

## Clause ALL

Cette commande s’utilise dans une clause conditionnelle entre l’opérateur de condition et la sous-requête. L’exemple ci-dessous montre un exemple basique :

Cette clause s'utilise dans une sous-requête de manière identique à la clause IN. Elle permet de comparer une valeur dans l'ensemble de valeurs d'une sous-requête.

Ajoutez les données suivantes dans la table compagnies.

```sql

UPDATE compagnies
SET street = 'Shenton Park',
 city = 'Perth', 
 numStreet=20
WHERE comp = 'AUS';

UPDATE compagnies
SET street = 'Rue de la Lieure',
 city = 'Voiron',
  numStreet=11
WHERE comp = 'FRE1';

UPDATE compagnies
SET street = 'Qinghai',
 city = 'Xian de Tongde',
  numStreet=17
WHERE comp = 'CHI';

UPDATE compagnies
SET street = 'Marymount',
 city = 'Singapour',
  numStreet=1
WHERE comp = 'SIN';
```

## 01 Exercice liste

- 1. Quelles sont les coordonnées des compagnies qui employe(nt) des pilotes faisant moins de 90 heures de vols ?

- 2. Sélectionnez le pilote ayant fait le plus d'heures de vol sans utiliser l'opérateur MAX. Puis sélectionnez les nombres d'heures de vol sauf le plus grand.

- 3. Faites la somme des heures de vols des pilotes dont le nom de la compagnie est Air France, vous ne connaissez pas bien sûr la clef primaire de la compagine.

- 4. Ajoutez maintenant la compagnie suivante dans la table compagnies :

comp = ITA, street = mapoli, city = Rome, name = Italia Air, numStreet =  20

Trouvez toute(s) les/la compagnie(s) n'ayant pas de pilotes.

- 5. Sélectionnez tous les pilotes dont le nombre d'heures de travail est inférieur à tous les nombres d'heures de travail de la compagnie CHI.

- 6. Sélectionnez la longueur des noms des pilotes dont la longueur de leurs noms est inférieur à toutes les longueurs des noms de la compagny FRE1.

- 7. Sélectionnez les coordonnées des compagnies dont le nombre d'heures de vol est inférieur à tous les nombres d'heures de vol (chaque heure de vol) des A380. Ajoutez la colonne plane et les données suivantes dans la table pilotes.

```sql

ALTER TABLE pilots
ADD COLUMN plane
ENUM('A380', 'A320', 'A340') AFTER name;

UPDATE pilots
SET plane = 'A380'
WHERE name in ('Alan', 'Sophie', 'Albert', 'Benoit');

UPDATE pilots
SET plane = 'A320'
WHERE name in ('Tom', 'Jhon', 'Pierre');

UPDATE pilots
SET plane = 'A340'
WHERE name in ('Yan', 'Yi');
```

## Sous-requête corrélées avec l'opérateur EXIST

Une sous-requête corrélée est une sous-requête qui contient une référence à une colonne qui est dans une requête différente.

Une sous-requête fait des appels en boucle, il faudra donc faire attention à son utilisation qui peut entrainer des temps d'exécution importants.

Très souvent la sous-requête corrélée est utiliser avec un test d'existance : opérateur EXIST :

```sql
SELECT * FROM t1 WHERE column1 EXIST
       (SELECT 1 FROM t2 WHERE t2.column2 = t1.column2);
```

### 02 Exercice sous-requête correlée

Ajoutez un champ last_name dans la table pilots.

Et ajoutez les noms suivants

+--------+-----------+
| name   | last_name |
+--------+-----------+
| Alan   | Dupont    |
| Tom    | Lu        |
| Yi     | Dupont    |
| Sophie | Dupont    |
| Albert | Pierre    |
| Yan    | chai      |
| Benoit | chai      |
| Jhon   | chai      |
| Pierre | chai      |
+--------+-----------+

- 1. Sélectionnez les adresses compagnies qui n'ont pas de pilot en utilisant un sous-requête corrélée.

- 2. Sélectionnez les adresses compagnies qui ont des pilots en utilisant un sous-requête corrélée.

- 3. Sélectionnez les pilots qui ont le même nom de famille  en utilisant un sous-requête corrélée. Trouvez deux écriture à cette requête.