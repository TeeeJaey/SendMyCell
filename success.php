<?php

//if (session_status() !== PHP_SESSION_ACTIVE) {session_start();}
if(session_id() == '' || !isset($_SESSION)){session_start();}

?>



<!doctype html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Success|SendMyCell</title>

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
        <ul  style="padding-right:22%;  " class="right">
          <li><a href="index.php">Shop</a></li>
          <li  ><a href="about.php">About</a></li>
          <li><a href="cart.php">My Cart</a></li>
          <li><a href="orders.php">My Orders</a></li>
		  
          <?php
          if(isset($_SESSION['username'])){
            echo '<li><a href="account.php">My Account</a></li>';
            echo '<li><a href="logout.php">Log Out</a></li>';
          }
          else{
            echo '<li><a href="login.php">Log In</a></li>';
            echo '<li><a href="signup.php">Sign Up</a></li>';
          }
          ?>
        </ul>
      </section>

    </nav>

	<style>
	.cart_button{
		height:40px;
		margin:auto;
		margin-top:20px;
		clear:both;
		cursor:pointer;
		background: #0078A0;
		border: none;
		color: #fff;
		padding:2px 15px ;
		}
	.cart_button:hover{
		background: #5c93f2;		
	}
	</style>

    <div class="row" style="background-color:#fff; margin-bottom:40px; box-shadow:5px 5px 15px #888888;">
      
      <h3 style="width:80%; margin:auto;margin-top:10px;"><b>Success!</b><hr></h3>
        
		<div  class="row" style="width:80%; margin:auto;margin-top:10px;margin-bottom:50px;">

		<div style="width:100%;" class="col-lg-12" ><br>
			<p>Congrats! Your order has been placed  successfully.<br>
			Your item will be delivered to your address in 3-4 bussiness days. Just joking!:P<br>
			In case you purchased a product, then please check your spam in email for the receipt.<br>
			<p>Check out many more awesome cell phones on our site.</p>
			<a style="" href="index.php">
				<button class="cart_button">Continue shopping</button>
			</a>
			<a style="float:right;" href="orders.php">
				<button class="cart_button">My orders</button>
			</a>
		</div>
    </div>
  </div>

	<style>
	@media screen and (min-width: 768px) {
		footer{
			position:absolute;right:0;bottom:0;left:0;margin-top:10px; background-color:#fa6d3b;
		}
	}	footer{
		 margin-top:10px; background-color:#fa6d3b;
	}

	</style>
    <!-- Footer -->
    <footer class="py-3 "  >
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; SendMyCell 2017</p>
      </div>
      <!-- /.container -->
    </footer>


    <script src="js/vendor/jquery.js"></script>
    <script src="js/foundation.min.js"></script>
    <script>
      $(document).foundation();
    </script>
  </body>
</html>
  
  