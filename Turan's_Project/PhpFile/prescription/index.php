<?php include 'db_connection.php'; ?>
<!DOCTYPE html>
<html>

<head>
    <title>Prescription</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>

<body>
    <div class="container card">
        <div>
            <h1 class="bg-info text-center text-white">write something</h1>
        </div>
        <form method="POST" action="processing.php">
            <div class="form-group">
                <div class="row">
                    <div class="col-6">
                        <div class="row pt-2">
                            <label class="col-4"><b>Doctor name </b></label>
                            <?php
                            $query = "SELECT doctor_id,doctor_name FROM doctor_infos";
                            $doctors = $connection->query($query);
                            ?>
                            <select name="doctor_id" class="col-5 form-control" >
                                <option>Select Doctor Name</option>
                                <?php while ($doctor = $doctors->fetch_assoc()) : ?>
                                    <option value="<?= $doctor['doctor_id'] ?>"><?= $doctor['doctor_name'] ?></option>
                                <?php endwhile; ?>
                            </select>
                        </div>
                        <div class="row pt-2">
                            <label class="col-4"><b>Patient Name </b></label>
                            <input class="col-5 form-control" type="text" name="patient_name" >
                        </div>
                        <div class="row pt-2">
                            <label class="col-4"><b>Age </b></label>
                            <input class="col-5 form-control" type="number" name="age" >
                        </div>
                        <div class="row pt-2">
                            <label class="col-4"><b>Gender </b></label>
                            <?php
                            $query = "SELECT id,gender_name FROM gender";
                            $genders = $connection->query($query);
                            ?>
                            <select class="col-5 form-control" name="gender" >
                                <option>Select patient gender</option>
                                <?php while ($gender = $genders->fetch_assoc()) : ?>
                                    <option value="<?= $gender['gender_name'] ?>"><?= $gender['gender_name'] ?></option>
                                <?php endwhile; ?>

                            </select>

                        </div>
                    </div>
                    <div class="col-6">
                        <div class="row justify-content-center">
                            <label class="col-2"><b>Date </b></label>
                            <input class="col-4 form-control" type="date" name="date" >
                        </div>
                    </div>
                </div>
                <br>
                <div>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Prescription No</th>
                                <th>Disease Name</th>
                                <th>Medicine Name</th>
                                <th>Frequency</th>
                                <th>Duration</th>
                                <th>Quantity</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <input type="number" class="col-8 form-control" name="prescription_no">
                                </td>
                                <td>
                                    <?php
                                    $query = "SELECT disease_id,disease_name FROM disease_list";
                                    $disease_list = $connection->query($query);
                                    ?>
                                    <select class="col-12 form-control" name="disease_id" >
                                        <option>Select Disease Name</option>
                                        <?php while ($disease_name = $disease_list->fetch_assoc()) : ?>
                                            <option value="<?= $disease_name['disease_id'] ?>">
                                                <?= $disease_name['disease_name'] ?>
                                            </option>
                                        <?php endwhile; ?>
                                    </select>

                                </td>
                                <td>
                                    <?php
                                    $query = "SELECT * FROM medicine_list";
                                    $medicine_list = $connection->query($query);
                                    ?>
                                    <select class="col-12 form-control" name="medicine_id" >
                                        <option>Select Medicine Name</option>
                                        <?php while ($medicine_name = $medicine_list->fetch_assoc()) : ?>
                                            <option value="<?= $medicine_name['medicine_id'] ?>"><?= $medicine_name['medicine_name'] ?>
                                            </option>
                                        <?php endwhile; ?>
                                    </select>
                                </td>
                                <td>
                                    <input type="text" class="col-10 form-control" name="frequency">
                                </td>
                                <td>
                                    <input type="text" class="col-10 form-control" name="duration">
                                </td>
                                <td>
                                    <input type="number" class="col-10 form-control" name="quantity">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div>
                    <button type="submit" class="btn btn-success form-control" name="save"> Save</button>
                </div>
            </div>
        </form>
    </div>
</body>

</html>