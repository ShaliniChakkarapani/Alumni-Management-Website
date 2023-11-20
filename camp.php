<?php
include 'header.php';
$n=$_SESSION["name"];
$con = new mysqli("localhost","root","","aluminidatabase");
$sql="SELECT * FROM `aluminidata` WHERE `Firstname`='$n';";
$result=mysqli_query($con,$sql);
$row=$result->fetch_assoc();
if(isset($_POST['Submit'])){
  $n=$_SESSION["name"];
  $con1 = new mysqli("localhost","root","","aluminidatabase");
  $sql="SELECT * FROM `aluminidata` WHERE `Firstname`='$n';";
  $result=mysqli_query($con1,$sql);
  $row=$result->fetch_assoc();
  $name=$row["Firstname"].$row['Lastname'];
  $batch=$row["Batch"];
  $dept=$row["Department"];
  $mobno=$_POST['mobileno'];
  $dov=$_POST['date'];
  $reason=$_POST['reason'];
  $sql1="INSERT INTO `campusvisit`(`Fullname`, `Batch`, `dept`, `mobileno`, `dateofvisit`, `reason`) VALUES ('$name','$batch','$dept','$mobno','$dov','$reason')";
  $result1=mysqli_query($con1,$sql1);


  if($result1){
    header('Location:camp.php');
   
  }else{
    echo 'error';
  }}
?>
<Doctype html>
    <html>
    <head>
        <title>HomePage</title>
        <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no">

        <link href="style1.css" rel="stylesheet">


    </head>
    <body >
      
       <form method="post" action=""> 
       <div style='font-size:20px;margin-left:450px;width: 550px;padding: 50px;margin-top:-100px;'>
       <h1>Campusvisit Form:</h1> <form method="post" action="campusvisit.php"> <table style='border-spacing:15px;font-size:20px;color:rgb(23, 33, 111);font-family: serif;padding:15px;'><tr><td><b>Fullname:</b></td><td><?php echo $row["Firstname"]." ".$row["Lastname"] ?></td></tr>
       <tr><td><b>Batch:</b></td><td><?php echo $row["Batch"] ?></td></tr>
       <tr><td><b>Department:</b></td><td><?php echo $row["Department"] ?></td></tr>
       <tr><td><b>Date-of-Visit</b></td><td><input type="date" name="date" required></td></tr>
       <tr><td><b>Reason of visit:</b></td><td><textarea name="reason" required></textarea></td></tr>
       <tr><td><b>Mobile Number:</b></td><td><input type="number" name="mobileno"  required></td></tr></table>
       <button  style='cursor:pointer;background-color:rgb(10, 10, 110);color:white;width:80px;height:40px;border-radius:2px;' name="Submit" onclick="alert('Submitted Successfully')">Submit</button></form><button  style='cursor:pointer;background-color:rgb(10, 10, 110);color:white;width:80px;height:40px;border-radius:2px;margin-left:20px;'><a style='text-decoration:none;color:white;' href='campvisit.php'>Back</a></button>
       </div>
       

       </form>





      </body></html>