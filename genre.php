<?php
    require './database/db.php';  

    if(!isset($_SESSION['profileId'])){
        header('location: profile-selection.php');
        return;
    }
    
    if(!isset($_GET['genre'])){
        header('location: genre.php?genre=1');
    }

    $sql = "SELECT * FROM movie_genres WHERE id = " . $_GET['genre'];
    $statement = $conn->prepare($sql);
    $statement->execute();

    $res = $statement->get_result();

    if($res->num_rows == 0){
        header('location: genre.php?page=1');
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="icon" href="./assets/website/icon.ico">
    <link rel="stylesheet" href="./components/header2/header2.css">
    <link rel="stylesheet" href="./components/detail-modal/detail-modal.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./components/row/row.css">
    <link rel="stylesheet" href="./css/my-list.css">
<body>
    <?php 
        include './components/header2/header2.php';
    ?>
    <div class="content-container">
        <div class="content" <?php if(isset($_GET['jbv'])){
            echo 'style="position: fixed"';
        } ?>>
            <div class="title">
                <?= $data['name'] ?> Movies
            </div>
            <div class="images-container" id="images-container">

            </div>
        </div>
        <?php
            include './components/detail-modal/detail-modal.php';
        ?>
    </div>
</body>
<script>
    var profileId = <?php echo $profile['id']; ?>;
    var mylistShown = false
    var genreId = <?php echo $_GET['genre'] ?>
</script>
<script src="./components/header2/header2.js"></script>
<script src="./script/jquery-3.5.1.js"></script>
<script src="./script/movie-image.js"></script>
<script src="./script/genre.js"></script>
<script src="./script/detail-modal.js"></script>
</html>