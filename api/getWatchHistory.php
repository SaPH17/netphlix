<?php
require '../database/db.php';  

if($_SERVER['REQUEST_METHOD'] == 'POST'){
    if($_SESSION['isChildAccount'] == 1){
        if($_POST['idx'] == 0){
            $sql = "SELECT * FROM movies AS m JOIN movie_episodes AS me ON m.id = me.movieId JOIN watch_histories AS wh ON me.id = wh.movieEpisodeId WHERE isMature = 0 AND wh.profileId = " . $_POST['profileId'] . " ORDER BY wh.id DESC LIMIT 7";
        }
        else if($_POST['idx'] == 5){
            $sql = "SELECT * FROM movies AS m JOIN movie_episodes AS me ON m.id = me.movieId JOIN watch_histories AS wh ON me.id = wh.movieEpisodeId WHERE isMature = 0 AND wh.profileId = " . $_POST['profileId'] . " ORDER BY wh.id DESC LIMIT 7 OFFSET " . ($_POST['idx'] * 6 - 1);
        }
        else{
            $sql = "SELECT * FROM movies AS m JOIN movie_episodes AS me ON m.id = me.movieId JOIN watch_histories AS wh ON me.id = wh.movieEpisodeId WHERE isMature = 0 AND wh.profileId = " . $_POST['profileId'] . " ORDER BY wh.id DESC LIMIT 8 OFFSET " . ($_POST['idx'] * 6 - 1);
        }
    }
    else{
        if($_POST['idx'] == 0){
            $sql = "SELECT * FROM movies AS m JOIN movie_episodes AS me ON m.id = me.movieId JOIN watch_histories AS wh ON me.id = wh.movieEpisodeId WHERE wh.profileId = " . $_POST['profileId'] . " ORDER BY wh.id DESC LIMIT 7";
        }
        else if($_POST['idx'] == 5){
            $sql = "SELECT * FROM movies AS m JOIN movie_episodes AS me ON m.id = me.movieId JOIN watch_histories AS wh ON me.id = wh.movieEpisodeId WHERE wh.profileId = " . $_POST['profileId'] . " ORDER BY wh.id DESC LIMIT 7 OFFSET " . ($_POST['idx'] * 6 - 1);
        }
        else{
            $sql = "SELECT * FROM movies AS m JOIN movie_episodes AS me ON m.id = me.movieId JOIN watch_histories AS wh ON me.id = wh.movieEpisodeId WHERE wh.profileId = " . $_POST['profileId'] . " ORDER BY wh.id DESC LIMIT 8 OFFSET " . ($_POST['idx'] * 6 - 1);
        }
    }
    
    $statement = $conn->prepare($sql);
    $statement->execute();

    $lists = $statement->get_result();

    $data = array();

    while ($row = $lists->fetch_assoc()){
        $data[] = $row;
    }

    if($_SESSION['isChildAccount'] == 1){
        $sql = "SELECT COUNT(m.id) FROM movies AS m JOIN movie_episodes AS me ON m.id = me.movieId JOIN watch_histories AS wh ON me.id = wh.movieEpisodeId WHERE isMature = 0 AND wh.profileId = " . $_POST['profileId'];
    }
    else{
        $sql = "SELECT COUNT(m.id) FROM movies AS m JOIN movie_episodes AS me ON m.id = me.movieId JOIN watch_histories AS wh ON me.id = wh.movieEpisodeId WHERE wh.profileId = " . $_POST['profileId'];
    }

    $statement = $conn->prepare($sql);
    $statement->execute();

    $total = $statement->get_result()->fetch_array()[0];
    $total = ceil($total/6);

    header("Content-Type:application/json");

    echo json_encode([
        "total" => $total,
        "data" => $data
    ]);
}

?>