


```js
// 1 Compter le total d'homme et de femme
db.sportif.aggregate(
    { $unwind: "$Sexe"},
    { $project: { emits: { key:"Sexe", value: 1 } } },
    { $group: { _id: null, count: { $sum: 1 } } }
);

// Compter séparemment les hommes et les femmes à l'aide de l'aggrégation
db.sportif.aggregate([
    {
       $project:
         {
           Sexe: { $toUpper: "$Sexe" }
         }
     },
    { $group: { _id: "$Sexe", count: { $sum: 1 } } }
]);