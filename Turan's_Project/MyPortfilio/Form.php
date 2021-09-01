<!DOCTYPE html>
<html>
<head>
  <title>Form</title>
  <!--Add page Responsive Web Design link  -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
	<!--Add Bootstrap link-->
	<link rel="stylesheet"href="bootstrap-4.5.0/dist/css/bootstrap.min.css">
</head>
<body>

	<div class="container" style="padding-left:370px;"><br>
		<form class="form-inline my-2 my-lg-0" method="POST" action="FileDataEcho.php">
      <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search" name="name" required>
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form><br>
	</div>

	<div class="card">
		<div class="card-body container">
			<div class="col-12 container bg-dark text-white text-center"><h1>Student's Form</h1></div>

			<div class="container"><br>
			    <form method="POST" action="FileProcessing.php" enctype="multipart/form-data">
			    	<div class="row form-group">
			    		<div class="col-2" class="form-group">Name:</div>
						<div class="col-10">
						<input type="text" placeholder="Enter your name" name="name" style="background-color:#eee" required></div>
					</div>
				
				<div class="row form-group">
					<div class="col-2">Father Name:</div>
				    <div class="col-10"><input type="text" placeholder="Enter your father name" name="fathername" style="background-color:#eee" required></div>
				</div>
				
				<div class="row form-group">
					<div class="col-2">Mother Name:</div>
					<div class="col-10"><input type="text" placeholder="Enter your mother name" name="mothername" style="background-color:#eee" required></div>
				</div>
				
				<div class="row form-group">
					<div class="col-2">Gender:</div>
					<div class="col-10">
					<input type="radio" name="gender" value="Male"checked>Male
					<input type="radio" name="gender" value="Female">Female 
					<input type="radio" name="gender" value="Custom">Custom
					</div>
				</div>
				
				<div class="row form-group">
					<div class="col-2"> Email:</div>
					<div class="col-10"><input type="text" placeholder="Enter your email" name="email" style="background-color:#eee" required></div>
				</div>
				
				<div class="row form-group">
					<div class="col-2">Contact Number :</div>
					<div class="col-10"><input type="text" placeholder="Enter your contact number" name="contactnumber" style="background-color:#eee" required></div>
				</div>
				<div class="row form-group">
					<div class="col-2">Select image to upload:</div> 
					<div class="col-10"><input type="file" name="fileToUpload" id="fileToUpload"></div>
			    </div>
				
				<div class="col-2 container"><br><button class="form-control bg-primary text-center text-white" type="submit"name="save"">
				Submit</button></div>
			
			</form>
		</div>
		</div>
	</div>
		<footer>
			<div class="container" style="background-color:black;">
        <marquee>
        <h3 style="color:white">Design by Mamun M.I.A. (turan)
        </h3>
        </marquee>
        </div>
		</footer>

</body>
</html>