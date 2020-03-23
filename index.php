<?php

session_start();

include 'connect.php';

$posts = mysqli_query($conn, "SELECT * FROM post");

?>

<!DOCTYPE html>
<html>

<head>
	<title>BLOG</title>
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
	<br/>
	<fieldset>
	<form action="search.php" method="get">
		<br>
		Cari posting:
		<input type="text" name="q">
		<input type="submit" value="Cari">
		<br/><br/>
	</form>
	

	
	<?php
	
	while($row = mysqli_fetch_array($posts)) {
		$num_char = 300;
		echo "<fieldset>";
		echo "<a href='post.php?id={$row['id']}'><h2>{$row['judul']}</h2></a>";
		echo "<small>oleh:<b>{$row['author']}</b> <br>{$row['tanggal']}</small><br><br>";
		echo substr($row['konten'], 0, $num_char) . '...';
		echo "<a href='post.php?id={$row['id']}'><h5>READ MORE</h5></a>";
		echo "</fieldset>";
		echo "<br>";
		
		
	}
	
	?>
	</fieldset>
	
</body>

</html>
