<!--     Create a form for product details    -->
<html>
	<head>
	<title>Product</title>
	<style>
		table{
			font-family:arial,sans-serif;
			
	<!--		width:100%;  -->
	
			}
		td,th{
			border:1px solid black;
			text-align:center;

			}
		tr:nth-child(even){
			background-color:#dddddd;
			}
	</style>
	</head>
	<body>
	<center>
		<form method=post action="ProductShow.php">
		<b><u><h2>PRODUCT DETAILS</h2></u></b>
			<table border="" align="center">
				<tr>
					<td>PRODUCT NAME</td>
					<td><input type="text" name="t1"></td>
				</tr>
				<tr>
					<td>QUANTITY</td>
					<td><input type="number" name="t2"></td>
				</tr>
				<tr>
					<td>UNIT PRICE</td>
					<td><input type="number" name="t3"></td>
				</tr>
				<tr>
					<td>MANUFACTURER</td>
					<td><input type="date" name="t4"></td>
				</tr>
				<tr>
					<td>EXPIRED DATE</td>
					<td><input type="date" name="t5"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" name="b1" value="Ok">&nbsp&nbsp<input type="reset" name="b2" value="Cancel"></td>
				</tr>
			</table>
		</form>
	</center>
	</body>
</html>



<?php

	$conn=new mysqli("localhost","root","","MCA2023");
	if($conn->connect_error)
		die("\nconnection failed:".$conn->connect_error);
		
		//create product table in database
/**		
//$s="create table student(rollno int primary key ,name varchar(20),department varchar(20) )";
	$s="create table product(pid int primary key AUTO_INCREMENT ,pname varchar(20),quantity int,price varchar(20),man_date  date,exp_date date)";
	if($conn->query($s)===TRUE)
		echo "\ntable created";
	else
		echo "\nfailed to create table:",$conn->error;
**/

	//insert data into the table

	if(isset($_POST['b1']))
	{
		if(!(empty($_POST['t1']) || empty($_POST['t2']) || empty($_POST['t3']) || empty($_POST['t4']) || empty($_POST['t5'])))
		{
			$n =$_POST['t1'];
			$q =$_POST['t2'];
			$p =$_POST['t3'];
			$m =$_POST['t4'];
			$e =$_POST['t5'];
			
/**			$con=new mysqli("localhost","root","","MACE");
			if($con->connect_error)
				die("\nconnection failed:".$con->connect_error);
**/				
			$i="insert into product(pname,quantity,price,man_date,exp_date) values('$n',$q,'$p','$m','$e')";
			if($conn->query($i)==TRUE)
				echo "\nproduct details inserted";
			else
				echo "\nfailed to insert product details:",$conn->error;
//			$conn->close();
		}
		else
			echo "FILL THE FIELDS";
	}	
	
/**	$s="select  *from product";
	if($conn->query($s)==TRUE)
	{
		$result=$conn->query($s);
		if($result->num_rows>0)
		{	
			?>
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
		
	
		
**/
		
$conn->close();
?>
