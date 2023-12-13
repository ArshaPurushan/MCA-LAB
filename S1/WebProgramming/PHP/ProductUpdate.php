<?php

	$conn=new mysqli("localhost","root","","MCA2023");
	if($conn->connect_error)
		die("\nconnection failed:".$conn->connect_error);
		
//creating another column	
	
	// Perform alteration

$sql = "ALTER TABLE product ADD COLUMN `MANUFACTURE NAME` varchar(20);";


if ($conn->query($sql) === TRUE) {

    echo "\nvalue updated";

} else {

    echo "\nfailed to update value: " . $conn->error;

}


$conn->close();

?>
