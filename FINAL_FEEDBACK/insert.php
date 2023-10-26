<?php 
session_start();
include 'connection.php';

$cname=$_POST['cname'];
$psname=$_POST['psname'];
$officername=$_POST['officername'];
$option1=$_POST['option1'];
$option2=$_POST['option2'];
$option3=$_POST['option3'];
$desc=$_POST['desc'];

date_default_timezone_set("Asia/Calcutta");
$datetime=date('Y-m-d H:i:s');

           $captcha=$_POST['captcha'];

if($_SESSION['CODE']==$captcha){
    mysqli_query($con,"insert into feedbacks(CITY,OFFICER_NAME,PS_NAME,option1,option2,option3,description,DATE_TIME) 
values('$cname','$officername','$psname','$option1','$option2','$option3','$desc','$datetime')");

	echo "Thank you";
}else{
	echo "Please enter valid captcha code";
}
?>