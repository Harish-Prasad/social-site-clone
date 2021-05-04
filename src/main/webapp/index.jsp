<%@page import="java.sql.ResultSet"%>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../../../favicon.ico">
        <title>SiteMe</title>
    
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
                <a class="nav-link active" aria-current="page" href="index.html">Home <strong><em><%= session.getAttribute("uid") %></em></strong></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./about.html">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./contact.html">Contact Us</a>
                </li>
            </ul> 
            
            
          <div style="padding:5" id="signin">

          <%@page import="java.sql.ResultSet"%>
          <%!
	            String fname,sname,email,phoneno,password=null;
	            static int c=0;
         %>
         
	     <%
	     ResultSet res=(ResultSet) request.getAttribute("vresult");
	     if(c==0){
	    	 c=1;
	    	 res.next();//will be able to get information of database
	    	 fname=res.getString(1);
	    	 sname=res.getString(2);
	    	 email=res.getString(3);
	    	 password=res.getString(4);
	    	 phoneno=res.getString(5);
	     }
	     %>
	     
        
			
          </div>
        </div>
    </nav>
      <br>
     
<!-- Register Modal -->
 
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

<!-- Login Modal --> 
 
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


 	<%
		if(request.getAttribute("edit_profile_result")!=null){
		out.println("<center><font size=6 color=green> "+request.getAttribute("edit_profile_result")+"</font></center>");
		}
	 %>

<!-- Slider -->
      
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
            <div class="card" style="width: 18rem;">
  				<img class="card-img-top" src="./images/4.jpg" alt="Card image cap">
 				 <div class="card-body">
    				<h5 class="card-title"><strong>Feed</strong></h5>
    				<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    				<a href="#" class="btn btn-primary">Read More</a>
  				</div>
			</div>
          </div><!-- /.col-lg-4 -->
          <div class="col-lg-4">
            <div class="card" style="width: 18rem;">
  				<img class="card-img-top" src="./images/6.jpg" alt="Card image cap">
 				 <div class="card-body">
    				<h5 class="card-title"><strong>Private Chat</strong></h5>
    				<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    				<a href="#" class="btn btn-primary">Read More</a>
  				</div>
			</div>
		</div>
          
          
          <!-- /.col-lg-4 -->
          <div class="col-lg-4">
             <div class="card" style="width: 18rem;">
  				<img class="card-img-top" src="./images/6.jpg" alt="Card image cap">
 				 <div class="card-body">
    				<h5 class="card-title"><strong>Stories</strong></h5>
    				<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    				<a href="#" class="btn btn-primary">Read More</a>
  				</div>
			</div>
          </div>
        </div>
        </div>
        <br>
        <br>
        <br>



<div class="container marketing">
        <!-- Three columns of text below the carousel -->
        <div class="row">
          <div class="col-lg-4">
            <div class="card" style="width: 18rem;">
  				<img class="card-img-top" src="./images/4.jpg" alt="Card image cap">
 				 <div class="card-body">
    				<h5 class="card-title"><strong>Make Reals</strong>></h5>
    				<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    				<a href="#" class="btn btn-primary">Read More</a>
  				</div>
			</div>
          </div><!-- /.col-lg-4 -->
          <div class="col-lg-4">
            <div class="card" style="width: 18rem;">
  				<img class="card-img-top" src="./images/6.jpg" alt="Card image cap">
 				 <div class="card-body">
    				<h5 class="card-title"><strong>Make Friends</strong></h5>
    				<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    				<a href="#" class="btn btn-primary">Read More</a>
  				</div>
			</div>
		</div>
          
          
          <!-- /.col-lg-4 -->
          <div class="col-lg-4">
             <div class="card" style="width: 18rem;">
  				<img class="card-img-top" src="./images/6.jpg" alt="Card image cap">
 				 <div class="card-body">
    				<h5 class="card-title"><strong>Play Games</strong></h5>
    				<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    				<a href="#" class="btn btn-primary">Read More</a>
  				</div>
			</div>
          </div>
        </div>
        </div>
        <br>
        <br>
        <br>


        <!-- FOOTER -->
        <footer class="container">
          <p class="float-right"><a href="#">Go Top</a></p>
          <p>&copy; 2020 <strong>SiteMe</strong>  &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
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