<?php

$rowTitle = 'My List';
$isMyList = true;
$isWatchList = false;

$rowData = [];

$sql = "SELECT * FROM watch_lists as wl JOIN movies as m ON wl.movieId = m.id WHERE profileId = " . $profile['id'] . " ORDER BY wl.id DESC LIMIT 6";

$statement = $conn->prepare($sql);
$statement->execute();

$rowData = $statement->get_result();

if(!empty($rowData)){
    include './components/row/row.php';
}


?>