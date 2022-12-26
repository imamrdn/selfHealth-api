<?php 

    require_once('helper.php');

    parse_str(file_get_contents('php://input'), $value);

    $id             = $value['id'];

    $query  = "DELETE FROM pasien WHERE id='$id' ";
    $sql    = mysqli_query($db_connect, $query);

    if ($sql) {
        echo json_encode(array(
            "id"            => $id,
            "message"       => "Delete Successfull"
        ));
    } else {
        echo json_encode(array("message" => "Error"));
    }



?>