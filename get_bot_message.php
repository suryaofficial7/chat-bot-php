<?php
date_default_timezone_set('Asia/Kolkata');
include('database.inc.php');
$txt=mysqli_real_escape_string($con,$_POST['txt']);

$sql="select reply,src from chatbot_hints where question like '%$txt%'";
$res=mysqli_query($con,$sql);
if(mysqli_num_rows($res)>0){
	$row=mysqli_fetch_assoc($res);
	$html=$row['reply'];
	$src = $row['src'];
}else{
	$html="Sorry not be able to understand you";
	$src = "NO file";
}

$added_on=date('Y-m-d h:i:s');
mysqli_query($con,"insert into message(message,added_on,type,src,userID) values('$txt','$added_on','user','$src','$_COOKIE[userID]')");
$added_on=date('Y-m-d h:i:s');
mysqli_query($con,"insert into message(message,added_on,type,src,userID) values('$html','$added_on','bot','$src','$_COOKIE[userID]')");
echo $html;
?>