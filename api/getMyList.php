<?php
require '../database/db.php';  


if($_SERVER['REQUEST_METHOD'] == 'POST'){
    $sql = "SELECT * FROM watch_lists as wl JOIN movies as m ON wl.movieId = m.id WHERE profileId = " . $_POST['profileId'] . " ORDER BY wl.id DESC LIMIT 30 OFFSET " . $_POST['page'] * 30;

    $statement = $conn->prepare($sql);
    $statement->execute();

    $lists = $statement->get_result();

    $data = array();

    while ($row = $lists->fetch_assoc()){
        $data[] = $row;
    }

    header("Content-Type:application/json");

    echo json_encode([
        "data" => $data
    ]);
}

?>