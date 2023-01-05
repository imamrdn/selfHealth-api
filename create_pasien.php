<?php 

    require_once('helper.php');

    $nomor_pasien   = $_POST['nomor_pasien'];
    $nama           = $_POST['nama'];
    $ttl            = $_POST['ttl'];
    $jenis_kelamin  = $_POST['jenis_kelamin'];
    $alamat         = $_POST['alamat'];
    $keluhan        = $_POST['keluhan'];
    $kamar          = $_POST['kamar'];
    
    $query  = "INSERT INTO pasien(nama, ttl, jenis_kelamin, alamat, keluhan) VALUES ('$nama', '$ttl', '$jenis_kelamin', '$alamat', '$keluhan')";
    $sql    = mysqli_query($db_connect, $query);

    if ($sql) {
        echo json_encode(array(
            "nomor_pasien"  => $nomor_pasien,
            "nama"          => $nama,
            "ttl"           => $ttl,
            "jenis_kelamin" => $jenis_kelamin,
            "alamat"        => $alamat,
            "keluhan"       => $keluhan,
            "kamar"         => $kamar,
            "message"       => "Created!"
        ));
    } else {
        echo json_encode(array("message" => "Error"));

    }



?>