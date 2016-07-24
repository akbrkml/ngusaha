<?php
	header('Access-Control-Allow-Origin: *');
	header('Access-Control-Allow-Methods: GET, POST');  
	include '../admin/variables/variables.php';
	
	$query = "select * from kategori";
	$data = [];
	$hasil = mysqli_query($koneksi,$query);
	while($baris = mysqli_fetch_array($hasil)){
		$temp = [
			'id' => $baris['id_kategori'],
			'nama' => $baris['nama_kategori'],
		];
		array_push($data,$temp);
	}
	
	echo json_encode($data);
?>