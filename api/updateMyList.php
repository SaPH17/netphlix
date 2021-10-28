<?php
require '../database/db.php';  

if($_SERVER['REQUEST_METHOD'] == 'POST'){
    $sql = "";

    if($_POST['type'] == "add"){
        $sql = "INSERT INTO watch_lists VALUES( null, " . $_POST['profileId'] . ", " . $_POST['movieId'] . ")";
    }
    else{
        $sql = "DELETE FROM watch_lists WHERE profileId = " . $_POST['profileId'] . " AND movieId = " . $_POST['movieId'];
    }

    $statement = $conn->prepare($sql);
    $statement->execute();
}

?>