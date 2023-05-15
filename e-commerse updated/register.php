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
$fname=$_POST['firstname'];
$mname=$_POST['middlename'];
$lname=$_POST['lastname'];
$email=$_POST['email'];
$pass=$_POST['password'];
$dob=$_POST['birthdate'];
$sex=$_POST['gender'];
$address=$_POST['address'];
$city=$_POST['city'];
$state=$_POST['state'];
$zip=$_POST['zip'];

$sql = "INSERT INTO register (firstname, middlename, lastname, email, password1, birthdate, sex, address1, city, state1, zip) 
VALUES ('". $fname ."','". $mname ."','". $lname ."','". $email ."','". md5($pass) ."','". $dob ."','". $sex ."','". $address ."','". $city ."','". $state ."','". $zip ."')";

$sql2 = "INSERT INTO  logins (email, password1) 
VALUES ('". $email ."','".md5($pass)."')";

if ($conn->query($sql) === TRUE && $conn->query($sql2) === TRUE) {
 ?><script> alert('New record created successfully');
    </script><?php 
    return;
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?> 