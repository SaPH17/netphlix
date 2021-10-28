<?php

$rowTitle = 'Latest Release';
$isMyList = false;
$isWatchList = false;
$leftId = "latest-left-btn";
$rightId = "latest-right-btn";
$containerId = "latest-images-container";
$link = "/latest.php";

$sql = "SELECT * FROM movies ORDER BY releaseDate DESC LIMIT 6";

$statement = $conn->prepare($sql);
$statement->execute();

$rowData = $statement->get_result();

if($rowData->num_rows > 0){
    include './components/row/row.php';
}
?>