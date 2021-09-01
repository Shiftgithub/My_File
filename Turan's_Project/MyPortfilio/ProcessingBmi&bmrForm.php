<!DOCTYPE html>
<html>
<head>
	<title>Bmr & Bmi</title>
	<!--Add page Responsive Web Design link  -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--Add Bootstrap link-->
	<link rel="stylesheet"href="bootstrap-4.5.0/dist/css/bootstrap.min.css">

</head>
<body>
	<div>
		<?php 
		 $kg = $inch = $years = $gender = $meter = $bmi = $bmr = $bmrmen =  
         $bmrwomen = "" ;

         if ($_SERVER["REQUEST_METHOD"] == "POST"){ 
	        $kg =  $_POST['kg'];
	        $inch  =$_POST['inch'];
	        $years = $_POST['years'];
	        $gender = $_POST['gender'];
	        $meter = $inch*0.0254;
	        $bmi = $kg/pow($meter,2); 
	        $bmrmen = (88.392 + (13.397 * $kg)+(4.799 * $inch)-(5.677 * $years));
	        $bmrwomen = (447.593 + (9.247 * $kg)+(3.098 * $inch)-(4.330 * $years));
      }
		?>


		<div class="container bg-dark text-center text-white">
      <h1>BMI And BMR Calcution Result</h1>
    </div>
  <div class="container" style="background-color:#eee;"> 
  <table class="table table-hover">
  <tbody>
      <tr>      
      <th>BMI : </th>
      <td><?= $bmi; ?></td>
      </tr>
      <tr>
      <th>BMR : </th>
      <td><?php if($gender == "1st"){
         echo $bmrmen;}
        else if($gender == "2nd"){    
         echo $bmrwomen; }
             ?></td>      
      </tr>
    </tbody>
</table>
</div>
 
      </tr>
        <footer class=" container bg-dark text-center text-white"><tr>
   <td><?php if($gender == "1st"){
   echo "<h4 class=text-center>"."Thank you Sir for using it'</h4>";}
  else if($gender == "2nd"){    
   echo  "<h4 class=text-center>"."Thank you Maam for using it'</h4>"; }
  ?></td>     </footer>

	
</body>
</html>