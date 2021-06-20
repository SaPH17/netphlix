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
    <link rel="stylesheet" href="./css/manage-profile.css">
</head>
<body>
    <div class="container">
        <?php
            include './components/header1/header1.php';
        ?>
        <div class="content">
            <div class="title">
                Manage Profiles:
            </div>
            <div class="profiles">
                <?php
                    $i = 0;
                    while($row = $profiles->fetch_assoc()){
                        $i++;
                ?>
                        <a class="profile" href=<?php echo "update-profile.php?id=" . $row['id']?>>
                            <div class="profile-image">
                                <div class="overlay">
                                    <svg viewBox="0 0 32 32"><path fill="currentColor" d="M16 0c8.833 0 16 7.167 16 16 0 8.8-7.167 16-16 16s-16-7.2-16-16c0-8.833 7.167-16 16-16zM16 1.7c-7.9 0-14.3 6.4-14.3 14.3s6.4 14.3 14.3 14.3 14.3-6.4 14.3-14.3-6.4-14.3-14.3-14.3zM22.333 12.9l0.3-0.267 0.867-0.867c0.467-0.5 0.4-0.767 0-1.167l-1.767-1.767c-0.467-0.467-0.767-0.4-1.167 0l-0.867 0.867-0.267 0.3zM18.3 11.1l-8.6 8.6-0.833 3.767 3.767-0.833 0.967-1 7.633-7.6z"></path></svg>
                                </div>
                                <img src=<?php echo './assets/website/profile' . $row['picture'] . '.png'; ?> 
                                            alt="">
                            </div>
                            <div class="profile-name">
                                <?php
                                    echo $row['name'];
                                ?>
                            </div>
                        </a>
                <?php
                    }
                    if($i < 5){
                        $_SESSION['nextPicture'] = $i+1;
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
            <a class="button" href="profile-selection.php">
                DONE
            </a>
        </div>
    </div>
</body>
</html>