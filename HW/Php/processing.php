<?php
include "db.php";

if (isset($_POST['submit'])) {
    // echo"<pre>";
	// var_dump($_POST);
	// echo"</pre>";
    $name = $_POST['name'];
    $email = $_POST['email'];
    $ph = $_POST['ph'];

    $insertInfo = "INSERT INTO info(name,email,ph) VALUES('$name','$email','$ph')";
    if($connection->query($insertInfo) == TRUE){
        header("location:index.php");
    }
    else{
        echo "Error: " . $insertInfo . "<br>" . $connection->error;
    }


}
