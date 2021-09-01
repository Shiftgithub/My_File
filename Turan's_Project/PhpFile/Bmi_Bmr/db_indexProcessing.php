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
         $name = $kg = $inch = $age = $gender = $meter = $bmi = $bmr = $bmrmen =  
           $bmrwomen = "" ;
         
           if ($_SERVER["REQUEST_METHOD"] == "POST"){ 
           $name =  $_POST['name'];
            $kg =  $_POST['kg'];
           $inch  =$_POST['inch'];
           $age = $_POST['age'];
           $gender = $_POST['gender'];
           $meter = $inch*0.0254;
           $bmi = $kg/pow($meter,2); 
           if ($gender == '1st'){
            $bmr = (88.392 + (13.397 * $kg)+(4.799 * $inch)-(5.677 * $age));
           }
           else
           {
            $bmr = (447.593 + (9.247 * $kg)+(3.098 * $inch)-(4.330 * $age));
           }
          
           
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
                  <td><?php echo $bmr; ?>
                  </td>
               </tr>
            </tbody>
         </table>
         <div>
            <center><button class="btn btn-dark text-white"> <a href="full_deatils.php">Click here For Full deatils </a></button> </center>
            <br>
         </div>
         <br>
      </div>
      </tr>
      <footer class=" container bg-dark text-center text-white">
         <tr>
            <td><?php if($gender == "1st"){
               echo "<h4 class=text-center>"."Thank you Sir for using it'</h4>";}
               else if($gender == "2nd"){    
               echo  "<h4 class=text-center>"."Thank you Maam for using it'</h4>"; }
               ?></td>
      </footer>
     <?php
      
         $connection = new mysqli("localhost","root","","database") or die ("connectionc error :" . $connection ->connect_error);
         $personal_infos = "INSERT INTO personalinfos(name,inch,kg,age) VALUES('$name','$inch','$kg','$age')" ;
         $connection->query($personal_infos);

         $database = "INSERT INTO informations(bmi,bmr) VALUES('$bmi','$bmr')" ;
         $connection->query($database);
         ?>
   </body>
</html>

