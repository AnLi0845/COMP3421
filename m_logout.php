<?php include_once('./m_header.php'); ?>
<?php
include_once 'db.php';

$userID = $_SESSION['id'];

session_destroy();   //
setcookie("product_id", "", time()-3600);
setcookie("discount", "", time()-3600);
setcookie("n_totalPrice", "", time()-3600);
setcookie("cashpoint", "", time()-3600);
setcookie("totalPrice", "", time()-3600);
setcookie("remainder", "", time()-3600);
setcookie("type", "", time()-3600);


?>
<div class="alert alert-success">
    <a href="index.php" class="alert-link">You are logout already.</a>
</div>
<script>
    window.setTimeout(function(){
        window.location.href = "index.php";
    }, 1500);
</script>

