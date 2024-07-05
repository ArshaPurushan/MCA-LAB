       Create database Student in MONGODB and make Collection with name "StudentDetails"                                                                                                   
 
 
 
a. Insert Records into StudentDetails Collection
 
	>db.StudentDetails.insertMany([
	...     { rollno: 101, name: "Anna", age: 20, course: "MCA" },
	...     { rollno: 102, name: "Catherine", age: 21, course: "MTECH" },
	...     { rollno: 103, name: "Denna", age: 22, course: "BTECH" },
	...     { rollno: 104, name: "Sam", age: 25, course: "MCA" },
	...     { rollno: 105, name: "Karthik", age: 24, course: "MCA" },
	...     { rollno: 106, name: "Aravind", age: 20, course: "MCA" }
	... ]);
 
 
b. List all the details of Students in a neat format.
 
 
	>db.StudentDetails.find().pretty()
	 
	{
		"_id" : ObjectId("66865ba2e6abaf317873e9ff"),
		"rollno" : 101,
		"name" : "Anna",
		"age" : 20,
		"course" : "MCA"
	}
	{
		"_id" : ObjectId("66865ba2e6abaf317873ea00"),
		"rollno" : 102,
		"name" : "Catherine",
		"age" : 21,
		"course" : "MTECH"
	}
	{
		"_id" : ObjectId("66865ba2e6abaf317873ea01"),
		"rollno" : 103,
		"name" : "Denna",
		"age" : 22,
		"course" : "BTECH"
	}
	{
		"_id" : ObjectId("66865ba2e6abaf317873ea02"),
		"rollno" : 104,
		"name" : "Sam",
		"age" : 25,
		"course" : "MCA"
	}
	{
		"_id" : ObjectId("66865ba2e6abaf317873ea03"),
		"rollno" : 105,
		"name" : "Karthik",
		"age" : 24,
		"course" : "MCA"
	}
	{
		"_id" : ObjectId("66865ba2e6abaf317873ea04"),
		"rollno" : 106,
		"name" : "Aravind",
		"age" : 20,
		"course" : "MCA"
	}
 
c. Find Document From the StudentDetails collection where name begins with A
 
	> db.StudentDetails.find({"name": /^A/})
	
	{ "_id" : ObjectId("66865ba2e6abaf317873e9ff"), "rollno" : 101, "name" : "Anna", "age" : 20, "course" : "MCA" }
	{ "_id" : ObjectId("66865ba2e6abaf317873ea04"), "rollno" : 106, "name" : "Aravind", "age" : 20, "course" : "MCA" }
	 
d. Update course Of student to Mtech whose rollno is 106 
 
	db.StudentDetails.findOneAndUpdate(
	...     { rollno: 106 },
	...     { $set: { course: "Mtech" } }
	... );
	
	{
		"_id" : ObjectId("66865ba2e6abaf317873ea04"),
		"rollno" : 106,
		"name" : "Aravind",
		"age" : 20,
		"course" : "MCA"
	}
 
 
e. Add a New Field Date of Joining to document with name "DOJ" 
 
	 db.StudentDetails.updateMany({}, { $set: { DOJ: new Date("2024-05-09") } });
	 
	{ "acknowledged" : true, "matchedCount" : 6, "modifiedCount" : 6 }
	 
 
f. Find total number of students who opted MCA.
 
	db.StudentDetails.aggregate([
	    { $match: { course: "MCA" } },
	    { $group: { _id: null, count: { $sum: 1 } } }
	]);
	 
 
g. Delete a document having RollNo 104.
 
	db.StudentDetails.deleteOne({ rollno: 104 })
	
	{ "acknowledged" : true, "deletedCount" : 1 }

 
 
h. Create a user with name “Mohan” and give read/write role to the user for Student database.
 
	db.createUser({
	...   user: "Mohan",
	...   pwd: "password",
	...   roles: [{ role: "readWrite", db: "StudentDetails" }]
	... })
	
	Successfully added user: {
		"user" : "Mohan",
		"roles" : [
			{
				"role" : "readWrite",
				"db" : "StudentDetails"
			}
		]
	}
 
 
