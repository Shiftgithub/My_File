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
	<div class="card">
		<div class="card-body container">
			<div class="col-12 container bg-dark text-white text-center">
				<h1>Student's Form</h1></div>

			<?php

			$name = $fathername = $mothername = $gender =$email =
			$contactnumber = "" ;

			 if ($_SERVER["REQUEST_METHOD"] == "POST"){
			 	    $name =  test_input($_POST['name']);
			        $fathername  = test_input($_POST['fathername']);
			        $mothername = test_input($_POST['mothername']);
			        $gender = test_input($_POST['gender']);
			        $email = test_input($_POST['email']);
			        $contactnumber = test_input($_POST['contactnumber']);
            
        }
            function test_input($data) {
            $data = trim($data);
            $data = stripslashes($data);
            $data = htmlspecialchars($data);
            return $data;
          }
	    		
      $myfile = fopen($name.".php","w+") or die("Unable to open file");
            
      fwrite($myfile,"<!DOCTYPE html>
<html>
<head>
  <title>Form</title>
  <!--Add page Responsive Web Design link  -->
  <meta name='viewport' content='width=device-width, initial-scale=1'>
  <!--Add Bootstrap link-->
  <link rel='stylesheet'  href='bootstrap-4.5.0/dist/css/bootstrap.min.css'>
</head>
<body>
  <div class='card'>
    <div class='card-body container'>
      <div class='col-12 container bg-dark text-white text-center'>
        <h1>Students Form</h1></div>

       

    <div class='container' class='bg-info;'> 
  <table class='table table-hover'>
  <tbody>
      <tr>      
      <th> Name: </th>
      <td>$name</td>
      </tr>
      <tr>      
      <th> Father Name: </th>
      <td> $fathername</td>
      </tr>
      <tr>      
      <th> Mother Name: </th>
      <td> $mothername</td>
      </tr>
      <tr>
      <th> Gender : </th>
      <td> $gender</td>      
      </tr>
      <tr>      
      <th> Email Address: </th>
      <td> $email</td>
      </tr>
      <tr>      
      <th> Contact Number : </th>
      <td> $contactnumber</td>
      </tr>
    </tbody>
</table>    
  </div><footer>
			<div class='container' style='background-color:black;''>
        <marquee>
        <h3 style='color:white'>Design by Mamun M.I.A. (turan)
        </h3>
        </marquee>
        </div>
		</footer>

  </div>
</div>
</body>
</html>");

      fclose($myfile);

			 ?>
			 <div class="container" style="background-color:#eee;"> 
  <table class="table table-hover">
  <tbody>
      <tr>      
      <th> Name: </th>
      <td><?= $name; ?></td>
      </tr>
      <tr>      
      <th> Father Name: </th>
      <td><?= $fathername; ?></td>
      </tr>
      <tr>      
      <th> Mother Name: </th>
      <td><?= $mothername; ?></td>
      </tr>
      <tr>
      <th> Gender : </th>
      <td><?php if($gender == "Male"){
         echo $gender;}
        else if($gender == "Female"){    
         echo $gender; }
          else if($gender == "Custom"){    
         echo $gender; }
             ?></td>      
      </tr>
      <tr>      
      <th> Email Address: </th>
      <td><?= $email; ?></td>
      </tr>
      <tr>      
      <th> Contact Number : </th>
      <td><?= $contactnumber; ?></td>
      </tr>
    </tbody>
</table>		
	</div>
		<footer>
			<div class="container" style="background-color:black;">
        <marquee>
        <h3 style="color:white">Design by Mamun M.I.A. (turan)
        </h3>
        </marquee>
        </div>
		</footer>

	</div>
</div>
</body>
</html>