<?php
    require './database/db.php';  

    if(!isset($_SESSION['profileId'])){
        header('location: profile-selection.php');
        return;
    }

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>netPHlix</title>
    <link rel="icon" href="./assets/website/icon.ico">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="./components/header2/header2.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./components/detail-modal/detail-modal.css">
    <link rel="stylesheet" href="./components/spotlight/spotlight.css">
    <link rel="stylesheet" href="./components/row/row.css">
    <link rel="stylesheet" href="./css/browse.css">
</head>
<body>
    <?php 
        include './components/header2/header2.php';
    ?>
    <div class="content-container">
        <div class="content" <?php if(isset($_GET['jbv'])){
            echo 'style="position: fixed"';
        } ?>>
            <?php
                include './components/spotlight/spotlight.php';
                include './components/row/watchlist.php';
                include './components/row/latest-release.php';
                include './components/row/random-recommendation.php';
            ?>
        </div>
        <?php
            include './components/detail-modal/detail-modal.php';
        ?>
    </div>
</body>
<script src="./script/jquery-3.5.1.js"></script>
<script src="./components/header2/header2.js"></script>
<script>
    var mylistShown = true
    var profileId = <?php echo $profile['id']; ?>;
    var genreId = <?php echo $randomGenre['id'] ?>;
</script>
<script src="./script/movie-image.js"></script>
<script src="./script/my-list-row.js"></script>
<script src="./script/latest-row.js"></script>
<script src="./script/random-row.js"></script>
<script src="./script/watch-list-row.js"></script>
<script src="./script/browse.js"></script>
<script src="./script/detail-modal.js"></script>
</html>