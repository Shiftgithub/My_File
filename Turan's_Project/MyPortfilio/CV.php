<!DOCTYPE html>
<html>
   <head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
		<link href="bootstrap.min.css" rel="stylesheet" type="text/css"/>
		<script src="https://kit.fontawesome.com/a076d05399.js"></script>
		
		<style>
			img {
        height: 170px;
        width: 170px;
        border-radius: 50%;
        padding:5px; 
        }
		.like{
			float:right;
			letter-spacing:2px;
		}
		.hgh{
			height:100%;
		}
		</style>
    </head> 
	<body>

		<?php include 'Header.php';?>
 
	<div class="">
        <div class="row">
            <div class="col-sm-4 bg-primary text-light">
			    <br>
				<br>
				<br>
				<center>
					<img src="20115.JPG">
					<h3 class="text-light">Mamun Mohammad Ibrahim Ali (turan)</h3>
					
				</center>
				<br>
				<br>
				<br>
			<div class="row">
				<div class="col-sm-3">
			</div>
			<div class="col-sm-6">
				<li class="bg-dark border border-light shadow-lg p-3 mb-5 bg-white rounded"><a href="Index.php"><h5>HOME</h5></a></li><br>
				<li class="bg-dark border border-light shadow-lg p-3 mb-5 bg-white rounded"><a href="project.php"><h5>PROJECTS</h5></a></li><br>
				<li class="bg-dark border border-light shadow-lg p-3 mb-5 bg-white rounded"><a href="CV.php"><h5>MY CV</h5></a></li><br>
				<li class="bg-dark border border-light shadow-lg p-3 mb-5 bg-white rounded"><a href="FileForm.php"><h5>FORM</h5></a></li><br>
				<li class="bg-dark border border-light shadow-lg p-3 mb-5 bg-white rounded"><a href="#"><h5>BLOGS</h5></a></li><br>
				<li class="bg-dark border border-light shadow-lg p-3 mb-5 bg-white rounded"><a href="#"><h5>CONTACT ME</h5></a></li><br>
			</div>
			<div class="col-sm-3">
			</div>
			</div>
			
			
		</div>
		<div class="col-sm-8 bg-light text-dark">
			
			<div class="container">
				<div class="row">
				
				<div class="col-1">
				</div>
				</div>
			</div>
			<div class="container">
				<div class="row">
				
				<div class="col-1">
				</div>
					<div class="col-sm-10 border border-dark">
						
		<?php include 'TuranCV.php' ;?>
		

					</div>
				<div class="col-1">
				</div>
				</div>
			</div>
			
		</div>
		
	</div>
</div>
	
	<?php include 'Footer.php';?>

    <script src="bootstrap.min.js" type="text/javascript"></script>
   </body>
</html>

