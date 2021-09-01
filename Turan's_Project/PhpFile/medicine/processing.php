<?php

$connection = new mysqli("localhost", "root", "", "prescription_info")
    or die("connection error :" . $connection->connect_error);

if (isset($_POST['save'])) {
    // echo"<pre>";
    // print_r($_POST);
    // echo"<pre>";
    // die();
    $prescription_no = $_POST['p_no'];
    $date = $_POST['date'];
    $p_no = $_POST['p_no'];
    $p_name = $_POST['p_name'];
    $d_name = $_POST['d_name'];
    $disease_name = $_POST['disease_name'];
    $m_name = $_POST['m_name'];
    $quantity = $_POST['quantity'];
    $duration = $_POST['duration'];

    $inserts = "INSERT INTO info(prescription_no,date,patient_name,doctor_name,disease_name,medicine_name,quantity,duration) 
    VALUES('$prescription_no','$date','$p_name','$d_name','$disease_name','$m_name','$quantity','$duration')";

    if ($connection->query($inserts) === TRUE) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $inserts . "<br>" . $connection->error;
    }
    header("location: view.php");
}
