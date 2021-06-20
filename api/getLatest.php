<?php
require '../database/db.php';  

if($_SERVER['REQUEST_METHOD'] == 'POST'){
    $sql = "SELECT * FROM movies ORDER BY releaseDate DESC LIMIT 30 OFFSET " . $_POST['index'] * 30;

    $statement = $conn->prepare($sql);
    $statement->execute();

    $lists = $statement->get_result();

    $data = array();

    while ($row = $lists->fetch_assoc()){
        $data[] = $row;
    }

    header("Content-Type:application/json");

    echo json_encode([
        "nextIndex" => $_POST['index'] + 1,
        "data" => $data
    ]);
}

?>