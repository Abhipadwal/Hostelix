<?php
session_start();
include('includes/config.php');
include('includes/checklogin.php');
check_login();

// Get user input from the registration form
$firstName = $_POST['firstName']; // Add this line to get the first name input
$lastName = $_POST['lastName']; // Add this line to get the last name input
$email = $_POST['email'];
$password = $_POST['password'];

// Hash the password
$hashedPassword = password_hash($password, PASSWORD_DEFAULT);

// Insert the user into the database
$query = "INSERT INTO users (firstName, lastName, email, password) VALUES ('$firstName', '$lastName', '$email', '$hashedPassword')";
if ($conn->query($query) === TRUE) {
  header("Location: dashboard.php"); // Change this to the actual path of your dashboard
  exit();
} else {
  if ($conn->errno === 1062) { // MySQL error code for duplicate entry
    echo "Duplicate Entry Detected"; 
    session_start();
    $_SESSION['registration_error'] = "duplicate_entry";
    echo "<script> alert('The user is already present...');</script>";
    exit();
  } else {
    echo "Error: " . $query . "<br>" . $conn->error;
  }
}

// Close the database connection
$conn->close();
?>