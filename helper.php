<?php 

    define('HOST', 'localhost');
    define('USER', 'root');
    define('PASS', 'root');
    define('DB', 'self_health');

    $db_connect = mysqli_connect(HOST, USER, PASS, DB) or die ('Unable connect');

    header('Content-Type: application/json')

?>