<?php

$sql = "SELECT * FROM movie_genres as m JOIN (SELECT id FROM movie_genres ORDER BY RAND() LIMIT 1) as i ON m.id = i.id";

$statement = $conn->prepare($sql);
$statement->execute();

$randomGenre = $statement->get_result()->fetch_assoc();

$rowTitle = $randomGenre['name'] . ' Movies';
$isMyList = false;
$isWatchList = false;

$rowData = [];

$sql = "SELECT * FROM movies as m JOIN (SELECT id FROM movies WHERE movieGenreId = " . $randomGenre['id'] . " ORDER BY RAND() LIMIT 6 ) as i ON m.id = i.id";

$statement = $conn->prepare($sql);
$statement->execute();

$rowData = $statement->get_result();

if(!empty($rowData)){
    include './components/row/row.php';
}
?>