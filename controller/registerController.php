<?php
    require '../database/db.php';
    require_once '../utility/encryptionHelper.php';  

    function checkAlphaNum($string){
        $flag1 = false;
        $flag2 = false;
        for($i = 0; $i < strlen($string); $i++){
            if(is_numeric($string[$i])){
                $flag1 = true;
            }
            if(ctype_alpha($string[$i])){
                $flag2 = true;
            }
        }

        return $flag1 && $flag2;
    }

    if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['action']) && $_POST['action'] == 'register'){
        $email = $_POST['email'];
        $password = $_POST['password'];

        if($email == '' || $password == ''){
            $_SESSION['error'] = "All fields need to be filled!";
            $_SESSION['email'] = $email;
            $_SESSION['password'] = $password;
        }
        else if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
            $_SESSION['error'] = "Email is not valid!";
            $_SESSION['email'] = $email;
            $_SESSION['password'] = $password;
        }
        else if(strlen($password) < 5){
            $_SESSION['error'] = "Password must be atleast 5 characters!";
            $_SESSION['email'] = $email;
            $_SESSION['password'] = $password;
        }
        else if(!checkAlphaNum($password)){
            $_SESSION['error'] = 'Password must contain alphabet and number!';
            $_SESSION['email'] = $email;
            $_SESSION['password'] = $password;
        }
        else{
            $output = encrypt($password);
            
            $sql = "INSERT INTO accounts VALUES(null, ?, ?)";

            $statement = $conn->prepare($sql);
            $statement->bind_param('ss', $email, $output);
        
            $statement->execute();
            header("location: ../login.php");
            return;
        }

        header('location: ../register.php');
    }

?>