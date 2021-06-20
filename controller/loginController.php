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

    if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['action']) && $_POST['action'] == 'login'){
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
            $output = false;

            $sql = "SELECT * FROM accounts WHERE email = ?";

            $statement = $conn->prepare($sql);
            $statement->bind_param("s", $email);
            $statement->execute();

            $res = $statement->get_result();

            if($res->num_rows > 0){
                $data = $res->fetch_assoc();

                $output = decrypt($data['password']);
                if($output == $password){

                    $_SESSION['accountId'] = $data['id'];

                    if(isset($_POST["remember-me"])){
                        setcookie("email", $email, time() + 60 * 60 * 24 * 7, "/", null);
                        setcookie("password", $data['password'], time() + 60 * 60 * 24 * 7, "/", null);
                    }

                    header('location: ../profile-selection.php');
                    return;
                }
                else{
                    $_SESSION['error'] = 'Wrong username or password!';
                }
            }
        }

        header('location: ../login.php');
    }