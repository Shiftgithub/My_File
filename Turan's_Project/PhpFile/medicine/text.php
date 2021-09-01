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
             while ($row = $data->fetch_assoc()) : ?>
                <label>prescription no : <?php echo $row['prescription_id']; ?></label>
        </div>
        
        <div>
                <div style="float:right;">
                    <label>Date :</label>
                    <input type="date" name="date">
                </div><br>
                <div style="margin-top:-20px;">
                    <label>Doctor Name :</label>
                    <input type="text" name="d_name">
                </div><br>
                <div style="float:right;margin-top:-5px;">
                    <label>prescription No :</label>
                    <input type="number" name="p_no">
                </div><br>
                <div style="margin-top:-25px;">
                    <label>Patient Name :</label>
                    <input type="text" name="p_name" required>
                </div><br>

                <table border="1">
                    <tr>
                        <td class="text-center">Disease Name</td>
                        <td class="text-center">Medicine Name</td>
                        <td class="text-center">Quantity</td>
                        <td class="text-center">Duration</td>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" name="disease_name">
                        </td>
                        <td>
                            <input type="text" name="m_name">
                        </td>
                        <td>
                            <input type="number" name="quantity">
                        </td>
                        <td>
                           <input type="text" name="duration">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" class="text-center">
                            <button class="btn-success " name="save">Save</button>
                        </td>
                    </tr>
                </table>
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
    <button><a href="index.php">Back to Home Page</a></button>
</div>

</body>

</html>