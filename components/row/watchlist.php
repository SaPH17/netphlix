<?php

$rowTitle = 'Continue Watching for ' . $profile['name'];
$isMyList = false;
$isWatchList = true;
$leftId = "watchlist-left-btn";
$rightId = "watchlist-right-btn";
$containerId = "watchlist-images-container";
$link = "";

$rowData = [];

$sql = "SELECT * FROM watch_histories WHERE profileId = " . $_SESSION['profileId'];

$statement = $conn->prepare($sql);
$statement->execute();

$rowData = $statement->get_result();

if($rowData->num_rows > 0){
    include './components/row/row.php';
}

?>