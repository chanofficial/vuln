<?php

$host = "localhost"; 
$user = "root"; 
$pass = "root";
$db   = "vuln";

$conn = mysqli_connect($host, $user, $pass);
mysqli_select_db($conn, $db);
