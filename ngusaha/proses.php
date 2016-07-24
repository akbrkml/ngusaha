<?php 
    include "admin/variables/variables.php";
    error_reporting(0);

    if(isset($_POST['kirim'])){
    $id         = $_POST['id'];
    $nama       = $_POST['nama'];
    $jenis      = $_POST['jenis'];
    $pj         = $_POST['pj'];
    $deskripsi  = $_POST['deskripsi'];
    $alamat     = $_POST['alamat'];
                
    mysql_query("INSERT INTO tbl_ukm(id_ukm, nama_ukm, jenis_ukm, pj_ukm, deskripsi_ukm, alamat_ukm) VALUES ('$id', '$nama', '$jenis', '$pj', '$deskripsi', '$alamat')");

        if(isset($_FILES['images']['name'])){
            define ("MAX_SIZE","2000");

            for($i=0; $i<count($_FILES['images']['name']); $i++)  {
                $size=filesize($_FILES['images']['tmp_name'][$i]);    
                if($size < (MAX_SIZE*1024)){    
                    $path = "uploads/";
                    $name = $_FILES['images']['name'][$i];
                    $size = $_FILES['images']['size'][$i];
                    list($txt, $ext) = explode(".", $name);
                    date_default_timezone_set ("Asia/Calcutta"); 
                    $currentdate=date("d M Y");	
                    $file= time().substr(str_replace(" ", "_", $txt), 0);
                    $info = pathinfo($file);
                    $filename = $file.".".$ext;

                    if(move_uploaded_file($_FILES['images']['tmp_name'][$i], $path.$filename)) {
                       $fetch=mysql_query("INSERT INTO tbl_foto(gambar, id_ukm) VALUES('$filename', '{$_POST['id']}')");
                       if($fetch){
                           header('Location:review.php');
                        } else {
                           $error ='Data not inserting';
                        } 
                       $error = 'File moving unsuccessful';
                    } 
                } else {
                    $error = 'You have exceeded the size limit!';
                }
            }
        } else {
          $error = 'File not found!';
        }
    }
    
?>

<h2><?php echo @$error ?></h2> <a href="review.php">Try Again</a>