<?php include('../config/constants.php'); ?>

<html>
<head>
<title>Login - Food Order System</title>
<link rel="stylesheet" href="../css/admin_login.css">

</head>

<body>
<div class="wrapper fadeInDown">
<div id="formContent">
<div class="login">
<h1 class="text-center" style="font-size: 45px;">Login</h1>
<br><br>

<?php
if(isset($_SESSION['login']))
{
echo $_SESSION['login'];
unset($_SESSION['login']);
}

if(isset($_SESSION['no-login-message']))
{
echo $_SESSION['no-login-message'];
unset($_SESSION['no-login-message']);
}
?>
<br><br>

<!-- Login Form Starts HEre -->
<form action="" method="POST" style="text-align: left; margin:7%;">
Username: <br>
<input style="text-align: left; width:100%" type="text" class="fadeIn second" name="username" placeholder="usermane"><br><br>
Password: <br>
<input style="text-align: left; width:100%" type="text" id="password" class="fadeIn third" name="password" placeholder="password"><br><br>
<center>
<input type="submit" name="submit" value="Login" class="btn-primary">
</center>
<br><br>
</form>
<!-- Login Form Ends HEre -->

<p class="text-center">Created By - 3CE</p>
</div>
</div>
</div>

</body>
</html>

<?php

//CHeck whether the Submit Button is Clicked or NOt
if(isset($_POST['submit']))
{
//Process for Login
//1. Get the Data from Login form
$username = $_POST['username'];
$password = ($_POST['password']);

//2. SQL to check whether the user with username and password exists or not
$sql = "SELECT * FROM tbl_admin WHERE username='$username' AND password='$password'";

//3. Execute the Query
$res = mysqli_query($conn, $sql);

//4. COunt rows to check whether the user exists or not
$count = mysqli_num_rows($res);

if($count==1)
{
//User AVailable and Login Success
$_SESSION['login'] = "<div class='success'>Login Successful.</div>";
$_SESSION['user'] = $username; //TO check whether the user is logged in or not and logout will unset it

//REdirect to HOme Page/Dashboard
header('location:'.SITEURL.'admin/');
}
else
{
//User not Available and Login FAil
$_SESSION['login'] = "<div class='error text-center'>Username or Password did not match.</div>";
//REdirect to HOme Page/Dashboard
header('location:'.SITEURL.'admin/login.php');
}


}

?>