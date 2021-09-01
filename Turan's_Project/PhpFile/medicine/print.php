<html>

<head>
    <title>print</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap -->
    <link rel="stylesheet" href=" https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

</head>

<body>
    <div style="margin-top:35px ; margin-left:20px ;">
        <?php
        include 'processing.php';
        $id = $_GET['print'];
        ?>
        <div>
            <?php
            $data = $connection->query("SELECT * FROM info WHERE prescription_id=$id");
            while ($row = $data->fetch_assoc()) :
            ?>
                <label>prescription no : <?php echo $row['prescription_id']; ?></label>
        </div>
        <div>
            <label>Date : <?php echo $row['date']; ?></label>
        </div>
        <div>
            <label>Doctor Name : <?php echo $row['doctor_name']; ?></label>
        </div>
        <div>
            <label>Patient Name : <?php echo $row['patient_name']; ?>:</label>
        </div>
        <div>
            <label>Disease Name : <?php echo $row['disease_name']; ?></label>
        </div>
        <div>
            <label>Medicine Name : <?php echo $row['medicine_name']; ?></label>
        </div>
        <div>
            <label>Quantity : <?php echo $row['quantity']; ?></label>
        </div>
        <div>
            <label>Duration : <?php echo $row['duration']; ?></label>
        </div>
    </div>
<?php endwhile; ?>
<div>
    <a href="index.php" class="btn btn-info">Back to Home Page</a>
</div>

</body>

</html>