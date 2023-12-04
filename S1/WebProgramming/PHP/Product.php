<?php
//Connection
 
    $conn =new mysqli('localhost',"root","","MCA2023");
    if($conn->connect_error){
        die("connection failed :".$conn->connection_error);
    }

// sql to create table
$sql = "CREATE TABLE Product (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock INT(6) NOT NULL,
    reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)";

if ($conn->query($sql) === TRUE) {
    echo "Table Product created successfully";
} else {
    echo "Error creating table: " . $conn->error;
}

// sql to insert data
$sql = "INSERT INTO Product (product_name, price, stock)
VALUES ('Product A', 100.00, 50)";

if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

// sql to select data
$sql = "SELECT id, product_name, price, stock FROM Product";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "id: " . $row["id"]. " - Name: " . $row["product_name"]. " - Price: " . $row["price"]. " - Stock: " . $row["stock"]. "<br>";
    }
} else {
    echo "0 results";
}

// sql to update data
$sql = "UPDATE Product SET price = 150.00, stock = 60 WHERE id = 1";

if ($conn->query($sql) === TRUE) {
    echo "Record updated successfully";
} else {
    echo "Error updating record: " . $conn->error;
}

$conn->close();
?>
