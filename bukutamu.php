<?php

session_start();

include 'connect.php';

$pesan = mysqli_query($conn, "SELECT * FROM bukutamu ORDER BY tanggal");

?><!DOCTYPE html>
<html lang="en">

<head>
	<title>BUKU TAMU | BLOG</title>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
</head>

<body>
	
	
	<h1>BLOG CONTOH SEBAGAI KORBAN</h1>
	<table border="1" cellpadding="10">
        <tr>            
            <td><a href="index.php">HOME</a></td>
			<td><a href="bukutamu.php">BUKU TAMU</a></td>
			<?php if (isset($_SESSION['admin']) && $_SESSION['admin'] == 1) : ?>
				<td><a href="admin.php">ADMIN</a></td>
				<?php endif; ?>
        </tr>
	</table>
<br>
<fieldset style="background-color: rgba(255,255,255,0.1);">
	<center><h2>BUKU TAMU</h2></center>
	<hr>
	<?php
	
	while($row = mysqli_fetch_array($pesan)) {
	
		echo "<h2>{$row['nama']}</h2>";
		echo "<small>{$row['tanggal']}</small>";
		echo "<p>{$row['pesan']}</p>";
		echo "<hr>";
		
	}
	
	?>
	</fieldset>
	<center>
	<h3>Pesan & masukan</h3>
	
	<form action="postbukutamu.php" method="post">
	
		Nama: <br>
		<input type="text" name="nama"><br>
		Pesan: <br>
		<textarea name="pesan" cols="80" rows="4"></textarea>
		<br>
		<input type="submit" value="SUBMIT">
	
	</form>
	</center>
</body>

</html>
