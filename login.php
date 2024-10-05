<?php
session_start();
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
include('includes/config.php');


if (isset($_POST['login'])) {
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Use prepared statements to prevent SQL injection
    $stmt = $conn->prepare("SELECT id, email, password FROM users WHERE email = ?");
    $stmt->bind_param('s', $email);
    $stmt->execute();
    $stmt->bind_result($id, $dbEmail, $dbPassword);
    $stmt->fetch();
    $stmt->close();

    if (password_verify($password, $dbPassword)) { // Verify hashed password
        $_SESSION['id'] = $id;
        $_SESSION['login'] = $dbEmail;
        $uip = $_SERVER['REMOTE_ADDR'];
        $ldate = date('d/m/Y h:i:s', time());

        // Insert login details into userLog table
        $geopluginURL = 'http://www.geoplugin.net/php.gp?ip=' . $uip;
        $addrDetailsArr = unserialize(file_get_contents($geopluginURL));
        $city = $addrDetailsArr['geoplugin_city'];
        $country = $addrDetailsArr['geoplugin_countryName'];
        $log = "INSERT INTO userLog (userId, userEmail, userIp, city, country) VALUES ('$id', '$dbEmail', '$uip', '$city', '$country')";
        $conn->query($log);

        header("location: dashboard.php");
        exit(); // Prevent further code execution after the redirect
    } else {
        $_SESSION['login_error'] = 'invalid_credentials';
        echo"<script>alert('Invalid Username/Email or password');</script>"; // Set an error message
        unset($_SESSION['login_error']);
        exit();
    }
}
?>