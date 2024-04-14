<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>

<?php session_start(); 

if (!isset($_SESSION["username"]) && !isset($_SESSION["password"])) {
    ?>
    <div class="alert alert-danger">
        <a href="login.php" class="alert-link">Please login first!</a>
    </div>

    <script>
        window.setTimeout(function(){
            window.location.href = "login.php";
        }, 2000);
    </script>
    <?php
    exit();
}

if ($_SESSION["username"] != "Admin" && $_SESSION["password"] != "Admin") {
    ?>
    <div class="alert alert-danger">
        <a href="login.php" class="alert-link">Please log in with the correct user!</a>
    </div>

    <script>
        window.setTimeout(function(){
            window.location.href = "productList.php";
        }, 2000);
    </script>
    <?php
    exit();

}

?>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img src="img/Pet Haven 247.png" width="30" height="24" class="d-inline-block align-text-top">
            Pet Haven 24/7
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarText">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" href="m_control.php">Management</a>
                </li>
            </ul>
            <a class="btn btn-outline-success" href='m_logout.php'>Logout</a>
        </div>
    </div>
</nav>
