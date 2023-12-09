<!doctype html>
<html lang="en">
  <head>
  	<title>Secured Login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="lgn_tmp/css/style.css">

	</head>
	<body class="img js-fullheight" style="background-image: url(lgn_tmp/images/bg.jpg);">
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Secured Login</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
		      	
		      	<form action="logchk.jsp" method="post" class="signin-form">
		      		<div class="form-group">
		      			<input type="text" autocomplete="off" name="uname" class="form-control" placeholder="Username" required>
		      		</div>
	            <div class="form-group">
	              <input id="password-field" type="password" name="pass" class="form-control" placeholder="Password" required>
	              <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
	            </div>
	            <div class="form-group">
	            	<button type="submit" name="valid" class="form-control btn btn-primary submit px-3">Login</button>
	            </div>
	            <div class="form-group d-md-flex">
	            	<div class="w-50">
		            	
								</div>
								<div class="w-50 text-md-right">
									<a href="fpass1.jsp" style="color: #fff">Forgot Password</a>
								</div>
	            </div>
	          </form>
	          <p class="w-100 text-center">&mdash; or Sign Up &mdash;</p>
	          <div class="social d-flex text-center">
	          	<a href="farmer_regf.jsp" class="px-2 py-2 mr-md-1 rounded"><span class="ion-logo-facebook mr-2"></span><i class="fa fa-user"></i> Farmer Reg.</a>
	          </div>
		      </div>
				</div>
			</div>
		</div>
	</section>

	<script src="lgn_tmp/js/jquery.min.js"></script>
  <script src="lgn_tmp/js/popper.js"></script>
  <script src="lgn_tmp/js/bootstrap.min.js"></script>
  <script src="lgn_tmp/js/main.js"></script>

	</body>
</html>

