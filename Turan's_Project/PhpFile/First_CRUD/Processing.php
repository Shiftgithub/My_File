<?php 
	session_start();

    $connection = new mysqli("localhost","root","","database_crud")
     or die("Connection error : ".$connection->connect_error);
    

	$update = false ;
	$name = "";
	$fathername = "";
	$mothername = "";
	$bdate = "" ;
	$contact = "" ;
	$email = "" ;
	$var_id = "" ;


    // insert part
    
     	if (isset($_POST['submit'])){
     	$name = $_POST['name'];
     	$fathername = $_POST['fathername'];
     	$mothername = $_POST['mothername'];
     	$bdate = $_POST['bdate'];
     	$contact = $_POST['contact'];
    	$email = $_POST['email'];
     	$var_id = $_POST['var_id'];
    
     	$insert = "INSERT INTO infos ( name,f_name,m_name,b_day,ph,email,var_id)
		 VALUES('$name','$fathername','$mothername','$bdate','$contact','$email','$var_id')";
    
    	$connection->query($insert);
    
    
    	    $_SESSION ['messege'] = "Information has been Saved!";
    		$_SESSION ['msg_type'] = "success";
    		header("location: Index.php");
    }

    //Delete part 
    
    if(isset($_GET['delete'])){
     	$id = $_GET['delete'];

     	$connection->query("DELETE FROM infos WHERE  id =$id") or die($connection->error());
    
     	
            $_SESSION ['messege'] = "Record has been deleted!";
            $_SESSION ['msg_type'] = "danger";
            header("location: Index.php");
	 }
	 
	 // getting  data from database for Index.php values  
	 	if(isset($_GET['edit'])){
		 	$id = $_GET['edit']; // Getting value from Index.php edit button
			$update = true ;
		 	$result = $connection->query("SELECT * FROM infos WHERE  id =$id") or die($connection->error);
			if(count($result==true)){
				$row =$result->fetch_array();
				$name = $row['name'];
				$fathername = $row['f_name'];
				$mothername = $row['m_name'];
				$bdate = $row['b_day'];
				$contact = $row['ph'];
				$email = $row['email'];
				$var_id = $row['var_id'];
			}
	
		}


		// update part 

		if (isset($_POST['update'])){
			$id = $_POST['id']; // getting value from Index.php hidden input type
			$name = $_POST['name'];
			$fathername = $_POST['fathername'];
			$mothername = $_POST['mothername'];
			$bdate = $_POST['bdate'];
			$contact = $_POST['contact'];
		    $email = $_POST['email'];
			$var_id = $_POST['var_id'];
	   
		   $connection->query("UPDATE infos SET name='$name',father='$fathername',mother ='$mothername',birthday='$bdate',
		   phone ='$contact',email ='$email',var_id='$var_id' WHERE id=$id");

			$_SESSION ['messege'] = "Information has been update!";
			$_SESSION ['msg_type'] = "warning";
			header("location: Index.php");
	   }
   
		
?>