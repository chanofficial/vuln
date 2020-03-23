<?php

session_start();

include 'connect.php';

$q = $_GET['q'];
$posts = mysqli_query($conn, "SELECT * FROM post WHERE judul LIKE '%{$q}%' OR konten LIKE '%{$q}%'");

?><!DOCTYPE html>
<html>

<head>
	<title>SEARCH | BLOG</title>
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
	<form action="search.php" method="get"><br>
		Cari posting:
		<input type="text" name="q">
		<input type="submit" value="Cari">
	</form>
	<h3>Hasil pencarian untuk "<?php echo $q; ?>"</h3>
	<?php
	
	while($row = mysqli_fetch_array($posts)) {
		echo "<fieldset>";
		$num_char = 100;
		echo "<a href='post.php?id={$row['id']}'><h2>{$row['judul']}</h2></a>";
		echo "<small>oleh:<b>{$row['author']}</b> <br>{$row['tanggal']}</small><br><br>";
		echo substr($row['konten'], 0, $num_char) . '...';
		echo "<a href='post.php?id={$row['id']}'><h5>READ MORE</h5></a>";
		echo "</fieldset><br>";
		
	}
	
	?>
	
</body>

</html>
