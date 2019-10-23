
MongoDB Compas kurulabilir.  

> mongod   
> mongod --dbpath /home/eteration/Desktop/data/db  
> mongo  
> mongoimport --db test --collection restaurants --drop --file /home/eteration/Desktop/dataset.json  

> mongorestore dump


> show dbs  
> use test  
> show collections  

> db.restaurants.find().count()  
> db.restaurants.insert( { "address" : { "street" : "2 Avenue", "zipcode" : "10075", "building" : "1480", "coord" : [ -73.9557413, 40.7720266 ], }, "borough" : "Manhattan", "cuisine" : "Italian", "grades" : [ { "date" : ISODate("2014-10-01T00:00:00Z"), "grade" : "A", "score" : 11 }, { "date" : ISODate("2014-01-16T00:00:00Z"), "grade" : "B", "score" : 17 } ], "name" : "Vella", "restaurant_id" : "41704620" } )   

> db.restaurants.find( { "cuisine": "Italian", "address.zipcode": "10075" } ).limit(1).pretty()  
> db.restaurants.remove({"restaurant_id" : "41156888"} )  
> db.restaurants.update( { "address.zipcode": "10016", cuisine: "Other" }, { $set: { cuisine: "Category To Be Determined" }, $currentDate: { "lastModified": true } }, { multi: true} )    

> db.restaurants.aggregate( [ { $group: { _id: "$cuisine", total: { $sum: 1 } } }, { $match: { total: { $gte: 700 } } } ] )   
> db.restaurants.aggregate( [ { $group: { "_id": "$borough", "count": { $sum: 1 } } } ] );    
> db.restaurants.createIndex( { "cuisine": 1 } )   
> db.restaurants.find({cuisine:"Italian"}).explain()     

.limit(1).pretty()  
.count()

> npm i mongoose -g  

