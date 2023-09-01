<?php
	$email = $_POST['semail'];
	$name = $_POST['sname'];
	$password = $_POST['spass'];
	$address = $_POST['saddress'];
	$phone = $_POST['sphone'];
    $timest = date("d:m:Y h:i:sa");

    $host = "localhost";
    $user= "root";
    $pwd = "";
    $database = "mishtidb";


    $conn=mysqli_connect($host, $user, $pwd , $database);
    if(!$conn){
        die("connection failed".mysqli_connect_error());
    }
    $sql = "INSERT INTO users(name,email,password,timestamp,phone,address) VALUES('$name', '$email', '$password', '$timest', '$phone', '$address')";
    if (mysqli_query($conn,$sql)){
        echo "<script>
alert('Registration Successful');
window.location.href='index.php';
</script>";

    }else{
        
        echo "<script>
alert('Registration Unsuccessful');
window.location.href='register-modal.php';
</script>";

    }