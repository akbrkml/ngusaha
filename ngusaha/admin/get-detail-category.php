<?php
	header('Access-Control-Allow-Origin: *');
	header('Access-Control-Allow-Methods: GET, POST');  
	include '../config/koneksi.php';
	
	$id = $_GET['id'];
	$query = "select 
					a.id_kategori as id_kategori,
					a.nama_kategori as nama_kategori,
					b.id_berita as id_berita,
					b.judul as heading_berita,
					b.gambar as gambar_berita,
					b.tanggal as tgl_berita,
					b.username as author,
					b.hari,
					b.jam
			  from 
					kategori a inner join 
					berita b on a.id_kategori=b.id_kategori 
					where a.id_kategori = {$id}";
	$data = [];
	$hasil = mysqli_query($koneksi,$query);
	if($baris = mysqli_fetch_array($hasil)){
		$temp = [
			'id' 		=> $baris['id_kategori'],
			'nama' 		=> $baris['nama_kategori'],
			'id_berita' => $baris['id_berita'],
			'heading' 	=> $baris['heading_berita'],
			'gambar' 	=> $baris['gambar_berita'],
			'tgl' 		=> $baris['tgl_berita'],
			'author' 	=> $baris['author'],
			'jam' => $baris['jam'],
			'hari' => $baris['hari'],
		];
		array_push($data,$temp);
	}
	
	echo json_encode($data);
?>