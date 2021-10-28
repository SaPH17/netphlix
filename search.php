<?php
    require './database/db.php';  

    if(!isset($_SESSION['profileId'])){
        header('location: profile-selection.php');
        return;
    }

    if(!isset($_GET['q'])){
        header('location: browse.php');
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
    <link rel="stylesheet" href="./components/detail-modal/detail-modal.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/search.css">
    <link rel="stylesheet" href="./css/my-list.css">

<body>
    <?php
        include './components/header2/header2.php';
    ?>
    
    <div class="content-container">
        <div class="movies-container" id="movies-container" <?php if(isset($_GET['jbv'])){
            echo 'style="position: fixed"';
        } ?>>
        
        </div>
        <?php
            include './components/detail-modal/detail-modal.php';
        ?>
    </div>
</body>
<script>
    var profileId = <?php echo $profile['id']; ?>;
    var query = "<?php echo $_GET['q'] ?>";
</script>
<script src="./script/jquery-3.5.1.js"></script>
<script src="./components/header2/header2.js"></script>
<script src="./script/movie-image.js"></script>
<script src="./script/search.js"></script>
<script src="./script/detail-modal.js"></script>
</html>