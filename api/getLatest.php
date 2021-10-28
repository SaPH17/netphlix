<?php
require '../database/db.php';  


if($_SERVER['REQUEST_METHOD'] == 'POST'){
    $sql = "";

    if($_SESSION['isChildAccount'] == 1){
        if($_POST['idx'] == 0){
            $sql = "SELECT * FROM movies AS m WHERE isMature = 0 ORDER BY releaseDate DESC LIMIT 7";
        }
        else if($_POST['idx'] == 5){
            $sql = "SELECT * FROM movies AS m WHERE isMature = 0 ORDER BY releaseDate DESC LIMIT 7 OFFSET " . ($_POST['idx'] * 6 - 1);
        }
        else{
            $sql = "SELECT * FROM movies AS m WHERE isMature = 0 ORDER BY releaseDate DESC LIMIT 8 OFFSET " . ($_POST['idx'] * 6 - 1);
        }
    }
    else{
        if($_POST['idx'] == 0){
            $sql = "SELECT * FROM movies AS m ORDER BY releaseDate DESC LIMIT 7";
        }
        else if($_POST['idx'] == 5){
            $sql = "SELECT * FROM movies AS m ORDER BY releaseDate DESC LIMIT 7 OFFSET " . ($_POST['idx'] * 6 - 1);
        }
        else{
            $sql = "SELECT * FROM movies AS m ORDER BY releaseDate DESC LIMIT 8 OFFSET " . ($_POST['idx'] * 6 - 1);
        }
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
        "data" => $data
    ]);
}

?>