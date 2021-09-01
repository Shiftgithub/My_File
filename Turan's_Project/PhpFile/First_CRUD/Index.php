<!DOCTYPE html>
<html>
   <head>
      <title> Project </title>
      <!--Add page Responsive Web Design link  -->
      <meta namef="viewport" content="width=device-width, initial-scale=1">
      <!--Add Bootstrap link-->
      <link rel="stylesheet" href="bootstrap-4.5.0/dist/css/bootstrap.min.css">
   </head>
   <body>
      <?php require_once 'Processing.php'; ?>

      <?php if(isset($_SESSION['messege'])): ?>
      <div class="alert alert-<?= $_SESSION['msg_type'] ?>">
         <?php 
            
             echo "<center><marquee><h3>".$_SESSION['messege']."</h3></marquee></center>";
             unset ($_SESSION['messege']);
         ?>
      </div>
      <?php endif; ?>
      <div class="container">
         <?php $connection = new mysqli("localhost","root","","database_crud")or die("Connection error : ".$connection->connect_error);
            $result = $connection->query("SELECT * FROM infos")  or die($connection->error);
            
            ?>
         <div class="row justify-content-center">
            <table class="table">
               <thead>
                  <tr>
                     <th> # </th>
                     <th>ID </th>
                     <th>Name </th>
                     <th>Father Name </th>
                     <th>Mother Name </th>
                     <th>Birth Of Date</th>
                     <th>Contact Number</th>
                     <th>Email </th>
                     <th colspan="2">Action</th>
                  </tr>
               </thead>
               <?php 
                  while ($row = $result->fetch_assoc()):?>
               <tr>
                  <td> <?= $row['id'] ?> </td>
                  <td><?php echo $row['var_id']; ?></td>
                  <td><?php echo $row['name']; ?></td>
                  <td><?php echo $row['f_name']; ?></td>
                  <td><?php echo $row['m_name']; ?></td>
                  <td><?php echo $row['b_day']; ?></td>
                  <td><?php echo $row['ph']; ?></td>
                  <td><?php echo $row['email']; ?></td>
                  <td>
                     <a href="Index.php?edit=<?php echo $row['id']; ?>"
                           class="btn btn-info" >Edit</a>
                     <a href="Processing.php?delete=<?php echo $row['id']; ?>"
                        class="btn btn-danger">Delete</a>
                  </td>
               </tr>
               <?php endwhile ;?>
            </table>
         </div>
         <?php
            pre_r($result->fetch_assoc());
            
            function pre_r($array) {
            	echo '<pre>';
            	print_r($array);
            	echo '</pre>';
            }
            
            ?>
         <div class="row justify-content-center">
            <form method="POST" action="Processing.php" >
               <input type="hidden" name="id" value="<?= $id ?>">
               <div class="form group">
                  <label>ID :</label>
                  <input type="text" value="<?= $var_id ?>" name="var_id" class="form-control" required>
               </div>
               <div class="form group">
                  <label>Name :</label>
                  <input type="text" value="<?= $name ?>" name="name" class="form-control" required>
               </div>
               <div class="form group">
                  <label>Father Name :</label>
                  <input type="text" value="<?= $fathername  ?>" name="fathername" class="form-control" required>
               </div>
               <div class="form group">
                  <label>Mother Name :</label>
                  <input type="text" value="<?= $mothername ?>" name="mothername" class="form-control" required>
               </div>
               <div class="form group">
                  <label>Birth Of Date :</label>
                  <input type="text" value="<?= $bdate ?>" name="bdate" class="form-control" required>
               </div>
               <div class="form group">
                  <label>Contact Number :</label>
                  <input type="text" value="<?= $contact ?>" name="contact" class="form-control" required>
               </div>
               <div class="form group">
                  <label>Email :</label>
                  <input type="text" value="<?= $email ?>" name="email" class="form-control">
               </div>
               <div class="form group text-center"><br> 
               <?php if($update==true): ?>
                  <button type="submit" class="btn btn-warning" name="update">Update</button>
                  <?php else: ?>
                  <button type="submit" class="btn btn-primary" name="submit">Submit</button>
               <?php endif; ?>
               </div>
            </form>
         </div>
      </div>
   </body>
</html>