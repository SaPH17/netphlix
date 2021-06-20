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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="icon" href="./assets/website/icon.ico">
    <link rel="stylesheet" href="./components/header2/header2.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./components/spotlight/spotlight.css">
    <link rel="stylesheet" href="./components/row/row.css">
    <link rel="stylesheet" href="./css/my-list.css">
<body>
    <?php 
        include './components/header2/header2.php';

        $sql = "SELECT * FROM watch_lists as wl JOIN movies as m ON wl.movieId = m.id WHERE profileId = " . $profile['id'] . " ORDER BY wl.id DESC LIMIT 30";

        $statement = $conn->prepare($sql);
        $statement->execute();
    
        $lists = $statement->get_result();
        
    ?>
    <div class="content">
        <div class="title">
            Latest
        </div>
        <div class="images-container" id="images-container">

        </div>
    </div>
</body>
<script>
    var profileId = <?php echo $profile['id']; ?>
</script>
<script src="./components/header2/header2.js"></script>
<script src="./script/jquery-3.5.1.js"></script>
<script src="./script/latest.js"></script>
</html>