<?php
	$name=$_POST['name'];
	$email=$_POST['email'];
	$message=$_POST['message'];
	$service=$_POST['service'];
	$doctors=$_POST['doctors'];
	$DOB=$_POST['DOB'];
	$sub = "Appointment Status";
	//the message
	$msg = "Your appointment request for $service with $doctors has been accepted and the visitation timing is $DOB 3pm";
	//recipient email here
	$rec = $email;
	//send email
	//Basic parameter to be connected

	$conn = new mysqli('localhost','root','','testlogin');
	if($conn->connect_error){
		die('Connection Failed : '.$conn->connect_error);
	}
	else{
		$stmt=$conn->prepare("insert into servicesbasic(name,email,message,service,doctors,DOB)values(?, ?, ?, ?, ?, ?)");
		$stmt->bind_param("ssssss",$name,$email,$message,$service,$doctors,$DOB);
		$stmt->execute();
		header("Location: Appbooked.html");
		mail($rec,$sub,$msg);  
		//echo "Request sent successfully....";
		$stmt->close();
		$conn->close(); 
 


	}
?>
