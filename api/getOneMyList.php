<?php
require '../database/db.php';  


if($_SERVER['REQUEST_METHOD'] == 'POST'){

    $sql = "SELECT IF(EXISTS(SELECT * FROM movies AS m2 JOIN watch_lists AS wl ON m2.id = wl.movieId WHERE m2.id = " . $_POST['movieId'] . " AND wl.profileId = " . $_POST['profileId'] . "), \"yes\", \"no\") AS movieExists";
    
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