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
<body>
    <div class="container">
        <?php
            include './components/header1/header1.php';
        ?>
        <div class="content">
            <div class="title">
                Who's watching?
            </div>
            <div class="profiles">
                <?php
                    $i = 0;
                    while($row = $profiles->fetch_assoc()){
                        $i++;
                ?>
                        <form action="./controller/profileController.php" method="post">
                            <input type="hidden" name="action" value="switch">
                            <input type="hidden" name="profileId" value=<?php echo $row['id'] ?>>
                            <div class="profile" onclick="switchProfile(<?php echo $i ?>)">
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
    <script>
        function switchProfile(index){
            document.querySelectorAll("form")[index-1].submit()
        }
    </script>
</body>
</html>