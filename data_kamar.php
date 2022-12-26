<?php 

    require_once('helper.php');

    $query  = 'SELECT * FROM kamar';
    $sql    = mysqli_query($db_connect, $query);

    if ($sql) {

        $result = array();
        while ($row = mysqli_fetch_array($sql)) {
            array_push($result, array(
                'id'        => $row['id'],
                'nama'      => $row['nama'],
                'deskripsi' => $row['deskripsi']
            ));
        }

        echo json_encode(array("kamar" => $result));
    }

?>