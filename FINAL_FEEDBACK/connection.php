<?php
	//1. connect to server
	
	
    $HOSTNAME='localhost';
    $USERNAME='root';
    $PASSWORD='';
    $DATABASE='qr_feedbackform';

    $con=mysqli_connect($HOSTNAME,$USERNAME,$PASSWORD,$DATABASE);

    if($con){
       // echo "Connection successfull";
    }
    else{
        die(mysqli_error($con));
    }
	
?>