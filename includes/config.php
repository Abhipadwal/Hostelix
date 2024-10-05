<?php
// Establish a connection to the MySQL database
$host = "localhost";
$db_username = "root";
$db_password = "1234";
$db_name = "hostelm";

$conn = new mysqli($host, $db_username, $db_password, $db_name);
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
?>
