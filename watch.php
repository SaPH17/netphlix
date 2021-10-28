<?php
    require './database/db.php';  

    if(!isset($_SESSION['profileId'])){
        header('location: profile-selection.php');
        return;
    }

    if(!isset($_GET['id']) || !isset($_GET['episode'])){
        header('location: browse.php');
        return;
    }

    $sql = "SELECT * FROM movie_episodes WHERE movieId = " . $_GET['id'] . " AND count = " . $_GET['episode'];
    $statement = $conn->prepare($sql);
    $statement->execute();

    $res = $statement->get_result();

    if($res->num_rows == 0){
        header('location: browse.php');
        return;
    }

    $data = $res->fetch_assoc();
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
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/watch.css">
</head>
<body>
    <div class="content">
        <video src=<?= $data['video'] ?> controls autoplay muted class="watch-video" id="watch-video"></video>
        <div class="overlay">
            <div class="back-btn" onclick="window.history.back()">
                <i class="fas fa-arrow-left"></i>
            </div>
        </div>
    </div>
    <?php
        $sql = "SELECT * FROM watch_histories WHERE profileId = " . $_SESSION['profileId'] . " AND movieEpisodeId = " . $data['id'];
        $statement = $conn->prepare($sql);
        $statement->execute();

        $res = $statement->get_result();

        if($res->num_rows == 0){
            $sql = "INSERT INTO watch_histories VALUES(null, " . $_SESSION['profileId']. ", " . $data['id'] . ", '0' )";
            $statement = $conn->prepare($sql);
            $statement->execute();
        }
    ?>
</body>
<script src="./script/jquery-3.5.1.js"></script>
<script>
    var profileId = <?php echo $_SESSION['profileId'] ?>;
    var episodeId = <?php echo $data['id'] ?>
</script>
<script src="./script/watch.js"></script>
</html>