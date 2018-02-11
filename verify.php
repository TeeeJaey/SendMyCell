<?php

//if (session_status() !== PHP_SESSION_ACTIVE) {session_start();}
if(session_id() == '' || !isset($_SESSION)){session_start();}

include 'config.php';

$username = $_POST["username"];
$password = $_POST["pwd"];
$flag = 'true';
//$query = $mysqli->query("SELECT email, password from users");

$result = $mysqli->query('SELECT id,email,password,fname,type from users order by id asc');

if($result === FALSE){
  die(mysql_error());
}

if($result){
  while($obj = $result->fetch_object()){
    if($obj->email === $username && $obj->password === $password) {

      $_SESSION['username'] = $username;
      $_SESSION['type'] = $obj->type;
      $_SESSION['id'] = $obj->id;
      $_SESSION['fname'] = $obj->fname;
      header("location:index.php");
    } else {

        if($flag === 'true'){
          redirect();
          $flag = 'false';
        }
    }
  }
}

function redirect() {
	echo '
	   <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>About|SendMyCell</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/shop-homepage.css" rel="stylesheet">
    <link rel="stylesheet" href="css/foundation.css" />
    <script src="js/vendor/modernizr.js"></script>
  </head>
  
  
  <body style="background-color:#f1f3f6">

  
    <!-- Navigation -->
    <nav style="background-color:#ff703b;" class="top-bar" data-topbar role="navigation">
      <ul class="title-area">
        <li class="name">
          <h1></h1>
        </li>
        <li class="toggle-topbar menu-icon"><a href="#"><span></span></a></li>
      </ul>

      <section  class="top-bar-section">
      <!-- Right Nav Section -->
        <ul  style="padding-right:22%; " class="right">
          <li><a href="index.php">Shop</a></li>
          <li><a href="about.php">About</a></li>
          <li><a href="cart.php">My Cart</a></li>
          <li><a href="orders.php">My Orders</a></li>';  

            echo '<li><a href="login.php">Log In</a></li>';
            echo '<li><a href="signup.php">Sign Up</a></li>';
          echo ' 
        </ul>
      </section>

    </nav>
	
    <div class="row" style="background-color:#fff;box-shadow:5px 5px 15px #888888; margin-bottom:50px;">
      <h3 style="width:80%; margin:auto;margin-top:10px;"><b>Verificaion</b><hr></h3>
	  
      <div style="width:80%; margin:auto;" class="small-12">';

  echo '<h1>Invalid Login! <br>Redirecting...</h1></div>';
  header("Refresh: 3; url=login.php");
}


?>
