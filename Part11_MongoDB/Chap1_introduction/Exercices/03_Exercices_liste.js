//  Liste d'Exercices
/**
 * 01. Combien y a t il de restaurants qui font de la cuisine italienne et qui ont eu un score de 10 au moins ?
 */

db.restaurants.find({ cuisine: "Italian", "grades.score": 10 }).count();
db.restaurants.find({ $and : [ { cuisine: "Italian"}, {"grades.score": {$gt : 10 } } ] } ).count();

// { "content": { $elemMatch: { "name": "Turing Award", "year": { $gt: 1980 } } } }

/*
"name" : "Piccola Venezia",
        "restaurant_id" : "40367540"
*/
// 
db.restaurants.find({ grades: { $elemMatch:  {score : {$gte : 28 }, grade : "C"} }  }, { _id : 0, grades : 1} )

// TODO à voir comment faire ce point technique qui serait de n'avoir que des documents dont le score serait supérieur à 29

db.restaurants.find( { 
  
  "grades.score" :  {$not : {$lte : 28} } 

}, { _id : 0, grades : 1, name: 1} ).pretty()

