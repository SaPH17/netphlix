<?php
    require './database/db.php';  

    if(!isset($_SESSION['profileId'])){
        header('location: profile-selection.php');
        return;
    }
    else if(isset($_GET['genre']) && !genreExists($_GET['genre'])){
        header('location: movies.php');
        return;
    }


    function genreExists($genre){
        global $conn;
    
        $sql = 'SELECT * FROM movie_genres WHERE id = ' . $genre;
            
        $statement = $conn->prepare($sql);
        $statement->execute();
    
        return $statement->get_result()->num_rows > 0;
    }

    $title = "Movies";
    $url = "movies.php";
    $type = 0;

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
    <link rel="stylesheet" href="./components/header3/header3.css">
    <link rel="stylesheet" href="./components/detail-modal/detail-modal.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./components/spotlight/spotlight.css">
    <link rel="stylesheet" href="./components/row/row.css">
    <link rel="stylesheet" href="./css/tv-shows.css">
</head>
<body>
    <?php 
        include './components/header3/header3.php';
    ?>

    <div class="content-container">
        <div class="content" <?php if(isset($_GET['jbv'])){
            echo 'style="position: fixed"';
        } ?>>
            <?php
                include './components/spotlight2/spotlight2.php';
            ?>
            <div class="movies-container" id="movies-container">

            </div>
        </div>
        <?php
            include './components/detail-modal/detail-modal.php';
        ?>
    </div>
</body>
<script>
    var profileId = <?php echo $profile['id']; ?>;
    var genreId = <?php 
                    if(isset($_GET['genre'])){
                        echo $_GET['genre'];
                    }
                    else{
                        echo "'all'";
                    }
        ?>;
    var randomId = <?php echo $spotlightMovie['id'] ?>;
    var mylistShown = true
</script>
<script src="./script/jquery-3.5.1.js"></script>
<script src="./components/header3/header3.js"></script>
<script src="./script/movies.js"></script>
<script src="./script/movie-image.js"></script>
<script src="./script/my-list-row.js"></script>
<script src="./script/detail-modal.js"></script>
</html>