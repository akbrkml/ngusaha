<?php
	header('Access-Control-Allow-Origin: *');
	header('Access-Control-Allow-Methods: GET, POST');  
	include '../config/koneksi.php';
	
	$cari = $_GET['cari'];
	$cari = json_decode($cari);
	$query = "select * from berita where judul like '%{$cari->key}%' or isi_berita like '%{$cari->key}%'";
	$data = [];
	$hasil = mysqli_query($koneksi,$query);
	while($baris = mysqli_fetch_array($hasil)){
		array_push($data,$baris);
	}
	
	echo json_encode($data);
	
?>