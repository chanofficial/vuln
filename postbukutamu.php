<?php

session_start();

include 'connect.php';

$nama = $_POST['nama'];
$pesan = $_POST['pesan'];

$insert = mysqli_query($conn, "INSERT INTO bukutamu (id, tanggal, nama, pesan) VALUES(NULL, NOW(), '{$nama}', '{$pesan}')");

if ($insert) {
	// kalau berhasil alihkan ke halaman index.php dengan status=sukses
        header('Location: bukutamu.php?status=sukses');
}


