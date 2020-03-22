<?php

session_start();

include 'connect.php';

$id = $_GET['id'];
$q  = mysqli_query($conn, "SELECT * FROM post WHERE id = {$id}") or die(mysqli_error($conn));
$post = mysqli_fetch_array($q);

?><!DOCTYPE html>
<html lang="en">

<head>
	<title>POST | BLOG</title>
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
	<h2><?php echo $post['judul'] ?></h2>
	<small>tanggal: <?php echo $post['tanggal'] ?> <br/>penulis: <?php echo $post['author'] ?> </small>
	<hr>
	<?php echo $post['konten'] ?>
	
</body>

</html>
