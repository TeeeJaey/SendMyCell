<?php

//if (session_status() !== PHP_SESSION_ACTIVE) {session_start();}
if(session_id() == '' || !isset($_SESSION)){session_start();}

include 'config.php';
?>

<!doctype html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Orders|SendMyCell</title>
    <link rel="stylesheet" href="css/foundation.css" />
    <script src="js/vendor/modernizr.js"></script>
  </head>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SendMyCell</title>

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
          <li  ><a href="index.php">Shop</a></li>
          <li><a href="about.php">About</a></li>
          <li > <a href="cart.php">My Cart</a> </li>
          <li class="active"><a href="index.php">My Orders</a></li>
		  
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



    <div class="row" style="margin-bottom:40px; background-color:#fff;box-shadow:5px 5px 15px #888888;">
	   <h3 style="width:80%; margin:auto;margin-top:10px;"><b>My Orders</b><hr></h3>
      <div class="col-12">


        <?php
		if(!isset($_SESSION["username"])){
            echo '<div style="margin:auto;">';
			echo '<p style="width:200px;margin:auto;margin-bottom:300px;">Your orders\' list is empty</p></div>';
        }
		else{
          $user = $_SESSION["username"];
		  $total = 0;
            echo '<table>';
            echo '<tr>';
            echo '<th style="width:80%">Trans. ID</th>';
            echo '<th>Code</th>';
            echo '<th>Name</th>';
            echo '<th>Cost</th>';
            echo '<th>Qty</th>';
            echo '<th>Total</th>';
            echo '<th>Purchase Date</th>';
            echo '</tr>';
          $result = $mysqli->query("SELECT * from orders where email='".$user."'");
          if($result) {
            while($obj = $result->fetch_object()) {
              //echo '<div class="large-6">';
			   echo '<tr>';
                echo '<td>'.$obj->id.'</td>';
                echo '<td>'.$obj->product_code.'</td>';
                echo '<td>'.$obj->product_name.'</td>';
                echo '<td>'.$obj->price.'</td>';
                echo '<td>'.$obj->units.'</td>';
                echo '<td>'.$currency.$obj->total.'</td>';
                echo '<td>'.$obj->date.'</td>';

                echo '</tr>';
				

            }
			
			
          echo '</table>';
          }
		}
		
        ?>
		</div>
	</div>
	</div>
	<style>
		th{display:block; width:100%; margin:auto;}
	</style>
	

	<style>
footer{
			position:absolute;right:0;bottom:0;left:0;margin-top:10px; background-color:#fa6d3b;
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
