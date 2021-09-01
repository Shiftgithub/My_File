<html>

<head>
    <title>Prescription</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap -->
    <link rel="stylesheet" href=" https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <style>
        .body {
            border: 1px solid;
            height: 900px;
            padding: 30px;
            width: 900px;
            margin: auto;
        }
    </style>
</head>
<?php
$connection = new mysqli("localhost", "root", "", "prescription_info")
    or die("connection error :" . $connection->connect_error);

$query = "SELECT `prescription_id`,doctor_name FROM info";

$doctors = $connection->query($query);

$query = "SELECT disease_name FROM info";
$diseases = $connection->query($query);

$query = "SELECT medicine_name FROM info";
$medicines = $connection->query($query);

?>

<body class="body">
    <div class="bg-">
        <div>
            <h1 class="bg-info text-center text-white">Hospital Name</h1>
        </div>
        <hr>
        <form action="processing.php" method="POST">
            <div>
                <div style="float:right;">
                    <label>Date :</label>
                    <input type="date" name="date">
                </div><br>
                <div style="margin-top:-20px;">
                    <label>Doctor Name :</label>
                    <select name="d_name">
                        <option></option>
                        <?php while ($doctor = $doctors->fetch_assoc()) : ?>
                            <option value="<?= $doctor['doctor_name'] ?>"><?= $doctor['doctor_name'] ?></option>
                        <?php endwhile; ?>
                    </select>
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
                            <select name="disease_name">
                                <option></option>
                                <?php while ($disease = $diseases->fetch_assoc()) : ?>
                                    <option value="<?= $disease['disease_name'] ?>" name="disease_name"><?= $disease['disease_name'] ?>
                                    </option>
                                <?php endwhile; ?>
                            </select>
                        </td>
                        <td>
                            <select name="m_name">
                                <option></option>
                                <?php while ($medicine = $medicines->fetch_assoc()) : ?>
                                    <option value="<?= $medicine['medicine_name'] ?>"><?= $medicine['medicine_name'] ?>
                                    </option>
                                <?php endwhile; ?>
                            </select>
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
        </form>
        <hr>
    </div>
</body>

</html>