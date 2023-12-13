
<?php
	// Creating a connection

	$conn = new mysqli("localhost", "root", "");

	// Check connection

	if ($conn->connect_error) 
	{
		die("Connection failed: " .$conn->connect_error);
	}
//	else
//	{
//		echo "Connection Successful";
//	}
	// Creating a database named newDB
	$s = "CREATE DATABASE MCA2023";
	
	if ($conn->query($s)===TRUE) 
	{
		echo "Database created successfully ";
	}
	else 
	{
		echo "Error creating database: " .$conn->error;
	}
	
	// closing connection
	 $conn->close();
?>
