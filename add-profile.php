<?php
    require './database/db.php';  

    if(!isset($_SESSION['nextPicture'])){
        header('location: profile-selection.php');
        return;
    }

    if(!isset($_SESSION['accountId'])){
        header('location: login.php');
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
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./components/header1/header1.css">
    <link rel="stylesheet" href="./css/add-profile.css">
</head>
<body>
    <div class="container">
        <?php
            include './components/header1/header1.php';
        ?>
        <div class="wrapper">
            <div class="content">
                <div class="title">
                    Add Profile
                </div>
                <div class="subtitle">
                    Add a profile for another person watching netPHlix
                </div>
                <form action="./controller/profileController.php" method="post" id="add-form">
                    <div class="input-wrapper">
                        <div class="input-container">
                            <input type="hidden" name="action" value="create">
                            <div class="image">
                                <img src=<?php echo './assets/website/profile' . $_SESSION['nextPicture'] . '.png' ?> alt="profile-picture">
                            </div>
                            <input type="text" class="input" placeholder="Name" name="name">
                            <div class="kid-group">
                                <input type="checkbox" name="kid" id="kid" >
                                <label for="kid" class="unselectable">Kid?</label>
                            </div>
                        </div>
                        <?php
                            if(isset($_SESSION['error'])){
                        ?>
                                <div class="error">
                                    <?php echo $_SESSION['error']?>
                                </div>
                        <?php
                                unset($_SESSION['error']);
                            }
                        ?>
                    </div>
                    
                </form>    
                <div class="button-container">
                    <div class="btn btn-continue" onclick="document.getElementById('add-form').submit()">
                        CONTINUE
                    </div>
                    <a class="btn btn-cancel" href="./profile-selection.php">
                        CANCEL
                    </a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>