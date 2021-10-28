<?php
require '../database/db.php';  

if($_SERVER['REQUEST_METHOD'] == 'POST'){
    $sql = "UPDATE watch_histories SET isDone = 1 WHERE profileId = " . $_POST['profileId'] . " AND movieEpisodeId = " . $_POST['episodeId'];

    $statement = $conn->prepare($sql);
    $statement->execute();
}

?>