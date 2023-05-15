<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "e-commerse";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get username and password from user input
$user = $_POST['email'];
$pass = $_POST['password'];

// Check if username and password are correct
$sql = "SELECT * FROM logins WHERE email='$user' AND password1=MD5('$pass')";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Login successful
    header('Location: ./index.html');
    exit;
} else {
    // Login failed
    header('Location: ./login.html');
    exit;
}

$conn->close();
?>
