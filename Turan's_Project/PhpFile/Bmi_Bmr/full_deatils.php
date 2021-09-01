<!DOCTYPE html>
<html>
<head>
   <title>Deatils</title>
    <!--Add page Responsive Web Design link  -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!--Add Bootstrap link-->
      <link rel="stylesheet"href="bootstrap-4.5.0/dist/css/bootstrap.min.css">
</head>
<body>
   <?php

     $connection = new mysqli("localhost","root","","database") or
      die ("connectionc error :" . $connection ->connect_error);

     $infos = $connection ->query("SELECT personalinfos.id,personalinfos.name,personalinfos.inch,personalinfos.kg,personalinfos.age,informations.id,informations.bmi,informations.bmr FROM personalinfos INNER JOIN informations ON personalinfos.id = informations.id ");
    ?>
      <div class="container bg-dark text-center text-white">
         <h1><center>Presonal_Deatils</center></h1>
      </div>
      <div class="container bg-success text-white">
         <table class="table table-hover">
            <tr>
               <th>Name : </th>
               <th>Age : </th>
               <th>Inch : </th>
               <th>Kg : </th>
               <th>BMI : </th>
               <th>BMR : </th>
            </tr>
            <tbody>
               <tr>
       <?php foreach ($infos as $info) : ?>
      <tr>
        <td><?= $info['name']; ?> </td>
        <td><?= $info['age']; ?> </td>
        <td><?= $info['inch']; ?> </td>
        <td><?= $info['kg']; ?> </td>
        <td><?= $info['bmi']; ?> </td>
        <td><?= $info['bmr']; ?> </td>
        
      
      </tr>
    <?php endforeach; ?>
    </tbody>
               </tr>
            </tbody>
         </table>
         <div>
             <footer class=" container bg-dark text-center text-white">
         <tr>
             <td><?php
               echo "<h4 class=text-center>"."Thank you  for using it'</h4>";
               ?>
            </td>
         </tr>
      </footer>
</body>
</html>
