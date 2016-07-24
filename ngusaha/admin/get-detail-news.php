<?php
	header('Access-Control-Allow-Origin: *');
	header('Access-Control-Allow-Methods: GET, POST');  
	include '../config/koneksi.php';
	
	$id = $_GET['id'];
	$query = "select * from berita where id_berita = {$id}";
	$data = [];
	$hasil = mysqli_query($koneksi,$query);
	if($baris = mysqli_fetch_array($hasil)){
		$data = $baris;		
	}
	
	echo json_encode($data);
?>