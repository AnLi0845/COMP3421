<?php include_once('./header.php'); ?>
<html>
<head>
<meta charset="utf-8">
<script src="jquery.js"></script>
</head>
</html>
<?php
include_once 'db.php';
//get from login.php
$username = $_POST["username"];
$password = $_POST["password"];

$sql = "SELECT * FROM user_info WHERE username = '$username' and password = '$password'";
$result = mysqli_query($conn, $sql);
$numOfRecord = mysqli_num_rows($result);

//if admin login
if (strcmp($username,"manager") == 0 && strcmp($password,"manager") == 0) {
    $_SESSION["username"] = "Admin";
    $_SESSION["id"] = "Admin";
    ?>
    <div class="alert alert-success">
        <a href="m_control.php" class="alert-link">Welcome Admin!</a>
    </div>
    <script>
        if(<?=strcmp($username,"manager")?> == 0) {
            window.setTimeout(function(){
                window.location.href = "m_control.php";
            }, 2000);
        }
    </script>
    <?php

//if sql find a record in database
}else if ($numOfRecord == 1) {
    while ($row = mysqli_fetch_array($result)) {
        $_SESSION["id"] = $row["userID"];
        $_SESSION["username"] = $row["username"];
        $_SESSION["cashpoint"] = $row["cashpoint"];
        $_SESSION["password"] = $row["password"];

        $_SESSION["address"] = $row["address"];
        $_SESSION["phone"] = $row["phone"];
        $_SESSION["email"] = $row["email"];
        $_SESSION["status"] = $row["status"];

        //state is disable
        if (strcmp($row["status"],"disable") == 0) {
            ?>
            <div class="alert alert-danger">
                <a href="productList.php" class="alert-link">Please contact Our admin!</a>
            </div>
            <script>
                if(<?=strcmp($row["status"],"disable")?> == 0) {
                    window.setTimeout(function(){
                        window.location.href = "productList.php";
                    }, 2000);
                }
            </script>
            <?php
            session_destroy();
        //can be login
        }else if($_SESSION["username"] == $username && $_SESSION["password"] == $password) {
            $name = $_SESSION["username"];
            ?>
            <div class="alert alert-success">
                <a href="productList.php" class="alert-link">Welcome <?=$name?>!</a>
            </div>
            <script>
                if(<?=strcmp($row["username"],"$username")?> == 0 && <?=strcmp($row["password"],"$password")?> == 0) {
                    window.setTimeout(function(){
                        window.location.href = "productList.php";
                    }, 2000);
                }
            </script>
            <?php
        }
    }
//invalid password or username / password + username
}else {
?>
        <div class="alert alert-danger">
            <a href="login.php" class="alert-link">invalid UserName or Password!</a>
        </div>
        <script>
            if(<?=$numOfRecord?> == 0) {
                window.setTimeout(function () {
                    window.location.href = "login.php";
                }, 2000);
            }
        </script>
        <?php

}
?>



