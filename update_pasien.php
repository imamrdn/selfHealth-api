<?php 

    require_once('helper.php');

    parse_str(file_get_contents('php://input'), $value);

    $id             = $value['id'];
    $nomor_pasien   = $value['nomor_pasien'];
    $nama           = $value['nama'];
    $ttl            = $value['ttl'];
    $jenis_kelamin  = $value['jenis_kelamin'];
    $alamat         = $value['alamat'];
    $keluhan        = $value['keluhan'];
    $kamar          = $value['kamar'];
    
    $query  = "UPDATE pasien SET nama='$nama', ttl='$ttl', jenis_kelamin='$jenis_kelamin', alamat='$alamat', keluhan='$keluhan' WHERE id='$id' ";
    $sql    = mysqli_query($db_connect, $query);

    if ($sql) {
        echo json_encode(array(
            "id"            => $id,
            "nomor_pasien"  => $nomor_pasien,
            "nama"          => $nama,
            "ttl"           => $ttl,
            "jenis_kelamin" => $jenis_kelamin,
            "alamat"        => $alamat,
            "keluhan"       => $keluhan,
            "kamar"         => $kamar,
            "message"       => "Updated!"
        ));
    } else {
        echo json_encode(array("message" => "Error"));

    }



?>