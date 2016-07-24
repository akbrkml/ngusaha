<?php
	header('Access-Control-Allow-Origin: *');
	header('Access-Control-Allow-Methods: GET, POST');  
	include '../config/koneksi.php';
	
	$query = "select * from berita";
	$data = [];
	$hasil = mysqli_query($koneksi,$query);
	while($baris = mysqli_fetch_array($hasil)){
		$temp = [
			'id' => $baris['id_berita'],
			'heading' => $baris['judul'],
			'tgl' => $baris['tanggal'],
			'gambar' => $baris['gambar'],
			'author' => $baris['username'],
			'jam' => $baris['jam'],
			'hari' => $baris['hari'],
		];
		array_push($data,$temp);
	}
	
	echo json_encode($data);
?>