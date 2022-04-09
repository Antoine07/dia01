# MapReduce

C'est un pattern permettant de mapper une collection en appliquant un calcul d'agrégation sur une partie d'un item dans une collection.

Considérons la collection orders et ajoutons dans cette collection les valeurs suivantes :

```js

use products

db.createCollection('orders')

db.orders.insertMany( [
   { cust_id : "A123", amount : 500, status : "A" },
   { cust_id : "A123", amount : 250, status : "A" },
   { cust_id : "A123", amount : 200, status : "A" },
   { cust_id : "A123", amount : 300, status : "B" },
   { cust_id : "B123", amount : 500, status : "A" },
   { cust_id : "B123", amount : 250, status : "A" },
   { cust_id : "B125", amount : 200, status : "A" },
   { cust_id : "B126", amount : 300, status : "B" },

]);

```

Une fois que vous avez exécuté cette commande la collection **map_reduce_total** sera créée.

```js

db.orders.mapReduce(
    function() { emit( this.cust_id, this.amount ) }, // map
    function(k, v) { return Array.sum(v)}, // reduce
    { 
        query : { status : "A" },
        out : "map_reduce_total"
    }
);

db.map_reduce_total.find()
/*
{ "_id" : "A123", "value" : 950 }
{ "_id" : "B123", "value" : 750 }
{ "_id" : "B125", "value" : 200 }
*/
```

Remarque si vous ne voulez pas créer de collection changez la valeur du out dans la requête comme suit :

```js
 out :{ inline: 1 }
 ```

## Récupération des données

Créez la base de données gym dans Mongo.

Puis dézipper le dossier suivant Gymase.zip sur votre poste. Ce dossier se trouve dans le dossier data sur le serveur Git.

Et enfin tapez les lignes de commande suivantes :

```bash
mongorestore -d gym -c gymnase Gymnases.bson
mongorestore -d gym -c sportif Sportifs.bson

# si vous avez un login/pass
 mongorestore --username root --password example --authenticationDatabase admin --db gym -c sportif Sportifs.bson
 mongorestore --username root --password example --authenticationDatabase admin --db gym -c gymnase Gymnases.bson

```

Et contrôlez que les données sont bien importées dans votre base de données gym dans Mongo :

```js
db.gymnase.count()
// 28
db.sportif.count()
// 150

// De même vérifier la structure
db.gymnase.findOne()
db.gymnase.count()
```

## 01 Exercices liste Gymnase & sportif

### 01 collection sportif

Calculez le nombre d'hommes et de femmes dans la collection sportif à l'aide du Pattern MapReduce.

## 02 nombre de sportif

Calculez le nombre de sportifs jouant pour chaque sport. 

### 03 nom des sportifs

Trouvez tous les noms des sportifs qui ne pratiquent pas de sport. Vous pouvez pour cela utiliser l'opérateur suivant :

```js
{ a : { $exists : false } }
```

Calculez le nombre de sportifs jouant pour chaque sport. Explorez la collection pour voir comment elle est structurée avant d'écrire un script avec le Pattern MapReduce pour répondre à cette question.

### 04 Gymnases 

- Calculez le nombre de gymnases pour chaque ville.

- Calculez le nombre de séances pour chaque jour de la semaine. De même pour chaque sport.

Nous allons maintenant reprendre le dataset restaurants

## 02 Exercice nombre de grade A dans la collection restaurant

Comptez le nombre de A par type de cuisine.

## 03 Exercice augmentation

Appliquez une augmenation de 10% pour chaque somme de groupe agrégé en fonction du cust_id, sur les ranges dont le status est A, en utilisant MapReduce

Indications : recréez ou mettez à jour la collection orders avec ce qui suit :

```js
db.orders.drop();

db.createCollection("orders");

db.orders.insertMany([
  { cust_id: "A123", amount: 500, status: "A", range: 11 },
  { cust_id: "A123", amount: 250, status: "A", range: 19 },
  { cust_id: "A123", amount: 200, status: "A", range: 1 },
  { cust_id: "A123", amount: 300, status: "B", range: 10 },
  { cust_id: "B123", amount: 500, status: "A", range: 17 },
  { cust_id: "B123", amount: 250, status: "A", range: 15 },
  { cust_id: "B125", amount: 200, status: "A", range: 19 },
  { cust_id: "B126", amount: 300, status: "B", range: 20 },
]);

```

## 04 Exercice meilleurs restaurants

Trouvez les meilleurs restaurants en utilisant le framework MapReduce.