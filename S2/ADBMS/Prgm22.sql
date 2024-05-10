 Create database Employee in MONGODB and make Collection with name "EmployeeDetails" 
 
	> use Employee
	switched to db Employee
	> show dbs
	admin   0.000GB
	config  0.000GB
	local   0.000GB
	> db
	Employee
	> db.createCollection("EmployeeDetails")
	{ "ok" : 1 }
	> show collections
	EmployeeDetails
                                                                             
             
 a) Insert Records into EmployeeDetails Collection
	> db.EmployeeDetails.insertOne({empid: 101, empname: "Ram", salary: 15000, designation: "clerk"})
	{
		"acknowledged" : true,
		"insertedId" : ObjectId("663da574226520cb2f68dd08")
	}

	> db.EmployeeDetails.insertMany([{empid: 102,empname:"Shyam",salary:20000,designation:"Administrator"},{empid:103,empname:"Hari",salary:10000,designation:"Supervisor"},{empid:104,empname:"Sita",salary:15000,designation:"Clerk"},{empid:105,empname:"Rose",salary:20000,designation:"Administrator"},{empid:106,empname:"Maria",salary:25000,designation:"Manager"}])
	{
		"acknowledged" : true,
		"insertedIds" : [
			ObjectId("663da73f226520cb2f68dd09"),
			ObjectId("663da73f226520cb2f68dd0a"),
			ObjectId("663da73f226520cb2f68dd0b"),
			ObjectId("663da73f226520cb2f68dd0c"),
			ObjectId("663da73f226520cb2f68dd0d")
		]
	}
 
 
 
 b) List all the details of employees in a neat format.
 
 	> db.EmployeeDetails.find()
	{ "_id" : ObjectId("663da574226520cb2f68dd08"), "empid" : 101, "empname" : "Ram", "salary" : 15000, "designation" : "clerk" }
	{ "_id" : ObjectId("663da73f226520cb2f68dd09"), "empid" : 102, "empname" : "Shyam", "salary" : 20000, "designation" : "Administrator" }
	{ "_id" : ObjectId("663da73f226520cb2f68dd0a"), "empid" : 103, "empname" : "Hari", "salary" : 10000, "designation" : "Supervisor" }
	{ "_id" : ObjectId("663da73f226520cb2f68dd0b"), "empid" : 104, "empname" : "Sita", "salary" : 15000, "designation" : "Clerk" }
	{ "_id" : ObjectId("663da73f226520cb2f68dd0c"), "empid" : 105, "empname" : "Rose", "salary" : 20000, "designation" : "Administrator" }
	{ "_id" : ObjectId("663da73f226520cb2f68dd0d"), "empid" : 106, "empname" : "Maria", "salary" : 25000, "designation" : "Manager" }
	
	
	> db.EmployeeDetails.find().pretty()
	{
		"_id" : ObjectId("663da574226520cb2f68dd08"),
		"empid" : 101,
		"empname" : "Ram",
		"salary" : 15000,
		"designation" : "clerk"
	}
	{
		"_id" : ObjectId("663da73f226520cb2f68dd09"),
		"empid" : 102,
		"empname" : "Shyam",
		"salary" : 20000,
		"designation" : "Administrator"
	}
	{
		"_id" : ObjectId("663da73f226520cb2f68dd0a"),
		"empid" : 103,
		"empname" : "Hari",
		"salary" : 10000,
		"designation" : "Supervisor"
	}
	{
		"_id" : ObjectId("663da73f226520cb2f68dd0b"),
		"empid" : 104,
		"empname" : "Sita",
		"salary" : 15000,
		"designation" : "Clerk"
	}
	{
		"_id" : ObjectId("663da73f226520cb2f68dd0c"),
		"empid" : 105,
		"empname" : "Rose",
		"salary" : 20000,
		"designation" : "Administrator"
	}
	{
		"_id" : ObjectId("663da73f226520cb2f68dd0d"),
		"empid" : 106,
		"empname" : "Maria",
		"salary" : 25000,
		"designation" : "Manager"
	}
	
 c) Find Document From the EmployeeDetails collection where name begins with S
 
	 > db.EmployeeDetails.find({"empname": /^S/})
	{ "_id" : ObjectId("663da73f226520cb2f68dd09"), "empid" : 102, "empname" : "Shyam", "salary" : 20000, "designation" : "Administrator" }
	{ "_id" : ObjectId("663da73f226520cb2f68dd0b"), "empid" : 104, "empname" : "Sita", "salary" : 15000, "designation" : "Clerk" }
	
	> db.EmployeeDetails.find({"empname": /^S/}).pretty()
	{
		"_id" : ObjectId("663da73f226520cb2f68dd09"),
		"empid" : 102,
		"empname" : "Shyam",
		"salary" : 20000,
		"designation" : "Administrator"
	}
	{
		"_id" : ObjectId("663da73f226520cb2f68dd0b"),
		"empid" : 104,
		"empname" : "Sita",
		"salary" : 15000,
		"designation" : "Clerk"
	}


 d) Update Salary Of Employee where Name is "Sita" by +1000
 
 
 e) Add a New Field Date of Joining to document with name "DOJ" 
 f) Find sum of salaries of employees with designation as “clerk”
 g) Delete a document having employee id with 106.
 h) Create a user with name “Mohan” and give read/write role to the user for Employee database.
