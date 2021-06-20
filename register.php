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
    <link rel="stylesheet" href="./css/register.css">
</head>
<body>
    <?php include './database/db.php';  ?>

    <div class="container">
        <?php 
            include './components/header1/header1.php';
        ?>
        <div class="content">
            <div class="register-container">
                <div class="register-title">
                    Register
                </div>
                <form action="./controller/registerController.php" method="post">
                    <input type="text" 
                            class="input" 
                            name="email" 
                            placeholder="Email" 
                            value=<?php
                                    if(isset($_SESSION['email'])){
                                        echo $_SESSION['email'];
                                        unset($_SESSION['email']);
                                    }
                                    ?>>
                    <input type="password" 
                            class="input" 
                            name="password" 
                            placeholder="Password" 
                            value=<?php
                                    if(isset($_SESSION['password'])){
                                        echo $_SESSION['password'];
                                        unset($_SESSION['password']);
                                    }
                                    ?>>
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
                    <button type="submit" class="register-button" name="action" value="register">Register</button>
                </form>
                <div class="register-footer">
                    Already have an account? <a href="./login.php">Sign in here</a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>