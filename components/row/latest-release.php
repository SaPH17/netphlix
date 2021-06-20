<?php

$rowTitle = 'Latest Release';
$isMyList = false;
$isWatchList = false;

$sql = "SELECT * FROM movies ORDER BY releaseDate DESC LIMIT 6";

$statement = $conn->prepare($sql);
$statement->execute();

$rowData = $statement->get_result();

include './components/row/row.php'

?>