<?php
// Establish a connection to the database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "chatbot";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Retrieve username and password from the form
$username = $_POST['username'];
$password = $_POST['password'];

// SQL query to check if the username and password match
$sql = "SELECT * FROM admin WHERE username='$username' AND password='$password'";
$result = $conn->query($sql);

// Check if there is a matching record
if ($result->num_rows > 0) {
    header("Location:homepage.php");
} else {
    echo "Invalid username or password";
}

// Close the database connection
$conn->close();
?>
