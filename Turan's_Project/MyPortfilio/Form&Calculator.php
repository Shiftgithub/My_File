<!DOCTYPE html>
<html>
<head>
  <title>Form & Calculator</title>
  <!---->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!---->
  <link rel="stylesheet"href="bootstrap-4.5.0/dist/css/bootstrap.min.css">
</head>
<body>
<div>
      <div class="card">
        <div class="card-body">
  <div style="background-color:#a6dcef">
    <div>
      <h1 class="text-white text-center bg-warning"> Students Form</h1></div>
    <div class="container"><br>
      <form action="FileProcessingFormCalculator.php" method="POST">
        <div class="row form-group">
          <div class="col-2 text-white">University Name :</div>
          <div class="col-10"><input placeholder="Enter your University Name" type="text" name="University"></div>
        </div>
        <div class="row form-group">
          <div class="col-2 text-white ">Name :</div>
          <div class="col-10"><input type="text" placeholder="Enter your name" name="Name"></div>
        </div>
        <div class="row form-group">
          <div class="col-2 text-white ">Id No :</div>
            <div class="col-10"><input type="number" placeholder="Enter your Id No" name="Id No"></div>
          </div>
        <div class="row form-group">
          <div class="col-2 text-white">Program Name:</div>
          <div class="col-10"><input type="text" placeholder="Enter your Program name" name="Program Name"></div>
        </div>
        <div class="row form-group">
          <div class="col-2 text-white ">Section No:</div>
          <div class="col-10"><input type="text" placeholder="Enter your section no" name="Section No"></div>
        </div>
        <div class="row form-group">
          <div class="col-2 text-white">Semester:</div>
          <div class="col-10 text-white">
                     <input type="radio" value="Spring" name="Semester"checked><label for="Spring">Spring</label><br>
                     <input type="radio" value="Summer" name="Semester"><label for="Summer">Summer</label><br>
                     <input type="radio" value="Fall" name="Semester"><label for="Fall">Fall</label>
                     </div><br>
        </div>
        <div class="row form-group">
          <div class="col-2 text-white">Year :</div>
          <div class="col-10"><input type="number" placeholder="Enter  year" name="Year"></div>
        </div>
        <div class="row form-group">
          <div class="col-2 text-white">Student Contact No:</div>
          <div class="col-10"><input type="number" placeholder="Enter your contact no" name="Student Contact No"></div>
        </div><br>    
      </div>
    </div>
  </div>
        <div class="container">
    <div class="bg-info text-center">
      <h1>STUDENT'S FORM</h1>
    </div>
    <div class="bg-warning text-center text-white">
      <h5>Please input data for all those field to get desired CGPA</h5>
    </div></div>
  <div class="container" style="width:100%">
      <div class="card">
        <div class="card-body">
          <div>
            <form method="POST">
              <table class="table border"
               style="background-color:#eeeeee">
              <tr>
              <th class="col-3">Serial No:
              <th class="col-3">Course Name </th>
              <th class="col-3">Mark</th>
              <th class="col-3">Credit</th>
              </tr>
              <tr>
                <td class="col-3">1</td>
                <td class="col-3"><input type="text"
                 name="name1"></td>
                <td class="col-3"><input type="text"
                 name="mark1"></td>
                <td class="col-3"><input type="text"
                 name="credit1"></td>
              <tr>
                <td class="col-3">2</td>
                <td class="col-3"><input type="text" 
                  name="name2"></td>
                <td class="col-3"><input type="text" 
                  name="mark2"></td>
                <td class="col-3"><input type="text"
                 name="credit2"></td>
              </tr>
              <tr>
                <td class="col-3">3</td>
                <td class="col-3"><input type="text" 
                  name="name3"></td>
                <td class="col-3"><input type="text"
                 name="mark3"></td>
                <td class="col-3"><input type="text"
                 name="credit3"></td>
              </tr>
              <tr>
                <td class="col-3">4</td>
                <td class="col-3"><input type="text"
                 name="name4"></td>
                <td class="col-3"><input type="text"
                 name="mark4"></td>
                <td class="col-3"><input type="text"
                 name="credit4"></td>
              </tr>
              <tr>
                <td class="col-3">5</td>
                <td class="col-3"><input type="text" 
                  name="name5"></td>
                <td class="col-3"><input type="text" 
                  name="mark5"></td>
                <td class="col-3"><input type="text" 
                  name="credit5"></td>
              </tr>
              </table>
              <div style="padding-left:500px">
        <input class="btn btn-success" type="submit" name="submit" value="Submit"></div>
            </form>
        </div>    
      </div>
    </div>
  </div>
</form></div></div>
</body>
</html>