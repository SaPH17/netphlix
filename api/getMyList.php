<?php
require '../database/db.php';  

function initSqlStatementWithoutMature(){
    $sql = "";

    if($_POST['type'] == "all"){
        if($_POST['idx'] == 0){
            $sql = "SELECT * FROM watch_lists as wl JOIN movies as m ON wl.movieId = m.id WHERE isMature = 0 AND profileId = " . $_POST['profileId'] . " ORDER BY wl.id DESC LIMIT 7";
        }
        else{
            $sql = "SELECT * FROM watch_lists as wl JOIN movies as m ON wl.movieId = m.id WHERE isMature = 0 AND profileId = " . $_POST['profileId'] . " ORDER BY wl.id DESC LIMIT 8 OFFSET " . ($_POST['idx'] * 6 - 1);
        }
    }
    else if($_POST['type'] == "tv-shows"){
        if($_POST['genre'] == "all"){
            if($_POST['idx'] == 0){
                $sql = "SELECT * FROM watch_lists as wl JOIN movies as m ON wl.movieId = m.id WHERE isMature = 0 AND isSeries = 1 AND profileId = " . $_POST['profileId'] . " ORDER BY wl.id DESC LIMIT 7";
            }
            else{
                $sql = "SELECT * FROM watch_lists as wl JOIN movies as m ON wl.movieId = m.id WHERE isMature = 0 AND isSeries = 1 AND profileId = " . $_POST['profileId'] . " ORDER BY wl.id DESC LIMIT 8 OFFSET " . ($_POST['idx'] * 6 - 1);
            }
        }
        else{
            if($_POST['idx'] == 0){
                $sql = "SELECT * FROM watch_lists as wl JOIN movies as m ON wl.movieId = m.id WHERE isMature = 0 AND isSeries = 1 AND profileId = " . $_POST['profileId'] . " AND movieGenreId = " .  $_POST['genre'] . " ORDER BY wl.id DESC LIMIT 7";
            }
            else{
                $sql = "SELECT * FROM watch_lists as wl JOIN movies as m ON wl.movieId = m.id WHERE isMature = 0 AND isSeries = 1 AND profileId = " . $_POST['profileId'] . " AND movieGenreId = " .  $_POST['genre'] . " ORDER BY wl.id DESC LIMIT 8 OFFSET " . ($_POST['idx'] * 6 - 1);
            }
        }
    }
    else if($_POST['type'] == "movies"){
        if($_POST['genre'] == "all"){
            if($_POST['idx'] == 0){
                $sql = "SELECT * FROM watch_lists as wl JOIN movies as m ON wl.movieId = m.id WHERE isMature = 0 AND isSeries = 0 AND profileId = " . $_POST['profileId'] . " ORDER BY wl.id DESC LIMIT 7";
            }
            else{
                $sql = "SELECT * FROM watch_lists as wl JOIN movies as m ON wl.movieId = m.id WHERE isMature = 0 AND isSeries = 0 AND profileId = " . $_POST['profileId'] . " ORDER BY wl.id DESC LIMIT 8 OFFSET " . ($_POST['idx'] * 6 - 1);
            }
        }
        else{
            if($_POST['idx'] == 0){
                $sql = "SELECT * FROM watch_lists as wl JOIN movies as m ON wl.movieId = m.id WHERE isMature = 0 AND isSeries = 0 AND profileId = " . $_POST['profileId'] . " AND movieGenreId = " .  $_POST['genre'] . " ORDER BY wl.id DESC LIMIT 7";
            }
            else{
                $sql = "SELECT * FROM watch_lists as wl JOIN movies as m ON wl.movieId = m.id WHERE isMature = 0 AND isSeries = 0 AND profileId = " . $_POST['profileId'] . " AND movieGenreId = " .  $_POST['genre'] . " ORDER BY wl.id DESC LIMIT 8 OFFSET " . ($_POST['idx'] * 6 - 1);
            }
        }
    }

    return $sql;
}

function initSqlStatementWithMature(){
    $sql = "";

    if($_POST['type'] == "all"){
        if($_POST['idx'] == 0){
            $sql = "SELECT * FROM watch_lists as wl JOIN movies as m ON wl.movieId = m.id WHERE profileId = " . $_POST['profileId'] . " ORDER BY wl.id DESC LIMIT 7";
        }
        else{
            $sql = "SELECT * FROM watch_lists as wl JOIN movies as m ON wl.movieId = m.id WHERE profileId = " . $_POST['profileId'] . " ORDER BY wl.id DESC LIMIT 8 OFFSET " . ($_POST['idx'] * 6 - 1);
        }
    }
    else if($_POST['type'] == "tv-shows"){
        if($_POST['genre'] == "all"){
            if($_POST['idx'] == 0){
                $sql = "SELECT * FROM watch_lists as wl JOIN movies as m ON wl.movieId = m.id WHERE isSeries = 1 AND profileId = " . $_POST['profileId'] . " ORDER BY wl.id DESC LIMIT 7";
            }
            else{
                $sql = "SELECT * FROM watch_lists as wl JOIN movies as m ON wl.movieId = m.id WHERE isSeries = 1 AND profileId = " . $_POST['profileId'] . " ORDER BY wl.id DESC LIMIT 8 OFFSET " . ($_POST['idx'] * 6 - 1);
            }
        }
        else{
            if($_POST['idx'] == 0){
                $sql = "SELECT * FROM watch_lists as wl JOIN movies as m ON wl.movieId = m.id WHERE isSeries = 1 AND profileId = " . $_POST['profileId'] . " AND movieGenreId = " .  $_POST['genre'] . " ORDER BY wl.id DESC LIMIT 7";
            }
            else{
                $sql = "SELECT * FROM watch_lists as wl JOIN movies as m ON wl.movieId = m.id WHERE isSeries = 1 AND profileId = " . $_POST['profileId'] . " AND movieGenreId = " .  $_POST['genre'] . " ORDER BY wl.id DESC LIMIT 8 OFFSET " . ($_POST['idx'] * 6 - 1);
            }
        }
    }
    else if($_POST['type'] == "movies"){
        if($_POST['genre'] == "all"){
            if($_POST['idx'] == 0){
                $sql = "SELECT * FROM watch_lists as wl JOIN movies as m ON wl.movieId = m.id WHERE isSeries = 0 AND profileId = " . $_POST['profileId'] . " ORDER BY wl.id DESC LIMIT 7";
            }
            else{
                $sql = "SELECT * FROM watch_lists as wl JOIN movies as m ON wl.movieId = m.id WHERE isSeries = 0 AND profileId = " . $_POST['profileId'] . " ORDER BY wl.id DESC LIMIT 8 OFFSET " . ($_POST['idx'] * 6 - 1);
            }
        }
        else{
            if($_POST['idx'] == 0){
                $sql = "SELECT * FROM watch_lists as wl JOIN movies as m ON wl.movieId = m.id WHERE isSeries = 0 AND profileId = " . $_POST['profileId'] . " AND movieGenreId = " .  $_POST['genre'] . " ORDER BY wl.id DESC LIMIT 7";
            }
            else{
                $sql = "SELECT * FROM watch_lists as wl JOIN movies as m ON wl.movieId = m.id WHERE isSeries = 0 AND profileId = " . $_POST['profileId'] . " AND movieGenreId = " .  $_POST['genre'] . " ORDER BY wl.id DESC LIMIT 8 OFFSET " . ($_POST['idx'] * 6 - 1);
            }
        }
    }

    return $sql;
}

if($_SERVER['REQUEST_METHOD'] == 'POST'){
    $sql = "";

    if($_SESSION['isChildAccount'] == 1){
        $sql = initSqlStatementWithoutMature();
    }
    else{
        $sql = initSqlStatementWithMature();
    }
    
    $statement = $conn->prepare($sql);
    $statement->execute();
    
    $lists = $statement->get_result();
    
    $data = array();
    
    while ($row = $lists->fetch_assoc()){
        $data[] = $row;
    }

    if($_SESSION['isChildAccount'] == 1){
        if($_POST['type'] == "all"){
            $sql = "SELECT COUNT(wl.id) FROM watch_lists AS wl JOIN movies AS m ON m.id = wl.movieId WHERE isMature = 0 AND profileId = " . $_POST['profileId'];
        }
        else if($_POST['type'] == "tv-shows"){
            if($_POST['genre'] == "all"){
                $sql = "SELECT COUNT(wl.id) FROM watch_lists AS wl JOIN movies AS m ON m.id = wl.movieId WHERE isMature = 0 AND isSeries = 1 AND profileId = " . $_POST['profileId'];
    
            }
            else{
                $sql = "SELECT COUNT(wl.id) FROM watch_lists AS wl JOIN movies AS m ON m.id = wl.movieId WHERE isMature = 0 AND movieGenreId = " . $_POST['genre'] . " AND isSeries = 1 AND profileId = " . $_POST['profileId'];
            }
        }
        else if($_POST['type'] == "movies"){
            if($_POST['genre'] == "all"){
                $sql = "SELECT COUNT(wl.id) FROM watch_lists AS wl JOIN movies AS m ON m.id = wl.movieId WHERE isMature = 0 AND isSeries = 0 AND profileId = " . $_POST['profileId'];
    
            }
            else{
                $sql = "SELECT COUNT(wl.id) FROM watch_lists AS wl JOIN movies AS m ON m.id = wl.movieId WHERE isMature = 0 AND movieGenreId = " . $_POST['genre'] . " AND isSeries = 0 AND profileId = " . $_POST['profileId'];
            }
        }
    }
    else{
        if($_POST['type'] == "all"){
            $sql = "SELECT COUNT(id) FROM watch_lists WHERE profileId = " . $_POST['profileId'];
        }
        else if($_POST['type'] == "tv-shows"){
            if($_POST['genre'] == "all"){
                $sql = "SELECT COUNT(wl.id) FROM watch_lists AS wl JOIN movies AS m ON m.id = wl.movieId WHERE isSeries = 1 AND profileId = " . $_POST['profileId'];
    
            }
            else{
                $sql = "SELECT COUNT(wl.id) FROM watch_lists AS wl JOIN movies AS m ON m.id = wl.movieId WHERE movieGenreId = " . $_POST['genre'] . " AND isSeries = 1 AND profileId = " . $_POST['profileId'];
            }
        }
        else if($_POST['type'] == "movies"){
            if($_POST['genre'] == "all"){
                $sql = "SELECT COUNT(wl.id) FROM watch_lists AS wl JOIN movies AS m ON m.id = wl.movieId WHERE isSeries = 0 AND profileId = " . $_POST['profileId'];
    
            }
            else{
                $sql = "SELECT COUNT(wl.id) FROM watch_lists AS wl JOIN movies AS m ON m.id = wl.movieId WHERE movieGenreId = " . $_POST['genre'] . " AND isSeries = 0 AND profileId = " . $_POST['profileId'];
            }
        }
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