<?php

    session_start();
    
    $connection = new mysqli("localhost","root","","office") or die("Connection error : ".$connection->connect_error);

    if (isset($_POST['save'])){
    	$name = $_POST['name'];
    	$date = $_POST['date'];
    	$time = $_POST['time'];
    	$attended = "yes";

        //die($name.$date.$time.$attended);
    	$input = "INSERT INTO data(name,date,time,attended) VALUES('$name','$date','$time','$attended')";
    
        $connection->query($input);

         $_SESSION ['messege'] = "Information has been Saved!";
            $_SESSION ['msg_type'] = "success";
            header("location: index.php");
    }


?>