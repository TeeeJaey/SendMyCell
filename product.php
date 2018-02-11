<?php
//if (session_status() !== PHP_SESSION_ACTIVE) {session_start();}
if(session_id() == '' || !isset($_SESSION)){session_start();}
include 'config.php';

if(!isset($_GET['id']))
	$product_id = 5;
else
	$product_id = $_GET['id'];

?>

<!doctype html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Product|SendMyCell</title>

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
        <ul style="padding-right:22%;  " class="right">
          <li><a href="index.php">Shop</a></li>
          <li ><a href="about.php">About</a></li>
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
		width:80%;
		margin:auto;
		margin-top:20px;
		clear:both;
		cursor:pointer;
		background: #0078A0;
		border: none;
		color: #fff;
		padding:2px;
		}
	.cart_button:hover{
		background: #5c93f2;		
	}
		@media screen and (max-width: 520px) {
		.cart_button{
			margin-left:-25%;
			width:190px;
		}
	}	
	</style>


    <div class="row" style="background-color:#fff; margin-bottom:50px; box-shadow:5px 5px 15px #888888;">
      
      <h3 style="width:80%; margin:auto;margin-top:10px;"><b>Product details</b><hr></h3>
		<div  class="row " style="width:80%; min-height:50px; margin:auto;margin-top:10px;">
		<?php

          $result = $mysqli->query("SELECT * FROM products WHERE id = ".$product_id);

            while($obj = $result->fetch_object()) {
				
				echo '<h3  style="margin:auto;">'.$obj->product_name.'</h3></div>';
				echo '<div  class="row" style="width:80%; margin:auto;margin-bottom:50px;">';
				echo '<div style="margin:auto;" class="col-sm-4  col-6" ><br>';
					echo '<img style="width:80%;margin:auto;" src="images/products/'.$obj->product_img_name.'" ></img>';
					echo '<a style="width:80%;margin:auto;" href="update-cart.php?action=add&id='.$obj->id.'">';
						echo '<button class="cart_button">';
						echo '<img style="width:40px;" src="images/cart.png"></img>';
					echo 'Add to Cart</button></a>';
				echo '</div>';
				echo '<div class=" col-sm-8 col-12" >';
					echo '<h3 style="margin-top:20px;">'.$currency.$obj->price.'</h3>';
 
              //echo '<p><strong>Product Code</strong>: '.$obj->product_code.'</p>';
					echo '<h6><strong>Description</strong>:<br></h6>';
                    echo '<div style="min-height:50px" class="row">';
						echo '<div style="background-color:#f1f3f6;" class="card col-4"><b style="font-size:14px;margin:auto;">Memory</b></div>';
						echo '<div class="card col-8"><p style="font-size:14px;margin:auto;margin-left:0;">'.$obj->memory.'</p></div>';
					echo '</div>';
					echo '<div style="min-height:50px" class="row">';
						echo '<div style="background-color:#f1f3f6;" class="card col-4"><b style="font-size:14px;margin:auto;">Display</b></div>';
						echo '<div class="card col-8"><p style="font-size:14px; margin:auto;margin-left:0;">'.$obj->display.'</p></div>';
					echo '</div>';
					echo '<div style="min-height:50px" class="row">';
						echo '<div style="background-color:#f1f3f6;" class="card col-4"><b style="font-size:14px;margin:auto;">Camera</b></div>';
						echo '<div class="card col-8"><p style="font-size:14px; margin:auto;margin-left:0;">'.$obj->camera.'</p></div>';
					echo '</div>';
					echo '<div style="min-height:50px" class="row">';
						echo '<div style="background-color:#f1f3f6;" class="card col-4"><b style="font-size:14px;margin:auto;">Battery</b></div>';
						echo '<div class="card col-8"><p style="font-size:14px; margin:auto;margin-left:0;">'.$obj->battery.'</p></div>';
					echo '</div>';
					echo '<div style="min-height:50px" class="row">';
						echo '<div style="background-color:#f1f3f6;" class="card col-4"><b style="font-size:14px;margin:auto;">OS platform</b></div>';
						echo '<div class="card col-8"><p style="font-size:14px; margin:auto;margin-left:0;">'.$obj->os.'</p></div>';
					echo '</div>';
					echo '<div style="min-height:50px;" class="row">';
						echo '<div style="background-color:#f1f3f6;" class="card col-4"><b style="font-size:14px;margin:auto;">Connectivity</b></div>';
						echo '<div class="card col-8"><p style="font-size:14px; margin:auto;margin-left:0;">'.$obj->connect.'</p></div>';
					echo '</div>';
					echo '<div style="min-height:50px" class="row">';
						echo '<div style="background-color:#f1f3f6;" class="card col-4"><b style="font-size:14px;margin:auto;">Processor</b></div>';
						echo '<div class="card col-8"><p style="font-size:14px; margin:auto;margin-left:0;">'.$obj->processor.'</p></div>';
					echo '</div>';
					echo '<div style="min-height:50px;" class="row">';
						echo '<div style="background-color:#f1f3f6;" class="card col-4"><b style="font-size:14px;margin:auto;">Other features</b></div>';
						echo '<div class="card col-8"><p style="font-size:14px; margin:auto;margin-left:0;">'.$obj->features.'</p></div>';
					echo '</div>';
			  echo '</div>';

			}
          $_SESSION['product_id'] = $product_id;


          echo '</div>';
          echo '</div>';
          ?>





	
	
    <!-- Footer -->
    <footer class="py-3 "  style="background-color:#fa6d3b;">
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
