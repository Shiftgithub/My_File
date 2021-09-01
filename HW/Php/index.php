<!DOCTYPE html>
<html>

<head>
    <title>Ajax Crud</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

</head>

<body>
    <form method="POST" action="processing.php">
        <div class="form-group">
            <div class="row container">
                <div class="col-12">
                    <div class="row pt-2">
                        <label class="col-1 col-form-label font-weight-bold">Name :</label>
                        <input type="text" name="name" class="col-3 form-control">
                    </div>
                    <div class="row pt-2">
                        <label class="col-1 col-form-label font-weight-bold">Email :</label>
                        <input type="email" name="email" class="col-3 form-control">
                    </div>
                    <div class="row pt-2">
                        <label class="col-1 col-form-label font-weight-bold">Phone :</label>
                        <input type="text" name="ph" class="col-3 form-control">
                    </div>
                    <div class="row pt-2">
                        <button type="submit" class="btn btn-success col-4 form-control" name="submit"> Save</button>
                    </div>
                </div>
    </form>
</body>

</html>