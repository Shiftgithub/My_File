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
        <form method="POST" action="FileProcessingBMI&BMR.php">
       Inch : <br><br>
          <div class="col-4"><input class="form-control"placeholder="Enter your height" type="number" name="inch"style="background-color:#E9EBEE"></div>
       kg:<br><br>
          <div class="col-4"><input class="form-control" placeholder="Enter your weight" type="number" name="kg" style="background-color:#E9EBEE"></div>
       Years:<br><br>
          <div class="col-4"><input class="form-control"placeholder="Enter your age" type="number" name="years" style="background-color:#E9EBEE"></div><br>
    Enter your gender<br><br>
                     <input type="radio" value="1st" name="gender"checked><label for="male">Male</label><br>
                     <input type="radio" value="2nd" name="gender"><label for="Female">Female</label>
                     </div><br>
                        <div class="col-2 container"><button class="form-control bg-success text-center text-white" type="submit"name="save""> BMI & BMR</button></div><br></div></div></div><br>
          </form>
             <div style="margin-top:-135px ">
              <div style="background-color:#eeeeee" class="container"><h6>(BMR)=Basal metabolic rate is the amount of energy per unit time that a person needs to keep the body functioning at rest. Some of those processes are breathing, blood circulation, controlling body temperature, cell growth, brain and nerve function, and contraction of muscles. & (BMI) Body mass index is a value derived from the mass and height of a person. The BMI is defined as the body mass divided by the square of the body height , and is universally expressed in units of kg/m 2 , resulting from mass in kilograms and height in metres.</h6></div><br></div>
        <div class="container" style="background-color:black;">
        <marquee>
        <h3 style="color:white">Design by Mamun M.I.A. (turan)
        </h3>
        </marquee>
        </div></div></div></div></div><br>
</div>
    </div>
  </div>
  
</body>
</html>