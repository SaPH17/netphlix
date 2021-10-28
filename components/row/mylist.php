<?php

$rowTitle = 'My List';
$isMyList = true;
$isWatchList = false;
$leftId = "mylist-left-btn";
$rightId = "mylist-right-btn";
$containerId = "mylist-images-container";
$link = "/my-list.php";

// $rowData = [];

// $sql = "SELECT * FROM watch_lists as wl JOIN movies as m ON wl.movieId = m.id WHERE profileId = " . $profile['id'] . " ORDER BY wl.id DESC LIMIT 7";

// $statement = $conn->prepare($sql);
// $statement->execute();

// $rowData = $statement->get_result();

// if($rowData->num_rows > 0){
    include './components/row/row.php';
// }

?>