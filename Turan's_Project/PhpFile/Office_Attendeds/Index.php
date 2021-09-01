<!DOCTYPE html>
<html>
   <head>
      <title>Attended Sheet</title>
      <!--Add page Responsive Web Design link  -->
      <meta value="viewport" content="width=device-width, initial-scale=1">
      <!--Add Bootstrap link-->
      <link rel="stylesheet"href="bootstrap-4.5.0/dist/css/bootstrap.min.css">
   </head>
   <body>
      <div class="container">
         <h1 class="text-center text-primary">Adova Soft</h1>
         <?php if(isset($_SESSION['messege'])): ?>
      <div class="alert alert-<?= $_SESSION['msg_type'] ?>">
         <?php 
            
             echo "<center><marquee><h3>".$_SESSION['messege']."</h3></marquee></center>";
             unset ($_SESSION['messege']);
         ?>
      </div>
      <?php endif; ?>
         <table class="table table-hover text-center">
            <thead >
               <tr>
                  <th>#</th>
                  <th>value </th>
                  <th>Date </th>
                  <th>Time </th>
                  <th>Attended</th>
               </tr>
            </thead>
            <tbody>
               <form method="POST" action="Processing.php">
                  <tr>
                     <td>#</td>
                     <td>Hafijul Islam Hriday<input type="hidden" value="Hafijul Islam" name="name">
                     </td>
                      <td><input type="hidden" value="<?= date('Y/m/d');?>" name="date"><?php  echo date("Y/m/d"); ?> </td>
                     <td><input type="hidden" value="<?= date('h:i:sa');?>" name="time"><?php
                      date_default_timezone_set("Asia/dhaka");echo date("h:i:sa");
                      ?> </td>
                     <td><a><button class="btn btn-success" name="save" value="save">yes
                        </button></a>
                     </td>
                  </tr>
               </form>
               <form method="POST" action="Processing.php">
                  <tr>
                     <td>#</td>
                     <td>Sajib Adhikari<input type="hidden" value="Sojib" name="name">
                     </td>
                     <td><input type="hidden" value="<?= date('Y/m/d');?>" name="date"><?php  echo date("Y/m/d"); ?> </td>
                     <td><input type="hidden" value="<?= date('h:i:sa');?>" name="time"><?php date_default_timezone_set("Asia/dhaka");
                        echo date("h:i:sa"); ?> </td>
                     <td><a><button class="btn btn-success" name="save" value="save">yes
                        </button></a>
                     </td>
                  </tr>
               </form>
               <form method="POST" action="Processing.php">
                  <tr>
                     <td>#</td>
                     <td>Shahin mia Robin <input type="hidden" value="Shahin mia Robin" name="name">
                     </td>
                     <td><input type="hidden" value="<?= date('Y/m/d');?>" name="date"><?php  echo date("Y/m/d"); ?> </td>
                     <td><input type="hidden" value="<?= date('h:i:sa');?>" name="time"><?php date_default_timezone_set("Asia/dhaka");
                        echo date("h:i:sa"); ?> </td>
                     <td><a><button class="btn btn-success" name="save" value="save">yes
                        </button></a>
                     </td>
                  </tr>
               </form>
               <form method="POST" action="Processing.php">
                  <tr>
                     <td>#</td>
                     <td>Bishawjit Mondol Joy<input type="hidden" value="Bishawjit Mondol Joy" name="name">
                     </td>
                     <td><input type="hidden" value="<?= date('Y/m/d');?>" name="date"><?php  echo date("Y/m/d"); ?> </td>
                     <td><input type="hidden" value="<?= date('h:i:sa');?>" name="time"><?php date_default_timezone_set("Asia/dhaka");
                        echo date("h:i:sa"); ?> </td>
                     <td><a><button class="btn btn-success" name="save"  value="save">yes
                        </button></a>
                     </td>
                  </tr>
               </form>
               <form method="POST" action="Processing.php">
                  <tr>
                     <td>#</td>
                     <td>Mamun Mia Turan<input type="hidden" value="Mamun Mia Turan" name="name">
                     </td>
                     <td><input type="hidden" value="<?= date('Y/m/d');?>" name="date"><?php  echo date("Y/m/d"); ?> </td>
                     <td><input type="hidden" value="<?= date('h:i:sa');?>" name="time"><?php date_default_timezone_set("Asia/dhaka");
                        echo date("h:i:sa"); ?> </td>
                     <td><a><button class="btn btn-success" name="save" value="save">yes
                        </button></a>
                     </td>
                  </tr>
               </form>
            </tbody>
         </table>
         </form>
      </div>
   </body>
</html>

