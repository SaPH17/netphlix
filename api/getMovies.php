<?php
require '../database/db.php';  

if($_SERVER['REQUEST_METHOD'] == 'POST'){
    if($_SESSION['isChildAccount'] == 1){
        if($_POST['genreId'] != "all"){
            $sql = "SELECT * FROM movies AS m WHERE isMature = 0 AND isSeries = 0 AND movieGenreId = " . $_POST['genreId'] . " AND id != " . $_POST['randomId'] . " LIMIT 30 OFFSET " . $_POST['index'] * 30;
        }
        else{
            $sql = "SELECT * FROM movies AS m WHERE isMature = 0 AND isSeries = 0 AND id != " . $_POST['randomId'] . " LIMIT 30 OFFSET " . $_POST['index'] * 30;
        }    
    }
    else{
        if($_POST['genreId'] != "all"){
            $sql = "SELECT * FROM movies AS m WHERE isSeries = 0 AND movieGenreId = " . $_POST['genreId'] . " AND id != " . $_POST['randomId'] . " LIMIT 30 OFFSET " . $_POST['index'] * 30;
        }
        else{
            $sql = "SELECT * FROM movies AS m WHERE isSeries = 0 AND id != " . $_POST['randomId'] . " LIMIT 30 OFFSET " . $_POST['index'] * 30;
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
        "nextIndex" => $_POST['index'] + 1,
        "data" => $data
    ]);
}

?>