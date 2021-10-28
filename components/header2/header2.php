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
                <input type="text" placeholder="Title" class="input" id="search-bar" onkeyup="searchListener()"
                    value=<?php 
                        if(isset($_GET['q'])){
                            echo $_GET['q'];
                        }
                    ?>
                >
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
                        $i = 0;
                        while($row = $profiles->fetch_assoc()){
                    ?>
                        <li class="dropdown-btn profile-btn second-btn">
                            <form action="./controller/profileController.php" method="post">
                                <input type="hidden" name="action" value=<?= $row['pin'] == null ? 'switch' : 'redirect' ?>>
                                <input type="hidden" name="profileId" value=<?php echo $row['id'] ?>>
                            </form>
                            <div class="profile" onclick="switchProfile(<?php echo $i ?>)">
                                <img src=<?php echo '../../assets/website/profile' . $row['picture'] . '.png' ?> alt="">
                                <div class="profile-name">
                                    <?php
                                        echo $row['name'];
                                    ?>  
                                </div>
                            </div>
                        </li>
                    <?php
                        $i++;
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
<script>
    function switchProfile(index){
        document.querySelectorAll("form")[index].submit()
    }

    function searchListener(){
        var search = $("#search-bar").val()
        setTimeout(() => {  

            if(search === $("#search-bar").val()){
                if(search === ""){
                    window.location = '/browse.php'
                }
                else{
                    window.location = '/search.php?q=' + $("#search-bar").val()
                }s
            }

        }, 500);
    }
</script>