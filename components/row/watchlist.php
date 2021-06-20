<?php

$rowTitle = 'Continue Watching for ' . $profile['name'];
$isMyList = false;
$isWatchList = true;

$rowData = [];

if(!empty($rowData)){
    include './components/row/row.php';
}
?>