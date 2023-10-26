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
$video_file_name=$_FILES['videofile']['name'];
$video_file_type=$_FILES['videofile']['type'];
#$video_temp_file_name=$_FILES['videofile']['tmp_name'];

$audio_file_name=$_FILES['audiofile']['name'];
$audio_file_type=$_FILES['audiofile']['type'];
#$audio_temp_file_name=$_FILES['audiofile']['tmp_name'];

date_default_timezone_set("Asia/Calcutta");
			
			$vname=(string)(date('YmdHis'));
			$extension=pathinfo($video_file_name,PATHINFO_EXTENSION);
			$video_path=$vname.".".$extension;
			if($video_file_name)
			{
				move_uploaded_file($_FILES['videofile']['tmp_name'],"../QR_FEEDBACKFORM/FINAL_FEEDBACK/videos/".$video_path);
			}
		
       $aname=(string)(date('YmdHis'));
			$extension=pathinfo($audio_file_name,PATHINFO_EXTENSION);
			$audio_path=$aname.".".$extension;
			if($audio_file_name)
			{
				move_uploaded_file($_FILES['audiofile']['tmp_name'],"../QR_FEEDBACKFORM/FINAL_FEEDBACK/audio/".$audio_path);
			}


/*$audio_name = $_FILES['audiofile']['name'];
$audio_tmp_name = $_FILES['audiofile']['tmp_name'];
$error1 = $_FILES['audiofile']['error'];



$video_name = $_FILES['videofile']['name'];
$video_tmp_name = $_FILES['videofile']['tmp_name'];
$error2 = $_FILES['videofile']['error'];


if ($error1 === 0) {
	$audio_ex = pathinfo($audio_name, PATHINFO_EXTENSION);

	$audio_ex_lc = strtolower($audio_ex);

	$allowed_exs = array("3gp", 'mp3', 'm4a', 'wav');

	if (in_array($audio_ex_lc, $allowed_exs)) {
		
		$new_audio_name = uniqid("audio-", true). '.'.$audio_ex_lc;
		$_upload_path = 'QR_FEEDBACKFORM/FINAL_FEEDBACK/audio/'.$new_video_name;
		move_uploaded_file($tmp_name, $audio_upload_path);
	}
}


if ($error2 === 0) {
	$video_ex = pathinfo($video_name, PATHINFO_EXTENSION);

	$video_ex_lc = strtolower($video_ex);

	$allowed_exs = array("mp4", 'webm', 'avi', 'flv');

	if (in_array($video_ex_lc, $allowed_exs)) {
		
		$new_video_name = uniqid("video-", true). '.'.$video_ex_lc;
		$video_upload_path = 'QR_FEEDBACKFORM/FINAL_FEEDBACK/videos/'.$new_video_name;
		move_uploaded_file($tmp_name, $video_upload_path);
	}

}*/
           $captcha=$_POST['captcha'];

if($_SESSION['CODE']==$captcha){
    mysqli_query($con,"insert into feedbacks(CITY,OFFICER_NAME,PS_NAME,option1,option2,option3,description,AUDIO,VIDEO,DATE_TIME) 
values('$cname','$officername','$psname','$option1','$option2','$option3','$desc','$audio_path','$audio_path','$video_path','$datetime')");

	echo "Thank you";
}else{
	echo "Please enter valid captcha code";
}
?>