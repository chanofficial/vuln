<?php


session_start();

if (!$_SESSION['admin']) {
	header("Location: admin_login.php");
}

?>
<!DOCTYPE html>
<html>

<head>
	<title>ADMIN | BLOG</title>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
</head>

<body>
	
	<h1>DASHBOARD ADMIN</h1>	
	<table border="1" cellpadding="10">
        <tr>            
            <td><a href="logout.php">LOGOUT</a></td>
        </tr>
	</table>
	<hr>
		
	
	<h3>Ini adalah halaman admin</h3>
	
	<p>Coming soon...</p>
	
</body>

</html>
