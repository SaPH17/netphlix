<?php
    require '../database/db.php';  

    if(!isset($_SESSION['accountId'])){
        header('location: login.php');
        return;
    }

    if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['action'])){
        if($_POST['action'] == 'create'){
            $name = $_POST['name'];
            if(isset($_POST['kid'])){
                $kid = 1;
            }
            else{
                $kid = 0;
            }

            if($name == ''){
                $_SESSION['error'] = 'Please fill out the name!';
                header('location: ../add-profile.php');
                return;
            }

            $sql = "INSERT INTO profiles VALUES(null, ?, ?, null, ?, ?)";

            $statement = $conn->prepare($sql);
            $statement->bind_param('isii', $_SESSION['accountId'], $name , $_SESSION['nextPicture'], $kid);
        
            $statement->execute();

            unset($_SESSION['nextPicture']);

            header('location: ../profile-selection.php');
            return;
        }
        else if($_POST['action'] == 'update'){
            $id = $_POST['id'];
            $name = $_POST['name'];

            if(isset($_POST['kid'])){
                $kid = 1;
            }
            else{
                $kid = 0;
            }

            if($_POST['pin'] == ''){
                $pin = null;
            }
            else{
                $pin = $_POST['pin'];
            }

            if($pin != '' && strlen($pin) != 4){
                $_SESSION['error'] = 'PIN must be 4 characters long!';
                header('location: ../update-profile.php?id=' . $id . '&picture=' . $_POST['picture']);
                return;
            }
            else if($pin != '' && !is_numeric($pin)){
                $_SESSION['error'] = 'PIN must be numeric!';
                header('location: ../update-profile.php?id=' . $id . '&picture=' . $_POST['picture']);
                return;
            }
            else{
                $sql = "UPDATE profiles SET name = ?, pin = ?, isChildAccount = ? WHERE id = ?";

                $statement = $conn->prepare($sql);
                $statement->bind_param('siii', $name, $pin , $kid, $id);
            
                $statement->execute();

                header('location: ../profile-selection.php');
                return;
            }
        }
        else if($_POST['action'] == 'delete'){
            $profileId = $_POST['profileId'];

            //=============================
            //Delete the associated profile
            //=============================

            $sql = "DELETE FROM profiles WHERE id = ?";

            $statement = $conn->prepare($sql);
            $statement->bind_param('i', $profileId);
        
            $statement->execute();

            //======================================
            //Update the remaining profile's picture
            //======================================

            $sql = "SELECT * FROM profiles WHERE accountId = ?";

            $statement = $conn->prepare($sql);
            $statement->bind_param("i", $_SESSION['accountId']);
            $statement->execute();
        
            $profiles = $statement->get_result();
            $i = 1;
            while($row = $profiles->fetch_assoc()){
                $sql = "UPDATE profiles SET picture = ? WHERE id = ?";

                $statement = $conn->prepare($sql);
                $statement->bind_param('ii' , $i, $row['id']);
            
                $statement->execute();
                $i++;
            }

            header('location: ../profile-selection.php');
            return;
        }
        else if($_POST['action'] == 'switch'){
            $_SESSION['profileId'] = $_POST['profileId'];
            header('location: ../browse.php');
            return;
        }
    }

