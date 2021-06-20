<?php
    include './database/db.php';

    if(!isset($_SESSION['accountId'])){
        header('location: login.php');
        return;
    }

    if(!isset($_GET['id'])){
        header('location: manage-profile.php');
        return;
    }

    $id = $_GET['id'];
    $sql = "SELECT * FROM profiles WHERE id = ?";

    $statement = $conn->prepare($sql);
    $statement->bind_param("i", $id);
    $statement->execute();

    $profile = $statement->get_result()->fetch_assoc();
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
    <link rel="stylesheet" href="./css/update-profile.css">
</head>
<body>
    <div class="container">
        <?php
            include './components/header1/header1.php';
        ?>
        <div class="wrapper">
            <div class="content">
                <div class="title">
                    Edit Profile
                </div>
                <div class="profile">
                    <div class="picture">
                        <img src=<?php echo './assets/website/profile' . $profile['picture'] . '.png'; ?> 
                                alt="" width="125px" height="125px">
                    </div>
                    <form action="./controller/profileController.php" method="post" id="update-form">
                        <div class="input-container">
                            <input type="hidden" name="id" value=<?php echo $profile['id'] ?>>
                            <input type="hidden" name="action" value="update">
                            <input type="hidden" name="picture" value=<?php echo $profile['picture'] ?>>
                            <input type="text" placeholder="Name" name="name" class="input" value=<?php echo $profile['name'] ?>>
                            <div class="kid-group">
                                <input type="checkbox" name="kid" id="kid" <?php if($profile['isChildAccount']) echo 'checked' ?>>
                                <label for="kid" class="unselectable">Kid?</label>
                            </div>
                            <input type="password" id="pin" placeholder="PIN" name="pin" class="input" value=<?php echo $profile['pin'] ?>>
                            <label for="pin" class="pin-label">*Leave blank if you don't want any PIN</label>
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
                </div>
                <div class="button-container">
                    <div class="btn btn-save" onclick="document.getElementById('update-form').submit()">
                        SAVE
                    </div>
                    <a class="btn btn-cancel" href="./profile-selection.php">
                        CANCEL
                    </a>
                    <form action="./controller/profileController.php" method="post" id="deleteForm">
                        <input type="hidden" name="action" value="delete">
                        <input type="hidden" name="profileId" value=<?php echo $id ?>>
                        <div class="btn btn-cancel" onclick="document.getElementById('deleteForm').submit()">
                            DELETE ACCOUNT
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>