<?php include 'db_connection.php';

if (isset($_POST['save'])) {

	// echo"<pre>";
	// var_dump($_POST);
	// echo"</pre>";

	$date = $_POST['date'];
    //$prescription_no = $_POST['prescription_no'];
    $age = $_POST['age'];
    $patient_name = $_POST['patient_name'];
    $gender = $_POST['gender'];
    $doctor_id =$_POST['doctor_id'];
    $disease_id = $_POST['disease_id'];
    $medicine_id = $_POST['medicine_id'];
    $quantity = $_POST['quantity'];
    $duration = $_POST['duration'];
    $frequency = $_POST['frequency'];

    $patient_info_insert ="INSERT INTO patient_infos(patient_name,gender,age)VALUES('$patient_name','$gender','$age')";
    if ($connection->query($patient_info_insert) === TRUE) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $patient_info_insert . "<br>" . $connection->error;
    }

    $lastId = $connection->query ("SELECT patient_id FROM `patient_infos` ORDER BY `patient_id` DESC LIMIT 1");

    $patients_id = $lastId->fetch_assoc();
    $patient_id = $patients_id['patient_id'];



    $inserts = "INSERT INTO `prescription_infos`( `prescription_id`, `date`, `doctor_id`, `patient_id`,`disease_id`, `medicine_id`, `frequency`, `duration`, `quantity` ) VALUES( null, '$date', '$doctor_id', '$patient_id','$disease_id', '$medicine_id', '$frequency', '$duration', '$quantity' ) ";

    if ($connection->query($inserts) === TRUE) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $inserts . "<br>" . $connection->error;
    }
     header("location:index.php");
}

?>
