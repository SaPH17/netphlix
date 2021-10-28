<?php
require '../database/db.php';  


if($_SERVER['REQUEST_METHOD'] == 'POST'){
    if($_SESSION['isChildAccount'] == 1){
        $sql = "SELECT * FROM movies WHERE isMature = 0 AND title LIKE '%" . $_POST['query'] . "%' LIMIT 30 OFFSET " . $_POST['index'] * 30;
    }
    else{
        $sql = "SELECT * FROM movies WHERE title LIKE '%" . $_POST['query'] . "%' LIMIT 30 OFFSET " . $_POST['index'] * 30;
    }

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