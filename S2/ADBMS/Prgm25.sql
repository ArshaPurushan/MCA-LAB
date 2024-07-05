 Create database Book in MONGODB and make Collection with name "BookDetails"           
 
                                                                               
> use book
switched to db book
> db.createCollection("BookDetails")
{ "ok" : 1 }
> db.createCollection("BookDetails")
             

    a. Insert Records into BookDetails Collection
    
> db.BookDetails.insertMany([ {no:1,title:"data structure",author:"Lipschute",subject:"DS",publisher:"McGraw",Quantity:4,price:217},{no:2,title:"DOS guide",author:"nortron",subject:"OS",publisher:"PHI",Quantity:3,price:175},{no:3,title:"Turbo c++",author:"Robert lafore",subject:"Prog",publisher:"Galgotia",Quantity:5,price:270},{no:4,title:"Dbase Dummies",author:"Palmer",subject:"DBMS",publisher:"PustakeM",Quantity:7,price:130},{no:5,title:"Mastering Windows",author:"cowart",subject:"OS",publisher:"BPB",Quantity:1,price:225} ])


{
	"acknowledged" : true,
	"insertedIds" : [
		ObjectId("668666c5e5f354cb068cf214"),
		ObjectId("668666c5e5f354cb068cf215"),
		ObjectId("668666c5e5f354cb068cf216"),
		ObjectId("668666c5e5f354cb068cf217"),
		ObjectId("668666c5e5f354cb068cf218")
	]
}

    
    
    b. List all the details of Vehicle in a neat format.

> db.BookDetails.find().pretty()
{
	"_id" : ObjectId("668666c5e5f354cb068cf214"),
	"no" : 1,
	"title" : "data structure",
	"author" : "Lipschute",
	"subject" : "DS",
	"publisher" : "McGraw",
	"Quantity" : 4,
	"price" : 217
}
{
	"_id" : ObjectId("668666c5e5f354cb068cf215"),
	"no" : 2,
	"title" : "DOS guide",
	"author" : "nortron",
	"subject" : "OS",
	"publisher" : "PHI",
	"Quantity" : 3,
	"price" : 175
}
{
	"_id" : ObjectId("668666c5e5f354cb068cf216"),
	"no" : 3,
	"title" : "Turbo c++",
	"author" : "Robert lafore",
	"subject" : "Prog",
	"publisher" : "Galgotia",
	"Quantity" : 5,
	"price" : 270
}
{
	"_id" : ObjectId("668666c5e5f354cb068cf217"),
	"no" : 4,
	"title" : "Dbase Dummies",
	"author" : "Palmer",
	"subject" : "DBMS",
	"publisher" : "PustakeM",
	"Quantity" : 7,
	"price" : 130
}
{
	"_id" : ObjectId("668666c5e5f354cb068cf218"),
	"no" : 5,
	"title" : "Mastering Windows",
	"author" : "cowart",
	"subject" : "OS",
	"publisher" : "BPB",
	"Quantity" : 1,
	"price" : 225
}
   
    
    
    c. Update Author of book  to “David” whose No is  2 

> db.BookDetails.updateOne(
... {no:2},
... {$set:{author:"David"}}
... );
{ "acknowledged" : true, "matchedCount" : 1, "modifiedCount" : 1 }

   
    
    d. Find total quantity of books in the library.

> db.BookDetails.aggregate( {$match:{}},{ $group:{ _id:"quqntity",sum: { $sum:"$Quantity" } } } )
{ "_id" : "quqntity", "sum" : 20 }

    
    e. Delete a document having No is 4

> db.BookDetails.deleteOne( {no:4} )
{ "acknowledged" : true, "deletedCount" : 1 }

    
    f. Create a user with name “Ram” and give read role to the user for Book database.

> db.createUser({
... ...   user: "Ram",
... ...   pwd: "123",
... ...   roles: [
... ...     {
... ...       role: "read",
... ...       db: "book"
... ...     }
... ...   ]
... ... });
Successfully added user: {
	"user" : "Ram",
	"roles" : [
		{
			"role" : "read",
			"db" : "book"
		}
	]
}

