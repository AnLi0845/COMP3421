<?php include_once('./header.php'); 
?>
<!doctype html>
<html>
<head>
<p style="background-image: url('img/online-shopping2.png')">
<meta charset="utf-8">
<title>Index</title>
<link rel="stylesheet" type="text/css" href="Index.css" />


</head>

<body Style=background-color:LightGray>
<img src="img/online-shopping2.png" width="30%" height="50%"  align="middle" alt=""/>




<div align="middle"><b><h1>Welcome to Pet Haven 24/7!</h1></b></div>

<div class="content">Pet Haven 24/7 is your round-the-clock pet paradise. 
    We offer a safe and welcoming environment for your furry friends, with a 
    dedicated team available 24/7. Explore our well-stocked store for top-quality 
    supplies, expert advice, and a community of pet lovers. Experience convenience 
    and exceptional care at Pet Haven 24/7.</div>


<?php if(!isset($_SESSION['id'])){ ?>
<h1 align="middle">Interested?</h1>
<div class="form">If you're interested , click below to create new account.<br>
    To promote our online shop, the new customer is awarded 500 free dollar.
</div>

<!-- link go to join us form -->
<div class="clickHere"><h1><a href="sign.php"><img src="img/click.png" width=100; height=100;/></a></h1></div><br/>
<?php } ?>

<!-- link go to feedback form -->
<div align="middle"><h1><a href="contactUs.php"><span><img src="img/contactUs.png"/>Contect Us</span></a></h1></div>






</body>
</html>
