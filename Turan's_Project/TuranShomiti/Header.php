<!DOCTYPE html>
<html>
<head>
  <title>Summit</title>
  <!--Add page Responsive Web Design link  -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <!--Add Bootstrap link-->
    <link rel="stylesheet" href="bootstrap-4.5.0/dist/css/bootstrap.min.css">
  <!-- fontawesome cdn-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style type="">
  a:hover{
    color:white;
  }
</style>
<body>
      <nav class= "navbar navbar-expand-lg navbar-light bg-info">
  <a class= "navbar-brand" href="#">Navbar</a>
  <button class= "navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class= "navbar-toggler-icon"></span>
  </button>

  <div class= "collapse navbar-collapse" id="navbarSupportedContent">
    <ul class= "navbar-nav mr-auto">
      <li class= "nav-item active">
        <a class= "nav-link" href="#">Home</a>
      </li>
      <li class= "nav-item">
        <a class= "nav-link" href="#">Link</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class= "form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class= "btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>

<div class= "row">
    <!--  sidebar starts here-->
    <div class= "col-md-3  text-white" style="background-color: #13547a">
        <h4 class= "pt-5"># Debtor Account Info</h4>
        <div class= "container">
            <ul>
                <li> <a  href="debtor_form.php"> Create a New Debtor </a></li>
                <li> <a  href="All_Debtor_List.php"> All Debtor List </a></li>
                <li> <a  href="Update_debtor_info.php"> Update a Debtor </a></li>
                <li> <a  href="Delete_debtor_list.php"> Delete Debtor </a></li>
            </ul>
        </div>
        <hr>
        <h4 class="pt-1"># Thrifty Account Info</h4>
        <div class= "container">
            <ul>
                <li> <a  href="Add_new_thrifty.php"> Create a New Thrifty</a> </li>
                <li> <a  href="All_thrifty_List.php">All Thrifty List</a> </li>
                <li> <a  href="Update_thrifty_info.php">Update a Thrifty</a> </li>
                <li> <a  href="delete_thrifty_list.php
                  ">Delete Thrifty</a> </li>
            </ul>
        </div>
    </div>

    <!-- main content starts here -->
    <div class= "col-md-9 ">
        <br><br>
