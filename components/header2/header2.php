<?php

    $sql = "SELECT * FROM profiles WHERE id = ?";

    $statement = $conn->prepare($sql);
    $statement->bind_param("i", $_SESSION['profileId']);
    $statement->execute();

    $profile = $statement->get_result()->fetch_assoc();

    $sql = "SELECT * FROM profiles WHERE accountId = ? AND id != ?";

    $statement = $conn->prepare($sql);
    $statement->bind_param("ii", $_SESSION['accountId'], $_SESSION['profileId']);
    $statement->execute();

    $profiles = $statement->get_result();

?>

<header class="header2" id="header">
    <div class="logo-container">
        <img src="./assets/website/logo.png" alt="" class="logo">
    </div>
    <ul class="nav-links">
        <li class="nav-btn"><a href="./browse.php">Home</a></li>
        <li class="nav-btn"><a href="./tv-shows.php">TV Shows</a></li>
        <li class="nav-btn"><a href="./movies.php">Movies</a></li>
        <li class="nav-btn"><a href="./latest.php">Latest</a></li>
        <li class="nav-btn"><a href="./my-list.php">My List</a></li>
    </ul>
    <ul class="second-nav-links">
        <li class="nav-btn">
            <div class="search-container" id="search-container">
                <i class="fas fa-search search"></i>
                <input type="text" name="" placeholder="Title" class="input">
            </div>
        </li>
        <li class="nav-btn profile-container">
            <div class="picture-wrapper">
                <img src=<?php echo './assets/website/profile' . $profile['picture'] . '.png'; ?> 
                    alt="">
                <div class="triangle"></div>
            </div>
            <i class="fas fa-caret-down down"></i> 
            <ul class="dropdown">
                <div class="profile-section">
                    <?php
                        while($row = $profiles->fetch_assoc()){
                    ?>
                        <li class="dropdown-btn profile-btn second-btn">
                            <div class="profile">
                                <img src=<?php echo '../../assets/website/profile' . $row['picture'] . '.png' ?> alt="">
                                <div class="profile-name">
                                    <?php
                                        echo $row['name'];
                                    ?>  
                                </div>
                            </div>
                        </li>
                    <?php
                        }
                    ?>
                    <li class="dropdown-btn second-btn"><a href="../../manage-profile.php">Manage Profiles</a></li>
                </div>
                <div class="other-section">
                    <li class="dropdown-btn second-btn"><a href="../../controller/logoutController.php">Sign out of netPHlix</a></li>
                </div>
            </ul>
        </li>
    </ul>
</header>