<?php
    include './database/db.php';

    if(!isset($_SESSION['accountId'])){
        header('location: login.php');
        return;
    }

    $accountId = $_SESSION['accountId'];
    $sql = "SELECT * FROM profiles WHERE accountId = ?";

    $statement = $conn->prepare($sql);
    $statement->bind_param("i", $accountId);
    $statement->execute();

    $profiles = $statement->get_result();
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
    <link rel="stylesheet" href="./components/header1/header1.css">
    <link rel="stylesheet" href="./css/profile-selection.css">
</head>
<script>
    var haveError = false
</script>
<body>
    <div class="container">
        <?php
            include './components/header1/header1.php';
        ?>
        <div class="pin-modal" id="pin-modal">
            <div class="close-icon" onclick="closeModal()">
                <svg viewBox="0 0 496.096 496.096">
                    <path fill="currentColor" d="M259.41,247.998L493.754,13.654c3.123-3.124,3.123-8.188,0-11.312c-3.124-3.123-8.188-3.123-11.312,0L248.098,236.686
                    L13.754,2.342C10.576-0.727,5.512-0.639,2.442,2.539c-2.994,3.1-2.994,8.015,0,11.115l234.344,234.344L2.442,482.342
                    c-3.178,3.07-3.266,8.134-0.196,11.312s8.134,3.266,11.312,0.196c0.067-0.064,0.132-0.13,0.196-0.196L248.098,259.31
                    l234.344,234.344c3.178,3.07,8.242,2.982,11.312-0.196c2.995-3.1,2.995-8.016,0-11.116L259.41,247.998z"/>
                </svg>
            </div>
            <div class="sub-header">
                Profile Lock is currently on.
            </div>
            <div class="header">
                Enter your PIN to access this profile
            </div>
            <form action="./controller/profileController.php" method="post" autocomplete="off">
                <div class="input-container">
                <input type="hidden" name="action" value="checkPin">
                    <input type="hidden" id="profile-id-input" name="profileId" value=<?php if(isset($_SESSION['checkedProfileId'])){
                        echo $_SESSION['checkedProfileId'];
                    } ?>>
                    <input type="tel" name="pin" class="pin-input">
                </div>
                <?php
                    if(isset($_SESSION['error'])){
                ?>
                    
                    <div class="error">
                        <?php echo $_SESSION['error']?>
                    </div>

                    <script>
                        var haveError = true;
                    </script>
                <?php
                    unset($_SESSION['error']);
                    }
                ?>
                <button type="submit" class="button" style="margin-top: 1.5em">SUBMIT</button>
            </form>
        </div>
        <div class="content" id="content">
            <div class="title">
                Who's watching?
            </div>
            <div class="profiles">
                <?php
                    $i = 0;
                    while($row = $profiles->fetch_assoc()){
                ?>
                        <form action="./controller/profileController.php" method="post" class="profile-form">
                            <input type="hidden" name="action" value="switch">
                            <input type="hidden" name="profileId" value=<?php echo $row['id'] ?>>
                            <div class="profile" onclick="switchProfile(<?= $i ?> , 
                            <?= $row['pin'] == null ? 'null' : $row['pin'] ?>, <?= $row['id'] ?>)">
                                <div class="profile-image">
                                    <img src=<?php echo './assets/website/profile' . $row['picture'] . '.png'; ?> 
                                            alt="">
                                </div>
                                <div class="profile-name">
                                    <?php
                                        echo $row['name'];
                                    ?>
                                </div>
                            </div>
                        </form>
                <?php
                        $i++;
                    }
                    if($i < 5){
                        $_SESSION['nextPicture'] = $i +1;
                ?>
                        <a class="add-button profile" href="add-profile.php">
                            <div class="profile-image">
                                <i class="fas fa-plus-circle"></i>
                            </div>
                            <div class="profile-name">
                                Add Profile
                            </div>
                        </a>
                <?php
                    }
                ?>
            </div>
            <a class="button" href="manage-profile.php">
                MANAGE PROFILES
            </a>
        </div>
    </div>
</body>
<script src="./script/jquery-3.5.1.js"></script>
<script src="./script/profile-selection.js"></script>
</html>