<!DOCTYPE html>
<html>
<head>
  <title>Form & Calculator</title>
  <!--Bootstrap Addition link-->
  <link rel="stylesheet"href="bootstrap-4.5.0/dist/css/bootstrap.min.css">
</head>
<body>
  <?php 
      //Form Informatiion
    if ($_SERVER["REQUEST_METHOD"] == "POST"){ 
        $University  =$_POST['University'];
        $Name =  $_POST['Name'];
        $Id_No = $_POST['Id_No'];
        $Program_Name = $_POST['Program_Name'];
        $Section_No = $_POST['Section_No'];
        $Semester = $_POST['Semester'];
        $Year = $_POST['Year'];
        $Student_Contact_No = $_POST['Student_Contact_No'];
        // Subject name
        $name1 = $_POST['name1'];
        $name2 = $_POST['name2'];
        $name3 = $_POST['name3'];
        $name4 = $_POST['name4'];
        $name5 = $_POST['name5'];
        //mark 
        $mark1 = $_POST['mark1'];
        $mark2 = $_POST['mark2'];
        $mark3 = $_POST['mark3'];
        $mark4 = $_POST['mark4'];
        $mark5 = $_POST['mark5'];
        //credit
        $credit1 = $_POST['credit1'];//3
        $credit2 = $_POST['credit2'];//3
        $credit3 = $_POST['credit3'];//3
        $credit4 = $_POST['credit4'];//3
        $credit5 = $_POST['credit5'];//1.5
        function  gpa($marks,$credits){
          if ($marks <= 100 && $marks >= 79){
           return 4.00*$credits;
         }  
          elseif ($marks <= 79 && $marks >= 75){
           return 3.75*$credits;
         } 
          elseif ($marks <= 74 && $marks >= 70){
           return 3.50*$credits;
         }           
          elseif ($marks <= 69 && $marks >= 65){
           return 3.25*$credits;
         }
          elseif ($marks <= 64 && $marks >= 60){
           return 3.00*$credits;
         }
          elseif ($marks <= 59 && $marks >= 55){
           return 2.75*$credits;
         }
          elseif ($marks <= 54 && $marks >= 50){ 
           return 2.50*$credits;
         }
          elseif ($marks <= 49 && $marks >= 45){
           return 2.25*$credits;
          }
          elseif ($marks <= 44 && $marks >= 40){
           return 2.00*$credits;
          }
          else{
            return 0*$credit;
          }
      }
        $gpa1 = gpa($mark1,$credit1);
        $gpa2 = gpa($mark2,$credit2);
        $gpa3 = gpa($mark3,$credit3);
        $gpa4 = gpa($mark4,$credit4);
        $gpa5 = gpa($mark5,$credit5);
        $totalmarks=($mark1+$mark2+$mark3+$mark4+$mark5);
        $totalcredit=($credit1+$credit2+$credit3+$credit4+$credit5);
        $totalcgpa=(($gpa1+$gpa2+$gpa3+$gpa4+$gpa5)/$totalcredit);
      }
   ?>
            <div class="bg-light container"">
            <div class="bg-primary text-center text-white">
            <h1>Your Details</h1></div>
            <div style="background-color:#e4f9ff"> 
            <table class="table table-hover">
            <tbody>
            <tr>
              <th> University Name : </th>
              <td><?php echo $University; ?></td>
            </tr>
            <tr>
              <th> Name : </th>
              <td><?php echo $Name; ?></td>
            </tr>
            <tr>
              <th>Id No : </th>
              <td><?= $Id_No; ?></td>      
            </tr>
            <tr>
              <th>Program Name : </th>
              <td><?= $Program_Name ?></td>      
            </tr>
            <tr>
              <th>Section No: </th>
              <td><?= $Section_No; ?></td>      
            </tr>
            <tr>
              <th>Semester: </th>
              <td><?= $Semester;?> </td>      
            </tr>
            <tr>
              <th>Year : </th>
              <td><?= $Year; ?></td>      
            </tr>
            <tr>
              <th>Student Contact No : </th>
              <td><?= $Student_Contact_No; ?></td>      
            </tr>
            </tbody>
            </table> 
        </div>            
          <div class="bg-primary text-center text-white">
          <h1>Your CGPA Details</h1></div>
          <div class="container" style="background-color:#eee"> 
          <table class="table table-hover">
          <tbody>
            <tr>
            <th class="col-3">Serial No:
            <th class="col-3">Course Name </th>
            <th class="col-3">Mark</th>
            <th class="col-3">Credit</th>
            </tr>
          <tr>
            <td>1</td>
            <td><?php echo $name1;  ?></td>
            <td><?php echo $mark1  ?></td>
            <td><?php echo $credit1;?></td>
          </tr>
          <tr>
            <td>2</td>
            <td><?php echo $name2;?></td>
            <td><?php echo $mark2; ?></td>
            <td><?php echo $credit2; ?></td>
          </tr>
          <tr>
            <td>3</td>
            <td><?php echo $name3; ?></td>
            <td><?php echo $mark3 ;?></td>
            <td><?php echo $credit3; ?></td>
          </tr>
          <tr>
            <td>4</td>
            <td><?php echo $name4; ?></td>
            <td><?php echo $mark4; ?></td>
            <td><?php echo $credit4; ?></td>
          </tr>
          <tr>
            <td>5</td>
            <td><?php echo $name5; ?></td>
            <td><?php echo $mark5; ?></td>
            <td><?php echo $credit5; ?></td>
          </tr>
          <tr>
            <td></td>
            <td></td>
            <td><?php echo "Total Mark =".$totalmarks; ?></td>
            <td><?php echo "Total Credit = ".$totalcredit; ?></td>
          </tr>
          </tr>
          <tr>
            <td> <?php echo "Total CGPA =".$totalcgpa ;?></td>
          </tr>
          </tbody>
          </table> 
          </div>
          <div class="container">
          <a href="Index.php">
        <input type="submit" Value="Back to home page"style="font-size:30px; border-radius:10px;"class="bg-info"/>
      </a></div>
</body>
</html>