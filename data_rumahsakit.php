<?php 

    require_once('helper.php');

    $query  = 'SELECT * FROM rumahsakit';
    $sql    = mysqli_query($db_connect, $query);

    if ($sql) {

        $result = array();
        while ($row = mysqli_fetch_array($sql)) {
            array_push($result, array(
                'id'        => $row['id'],
                'name'      => $row['name'],
                'alamat'    => $row['alamat'],
                'kota'      => $row['kota']
            ));
        }

        echo json_encode(array("rumahsakit" => $result));
    }

?>