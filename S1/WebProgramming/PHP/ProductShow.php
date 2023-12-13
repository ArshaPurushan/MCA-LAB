<?php

	$conn=new mysqli("localhost","root","","MCA2023");
	if($conn->connect_error)
		die("\nconnection failed:".$conn->connect_error);
		
		//retrive data from database to table
		
	$s="select  *from product";
	if($conn->query($s)==TRUE)
	{
		$result=$conn->query($s);
		if($result->num_rows>0)
		{	
			?>
			<center><h2>Stock</h2></center>
			&nbsp&nbsp<table border="1" align="center">
			<tr>
				<th>PRODUCT ID</th>
				<th>PRODUCT NAME</th>
				<th>QUANTITY</th>
				<th>UNIT PRICE</th>
				<th>MANUFACTURED DATE</th>
				<th>EXPIRY DATE</th>
			</tr>
		<?php
			while($row=$result->fetch_assoc())
			{
				echo "<tr><th>".$row['pid']."</th>
				<th>".$row['pname']."</th>
				<th>".$row['quantity']."</th>
				<th>".$row['price']."</th>
				<th>".$row['man_date']."</th>
				<th>".$row['exp_date']."</th></tr>";
			}
		}
		echo "</table>";
	}
	else
		echo "\nfailed to display details:",$conn->error;	
	
	
	
$conn->close();
?>
