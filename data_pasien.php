<?php 

    require_once('helper.php');

    $query  = 'SELECT * FROM pasien ORDER BY id DESC';
    $sql    = mysqli_query($db_connect, $query);

    if ($sql) {

        $result = array();
        while ($row = mysqli_fetch_array($sql)) {
            array_push($result, array(
                'id'            => $row['id'],
                'nomor_pasien'  => $row['nomor_pasien'],
                'nama'          => $row['nama'],
                'ttl'           => $row['ttl'],
                'jenis_kelamin' => $row['jenis_kelamin'],
                'alamat'        => $row['alamat'],
                'keluhan'       => $row['keluhan'],
                'kamar'         => $row['kamar']
            ));
        }

        echo json_encode(array("pasien" => $result));
    }

?>