<?php
include_once('./m_header.php');
include_once 'db.php';

?>
<head>
    <meta charset="utf-8">
</head>
<?php
    if(isset($_POST['userID']) && !empty($_POST['userID'])) {
        $userID = $_POST['userID'];
        $username = $_POST['username'];
        $password = $_POST['password'];
        $cashpoint = $_POST['cashpoint'];
        $address = $_POST['address'];
        $phone = $_POST['phone'];
        $email = $_POST['email'];
        $status = $_POST['status'];
    }

if (isset($_POST["action"]) && !empty($_POST["action"])) {
    $action = $_POST['action'];
    echo "$action";
    if (strcmp($action,"Delete User") == 0) {
        $sql1 = "DELETE FROM shoppingcart WHERE `userID`='$userID'";
        $result = mysqli_query($conn, $sql1);

        $sql2 = "DELETE FROM user_order WHERE `userID`='$userID'";
        $result = mysqli_query($conn, $sql2);

        $sql3 = "DELETE FROM `user_info` WHERE `user_info`.`userID`='$userID'";
        $result = mysqli_query($conn, $sql3);



        header("Refresh:0; url=./m_control.php");

    }

}
