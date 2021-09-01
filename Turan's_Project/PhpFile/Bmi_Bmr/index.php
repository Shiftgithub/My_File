<!DOCTYPE html>
<html>
   <head>
      <title>BMI And BMR </title>
      <!--Add page Responsive Web Design link  -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!--Add Bootstrap link-->
      <link rel="stylesheet"href="bootstrap-4.5.0/dist/css/bootstrap.min.css">
   <body>
      <div class="card">
         <div class="card-body">
            <div style="height:650px" class="bg-light">
               <div class=" container bg-dark text-center text-white">
                  <h1>BMI And BMR Calculator</h1>
               </div>
               <div>
                  <div style="margin-top: 15px;padding-left:70px">
                     <center>
                        <form method="POST" action="db_indexProcessing.php">
                           Name : <br><br> 	
                           <div class="col-4"><input class="form-control"placeholder="Enter your name" type="text" name="name"style="background-color:#E9EBEE" required></div>
                           Inch : <br><br>
                           <div class="col-4"><input class="form-control"placeholder="Enter your height" type="number" name="inch"style="background-color:#E9EBEE" required></div>
                           kg:<br><br>
                           <div class="col-4"><input class="form-control" placeholder="Enter your weight" type="number" name="kg" style="background-color:#E9EBEE" required></div>
                           Years:<br><br>
                           <div class="col-4"><input class="form-control"placeholder="Enter your age" type="number" name="age" style="background-color:#E9EBEE" required></div>
                           <br>
                           Enter your gender<br><br>
                           <input type="radio" value="1st" name="gender"checked><label for="male"> Male  </label><br>
                           <input type="radio" value="2nd" name="gender"><label for="Female">Female</label>
                  </div>
                  <br>
                  <div class="col-2 container"><button class="form-control bg-success text-center text-white" type="submit"name="save""> BMI & BMR</button></div><br>
               </div>
            </div>
         </div>
         <br></center>
         </form>
         <div class="container" style="background-color:black;">
            <marquee>
               <h3 style="color:white">Design by Mamun M.I.A. (turan)
               </h3>
            </marquee>
         </div>
      </div>
      </div></div></div><br>
      </div>
      </div>
      </div>
   </body>
</html>

