<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>netPHlix</title>
    <link rel="icon" href="./assets/website/icon.ico">
    <link rel="stylesheet" href="./components/header1/header1.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/login.css">
</head>
<body>
<?php 
    include './database/db.php';     
    require_once './utility/encryptionHelper.php';
?>


<div class="container">
    <?php 
        include './components/header1/header1.php';
    ?>
    <div class="content">
        <div class="login-container">
            <div class="login-title">
                Sign In
            </div>
            <form action="./controller/loginController.php" method="post">
                <input type="text" 
                        class="input" 
                        name="email" 
                        placeholder="Email" 
                        value=<?php
                                if(isset($_COOKIE['email'])){
                                    echo $_COOKIE['email'];
                                }
                                else if(isset($_SESSION['email'])){
                                    echo $_SESSION['email'];
                                    unset($_SESSION['email']);
                                }
                                ?>>
                <input type="password" 
                        class="input" 
                        name="password" 
                        placeholder="Password" 
                        value=<?php
                                if(isset($_COOKIE['password'])){
                                    echo decrypt($_COOKIE['password']);
                                }
                                else if(isset($_SESSION['password'])){
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
                <button type="submit" class="login-button" name="action" value="login">Sign In</button>
                <div class="remember-me-group">
                    <input type="checkbox" name="remember-me" class="remember-me" id="remember-me">
                    <label for="remember-me" class="remember-me-label unselectable">Remember Me</label>
                </div>
            </form>
            <div class="login-footer">
                New to netPHlix? <a href="./register.php">Sign up here</a>
            </div>
        </div>
    </div>
</div>
</body>
</html>