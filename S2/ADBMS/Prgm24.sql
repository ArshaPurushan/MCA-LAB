 Create database Vehicle in MONGODB and make Collection with name "VehicleDetails"

	> use vehicle
	switched to db vehicle
	> db
	vehicle
	> db.createCollection("VehicleDetails")
	{ "ok" : 1 }
	> show collections
	VehicleDetails

 a. Insert Records into VechicleDetails Collection

	>  db.VehicleDetails.insertMany([{regno:"BRG446",make:"Ford",model:"Meteor",year:2009,color:"White"},
	{regno:"VRG655",make:"BMW",model:"Coupe",year:2008,color:"Blue"},
	{regno:"NMT667",make:"Madza",model:"Delivery Van",year:2010,color:"Green"},
	{regno:"CCT899",make:"Toyota",model:"HiLuke",year:2009,color:"Red"},
	{regno:"FGR122",make:"Mitsubishi",model:"Magna",year:2007,color:"purple"}])

	{
		"acknowledged" : true,
		"insertedIds" : [
			ObjectId("668659cc174ede311995bd05"),
			ObjectId("668659cc174ede311995bd06"),
			ObjectId("668659cc174ede311995bd07"),
			ObjectId("668659cc174ede311995bd08"),
			ObjectId("668659cc174ede311995bd09")
		]
	}

 b. List all the details of Vehicle in a neat format.

	> db.VehicleDetails.find().pretty()

	{
		"_id" : ObjectId("668659cc174ede311995bd05"),
		"regno" : "BRG446",
		"make" : "Ford",
		"model" : "Meteor",
		"year" : 2009,
		"color" : "White"
	}
	{
		"_id" : ObjectId("668659cc174ede311995bd06"),
		"regno" : "VRG655",
		"make" : "BMW",
		"model" : "Coupe",
		"year" : 2008,
		"color" : "Blue"
	}
	{
		"_id" : ObjectId("668659cc174ede311995bd07"),
		"regno" : "NMT667",
		"make" : "Madza",
		"model" : "Delivery Van",
		"year" : 2010,
		"color" : "Green"
	}
	{
		"_id" : ObjectId("668659cc174ede311995bd08"),
		"regno" : "CCT899",
		"make" : "Toyota",
		"model" : "HiLuke",
		"year" : 2009,
		"color" : "Red"
	}
	{
		"_id" : ObjectId("668659cc174ede311995bd09"),
		"regno" : "FGR122",
		"make" : "Mitsubishi",
		"model" : "Magna",
		"year" : 2007,
		"color" : "purple"
	}

	   
 c. Find Document From the VehicleDetails collection where make begins with T
    
	> db.VehicleDetails.find({"make": /^T/})

	{ "_id" : ObjectId("668659cc174ede311995bd08"), "regno" : "CCT899", "make" : "Toyota", "model" : "HiLuke", "year" : 2009, "color" : "Red" }
	    

 d. Update Colour Of vehicle to Blue whose RegNo is  FGR122 
    
	> db.VehicleDetails.updateOne(
	... {regno:"FGR122"},
	... {$set:{color:"Blue"}}
	... );

	{ "acknowledged" : true, "matchedCount" : 1, "modifiedCount" : 1 }
	    
 e. Add a New Field EngineNo to document with name "EnNo" 
    
	> db.VehicleDetails.updateMany({}, {$set: {"EngineNo": null}})

	{ "acknowledged" : true, "matchedCount" : 5, "modifiedCount" : 5 }
	   
	   
 f. Find total number of vehicles manufactured in the year 2009.
 
	> db.VehicleDetails.count({year:2009})
	2
   
 g. Delete a document having RegNo BRG446.

	> db.VehicleDetails.deleteOne({regno:"BRG446"})
	{ "acknowledged" : true, "deletedCount" : 1 }

 h. Create a user with name “Ram” and give read role to the user for Vehicle database.
   
	> db.createUser({
	...   user: "Ram",
	...   pwd: "123",
	...   roles: [
	...     {
	...       role: "read",
	...       db: "Vehicle"
	...     }
	...   ]
	... });


	Successfully added user: {
		"user" : "Ram",
		"roles" : [
			{
				"role" : "read",
				"db" : "Vehicle"
			}
		]
	}

