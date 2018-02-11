<?php

//if (session_status() !== PHP_SESSION_ACTIVE) {session_start();}
if(session_id() == '' || !isset($_SESSION)){session_start();}

if(isset($_SESSION["username"])){

        header("location:index.php");
}

?>

<!doctype html>
<html class="no-js" lang="en">
  
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Login|SendMyCell</title>

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
          <li> <a href="cart.php">My Cart</a> </li>
          <li><a href="orders.php">My Orders</a></li>
		  
          <?php
          if(isset($_SESSION['username'])){
            echo '<li><a href="account.php">My Account</a></li>';
            echo '<li><a href="logout.php">Log Out</a></li>';
          }
          else{
            echo '<li  class="active"><a href="login.php">Log In</a></li>';
            echo '<li><a href="signup.php">Sign Up</a></li>';
          }
          ?>
        </ul>
      </section>

    </nav>


<script>
function validateForm() {
		
	x = document.forms["myForm"]["username"].value;
    if (x == null || x == "" ) { 
        document.getElementsByName("username")[0].style.border = '1px solid red';	
	}
	else{
		atpos = x.indexOf("@");
         dotpos = x.lastIndexOf(".");
         
         if (atpos < 1 || ( dotpos - atpos < 2 )) 
			document.getElementsByName("username")[0].style.border = '1px solid red';
         else
			document.getElementsByName("username")[0].style.border = '1px solid green';
    }

	x = document.forms["myForm"]["pwd"].value;
    if (x == null || x == ""  || x.length < 9) {  
        document.getElementsByName("pwd")[0].style.border = '1px solid red';	
	}
	else
        document.getElementsByName("pwd")[0].style.border = '1px solid green';
	
	//---------------------

	x = document.forms["myForm"]["username"].value;
    if (x == null || x == "" || x == '\u2718') { 
        document.getElementsByName("username")[0].style.border = '1px solid red';	
        alert("Email ID must be filled out!");	
		return false;
	}
	else{
		atpos = x.indexOf("@");
         dotpos = x.lastIndexOf(".");
         
         if (atpos < 1 || ( dotpos - atpos < 2 )) 
         {
            alert("Please enter correct email ID!");
            document.myForm.EMail.focus() ;
			document.getElementsByName("username")[0].style.border = '1px solid red';
            return false;
         }
         else
			document.getElementsByName("username")[0].style.border = '1px solid green';
    }
	
	x = document.forms["myForm"]["pwd"].value;
	if (x == null || x == "" || x.length < 9) {
        document.forms["myForm"]["pwd"].style.border = '1px solid red';
		alert("Enter your password!");		
		return false;
	}
	else
		document.forms["myForm"]["pwd"].style.border = '1px solid green';

return true;	
}	


</script>
	

    <div class="row" style="background-color:#fff;box-shadow:5px 5px 15px #888888; margin-bottom:50px;">
      <h3 style="width:80%; margin:auto;margin-top:10px;"><b>Log in</b><hr></h3>
	  
      <div style="width:80%; margin:auto;" class="small-12">

        <p>Add your details in below given fields.<br> All fields are mandatory.</p>
		</div>


    <form method="POST" name="myForm" action="verify.php" onsubmit="return validateForm()" style="background-color:#fff;border: 1px solid #fa6d3b; padding:40px; width:80%;margin:auto;margin-bottom:30px;">
      <div class="row">
        <div class="small-12">

          <div class="row">
            <div class="small-4 columns">
              <label for="right-label" class="right inline">Email</label>
            </div>
            <div class="small-6 columns">
              <input type="email" id="right-label" placeholder="abc@xyz.com" name="username">
            </div>
          </div>
          <div class="row">
            <div class="small-4 columns">
              <label for="right-label" class="right inline">Password</label>
            </div>
            <div class="small-6 columns">
              <input type="password" id="right-label" name="pwd">
            </div>
          </div>

          <div class="row">
            <div class="small-2 columns">

            </div>
            <div class="small-4 columns">
              <input type="submit" id="right-label" value="Login" style="background: #0078A0; width:100%; cursor:pointer; border: none; color: #fff; font-family: 'Helvetica Neue', sans-serif; font-size: 1em; padding: 10px;">
			</div>
            <div class="small-4 columns">
				<input type="reset" id="right-label" value="Clear" style="background: #0078A0; width:100%; cursor:pointer;  border: none; color: #fff; font-family: 'Helvetica Neue', sans-serif; font-size: 1em; padding: 10px;">
            </div>
          </div>
        </div>
      </div>
    </form>
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
    <footer class="py-3 "  style="position:absolute;right:0;bottom:0;left:0; background-color:#fa6d3b;">
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
