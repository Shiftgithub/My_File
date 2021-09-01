<?php //require_once 'processing.php'; 
?>
<html>

<head>
    <title>View Prescription</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap -->
    <link rel="stylesheet" href=" https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

</head>

<body>
    <?php
    include 'processing.php';

    $show = $connection->query("SELECT * FROM info") or die("Failed " . $connection->error);
    $show->fetch_assoc();
    ?>
    <div class="container">
        <div class="row justify-content-center container">
            <table class="table table-hover ">
                <thead class="bg-dark text-white">
                    <tr>
                        <th>Id</th>
                        <th>Prescription Number </th>
                        <th>Date</th>
                        <th>Doctor Name </th>
                        <th>Patient Name </th>
                        <th>Disease Name</th>
                        <th>Medicine Name </th>
                        <th>Quantity</th>
                        <th>Duration</th>
                        <th>Print</th>
                    </tr>
                    <?php while ($row = $show->fetch_assoc()) : ?>
                <tbody>
                    <tr>
                        <td><?php echo $row['prescription_id']; ?></td>
                        <td><?php echo $row['prescription_no']; ?></td>
                        <td><?php echo $row['date']; ?></td>
                        <td><?php echo $row['doctor_name']; ?></td>
                        </td>
                        <td><?php echo $row['patient_name']; ?></td>
                        </td>
                        <td><?php echo $row['disease_name']; ?></td>
                        </td>
                        <td><?php echo $row['medicine_name']; ?></td>
                        </td>
                        <td><?php echo $row['quantity']; ?></td>
                        </td>
                        <td><?php echo $row['duration']; ?></td>
                        </td>
                        <td>

                            <a class="btn btn-info" href="print.php?print=<?php echo $row['prescription_id']; ?>">
                                Print
                            </a>
                        </td>
                    <tr>
                    <?php endwhile; ?>
                </tbody>
                </thead>
            </table>
            <div>
                <a href="index.php" class="btn btn-info">Back to Home Page</a>
            </div>
        </div>


    </div>
</body>

</html>