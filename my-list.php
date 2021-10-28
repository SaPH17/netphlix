<?php
    require './database/db.php';  

    if(!isset($_SESSION['profileId'])){
        header('location: profile-selection.php');
        return;
    }

    if(!isset($_GET['page'])){
        header('location: my-list.php?page=1');
    }

    $sql = "SELECT count(id) FROM watch_lists WHERE profileId = " . $_SESSION['profileId'];
    $statement = $conn->prepare($sql);
    $statement->execute();

    $total_item = $statement->get_result()->fetch_array()[0];
    $total_page = ceil($total_item/30);

    if($total_page > 0 && ($_GET['page'] == '' || $_GET['page'] > $total_page || $_GET['page'] < 1)){
        header('location: my-list.php?page=1');
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
                My List
            </div>
            <div class="images-container" id="images-container">

            </div>
            <div class="page-links">
                
                <?php 
                
                    if($total_page == 0){
                ?>
                    <div class="empty-alert">
                        Your watch list is empty!
                    </div>
                <?php

                    }
                    else{
                        for($i = 1; $i <= $total_page; $i++){
                
                ?>
                    <a class="page-link unselectable" href="./my-list.php?page=<?= $i ?>"><?= $i ?></a>
                <?php

                        }
                    }
                ?>
            </div>
        </div>
        <?php
            include './components/detail-modal/detail-modal.php';
        ?>
    </div>
</body>
<script>
    var profileId = <?php echo $profile['id']; ?>;
    var page = <?php echo $_GET['page'] - 1; ?>
</script>
<script src="./components/header2/header2.js"></script>
<script src="./script/jquery-3.5.1.js"></script>
<script src="./script/movie-image.js"></script>
<script src="./script/my-list.js"></script>
<script src="./script/detail-modal.js"></script>
</html>