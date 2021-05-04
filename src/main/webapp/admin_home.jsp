
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../../../favicon.ico">
        <title>Instagram</title>
    
        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

      <!-- Custom styles for this template -->
      <link href="css/carousel.css" rel="stylesheet">
      <link href="css/Wendy.css" rel="stylesheet">
    </head>    
<body>    
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="nav-identity" href="index.html"><img src="https://en.instagram-brand.com/wp-content/themes/ig-branding/prj-ig-branding/assets/images/ig-logo.svg" class="nav-identity__logo" alt="Instagram" width="36" height="36"></a><br>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="index.html">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./about.html">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./contact.html">Contact Us</a>
                </li>
            </ul>
          <div style="padding:5" id="signin">
          
            <form action="ViewProfileServlet">
           	 <button type="submit" class="btn btn-outline-success" >
				  View Profile 
			</button>
		  </form>
		  
		 <form action="DeleteServlet ">
		     <button type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="updateModal">
				 Edit Profile
			</button>
		</form>
			
			<form action="DeleteServlet ">
		     	 <button type="button" class="btn btn-outline-primary">
					 Delete Profile
				</button>
			</form>
			
			<form action="FriendListServlet ">
				<button type="submit" class="btn btn-outline-success"  >
					Friend List
				</button>
			</form>
			
			 <form action="LogoutServlet">
		      	<button type="submit" class="btn btn-outline-primary">
					 Logout
				</button>
			</form>
          </div>
        </div>
    </nav>
      <br>
     

    <div class="modal fade" id="registerModal" aria-hidden="true">
       <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Join Us & get Connected!</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>      
            <div class="modal-body">
             <form class="form-signin" action="InstagramController" method="post" name="regform">
                <input type="text" class="form-control" placeholder="First name" name="fname" required autofocus />
                <br>
                <input type="text" class="form-control" placeholder="Surname" name="sname" />
                <br>
                <input type="email" class="form-control" placeholder="Email address" name="email" onblur="startAjax();"
                  required />
                <br>
                <input type="password" class="form-control" placeholder="Password" name="password" required>
                <br>
                <input type="number" id="phn" class="form-control" placeholder="Phone number" name="phone" maxlength="10"
                  required>
            </div>
             <div class="modal-footer">
              <div id="message" style="float:left;position: relative;left: -173px; color:red;"></div>
              <button type="submit" class="btn btn-primary" id="register">Done</button>
              </form>
            </div>
          </div>
        </div>
      </div>

    
      <div class="modal fade" id="loginModal">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Please Sign in! </h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <div class="container">
                <form class="form-signin" action="InstagramLogin" method="post" name="loginform">
                  <input type="email" id="inputEmail" class="form-control" placeholder="Email address" name="email" required
                    autofocus>
                  <br>
                  <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="password"
                    required>
                  <br>
              </div>
            </div>
            <div class="modal-footer">
              <div id="message1" style="float:left;color:red;"></div>
              <label><a href="#">Forgot Password?</a></label>
              <button class="btn btn-success" type="submit"">Sign in</button>
              </form>
            </div>
          </div>
        </div>
      </div>

      
      <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol> 
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img class="first-slide" src="images/1.jpg" alt="First slide">
            <div class="container">
              <div class="carousel-caption">
                <br>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img class="second-slide" src="images/2.jpg" alt="Second slide">
            <div class="container">
              <div class="carousel-caption text-right">
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img class="third-slide" src="images/3.jpg" alt="Third slide">
            <div class="container">
              <div class="carousel-caption text-right">
              </div>
            </div>
          </div>
        </div>
        <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
        <br>
        <br>
      </div>

    
      <!-- Marketing messaging and featurettes
          ================================================== -->
      <!-- Wrap the rest of the page in another container to center all the content. -->
    
<div class="container marketing">
        <!-- Three columns of text below the carousel -->
        <div class="row">
          <div class="col-lg-4">
            <img class="rounded-circle" src="images/4.jpg" alt="Generic placeholder image" width="140" height="140">
            <br>
            <br>
            <p><b><i>If you have not downloaded the Instagram app, you can grab it from the App Store, Google Play Store, or
                  Microsoft Store.
                  When you create your Instagram account on the mobile app, the app will guide you through a few basic steps
                  for getting set up. Here are two things to take note of:</i></b></p>
    

          </div><!-- /.col-lg-4 -->
          <div class="col-lg-4">
            <img class="rounded-circle" src="images/5.jpg" alt="Generic placeholder image" width="140" height="140">
            <br>
            <br>
            <p><b><i>Your Instagram profile photo will be displayed as a circle. If you are using your business logo, be
                  sure to keep it in the center of your image. Also, as your profile image will look relatively small in the
                  app, you might want to use a prominent logo mark, instead of a logo with text.</i></b></p>    
          </div>
          
          
          <!-- /.col-lg-4 -->
          <div class="col-lg-4">
            <img class="rounded-circle" src="images/6.jpg" alt="Generic placeholder image" width="140" height="140">
            <br>
            <br>
            <p><b><i>"The app will not prompt you to fill out your profile information but it’ll be great to do so. To fill
                  out your profile information, go to your profile in the app and tap on “Edit Profile”. The two fields to
                  fill out is your website and your bio. If you would like to change your Instagram username (i.e.
                  @username), you can also change it here.</i></b></p>
          </div>
        </div>
        <br>
        <br>



        <!-- FOOTER -->
        <footer class="container">
          <p class="float-right"><a href="#">Back to top</a></p>
          <p>&copy; 2020 Instagram &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
        </footer>
    



        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="js/jquery-3.2.1.slim.min.js"
          integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
          crossorigin="anonymous"></script>
        <script>window.jQuery || document.write('<script src="../../../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
        <script src="../../../../assets/js/vendor/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
        <script src="js/holder.min.js"></script>
    
    </body>
</html>