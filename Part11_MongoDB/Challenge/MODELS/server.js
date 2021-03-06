"use strict";
const express = require("express");
const cors = require('cors');
const app = express();
const port = 3001;

app.use(cors());
app.set('view engine', 'ejs');

// MONGODB
const MongoClient = require('mongodb').MongoClient;
const uri = 'mongodb://localhost:27017';
const dbName = 'ny';
const collectionName = 'restaurants';
const client = new MongoClient(uri);

// Async pour attendre la connexion avant de faire quoique se soit
async function requestMongo(
  restriction = {},
  proj = { _id: 0, name: 1 },
  limit = 10) {
  try {
    await client.connect();
    await client.db("admin").command({ ping: 1 });
    console.log("Connected successfully to server");

    const db = await client.db(dbName);
    const collection = await db.collection(collectionName);
    // attention à la syntaxe pour faire votre requête
    const docs = await collection.find(restriction, {
      projection: proj
    }).limit(limit).toArray();

    return docs;
  } finally {
    // Ensures that the client will close when you finish/error
    await client.close();
    console.log('disconnect');
  }
}

async function requestMongoAggregate() {
  try {
    await client.connect();
    const db = await client.db(dbName);
    const collection = await db.collection(collectionName);

    const pipeline = [
      { $match: { borough: "Bronx" } },
      { $group: { _id: "$cuisine", count: { $sum: 1 } } }
    ];
    const aggCursor = await collection.aggregate(pipeline).toArray()

    return aggCursor;
  } finally {
    await client.close();
    console.log('disconnect');
  }
}

app.use(express.json())
app.get("/", (req, res) => {
  requestMongo()
    .then(docs => res.render('index', { restaurants: docs }))
    .catch(err => res.send({ err }));
});

app.get("/best", (req, res) => {
  requestMongo()
    .then(docs => res.render('index', { restaurants: docs }))
    .catch(err => res.send({ err }));
});

app.get('/a', (req, res) => {
  return res.send({ a : 1 })
  requestMongoAggregate.then(docs => {
    res.send({docs})
  }).catch(err => res.send({err}))

})

app.listen(port, () => {
  console.log(`http://localhost:${port}`);
});
