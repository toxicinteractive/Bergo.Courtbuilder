<?php
require_once 'conf/connecting.php';
$c = uniqid (rand (),true);
$md5c = md5($c);
require("PHPMailer-master/class.phpmailer.php");
$name       = @trim(stripslashes($_POST['fname'])); 
$company       = @trim(stripslashes($_POST['company']));
$phone       = @trim(stripslashes($_POST['phone']));
$email       = @trim(stripslashes($_POST['email']));  
$message    = @trim(stripslashes($_POST['message']));
$country    = @trim(stripslashes($_POST['country']));
$dataFromApplication    = @trim(stripslashes($_POST['dataFromCourt']));
$pieces = explode(":", $dataFromApplication);
echo $pieces[0]; 
echo $pieces[1]; 
$linkToCourt    = "https://bergocourtbuilder.com/index.php?id=".$md5c;

$mail = new PHPMailer();
 
$mail->IsSMTP();  // telling the class to use SMTP
$mail->Host     = "mailcluster.loopia.se"; // SMTP server
$mail->Port = 587; // SMTP port (25, 587 or 465)
$mail->SMTPAuth = true;                               // Enable SMTP authentication
$mail->Username = 'request@bergocourtbuilder.com';                 // SMTP username
$mail->Password = 'Request2Bergo!';
 
$mail->setFrom('request@bergocourtbuilder.com', 'Court Builder'); 
$mail->addAddress("info@flooring.se");
$mail->Subject  = "Price request";
$mail->Body     = "Name: $name\n".
    "Company: $company\n".
	"Country: $country\n".
	"Phone: $phone\n".
	"Mail: $email\n".
    "Message:\n $message\n\n".
	"Link: $linkToCourt\n";
$mail->WordWrap = 50;
 
if(!$mail->Send()) {
echo 'Message was not sent.';
echo 'Mailer error: ' . $mail->ErrorInfo;
} else {
	echo 'Message has been sent';

	//Insert data into db
	$sql = "INSERT INTO interested_visitors 
			(id, name, company, phone, email, message, country, selectedField, selectedTile, selectedMainField, selectedOptionalField, selectedOptionalField2, pattern, lights,
			hoops, units, fence, goals, lineColorMainField, fieldColorMainField, keyColorMainField,	aroundColorMainField, edgesColorMainField, fieldView, mainLenght, mainWidth,
			aroundLeft, aroundRight, aroundUp, aroundDown, lineColorOpt, fieldColorOpt, keyColorOpt, rotateOptField, fieldOptionWidth, fieldOptionHeight, fieldOptionLeftRight,
			fieldOptionUpDown, lineColorOpt2, fieldColorOpt2, keyColorOpt2, rotateOptField2, fieldOptionWidth2, fieldOptionHeight2, fieldOptionLeftRight2, fieldOptionUpDown2)
		VALUES
			(:id, :name, :company, :phone, :email, :message, :country, :selectedField, :selectedTile, :selectedMainField, :selectedOptionalField, :selectedOptionalField2,
			:pattern, :lights, :hoops, :units, :fence, :goals, :lineColorMainField, :fieldColorMainField, :keyColorMainField, :aroundColorMainField, :edgesColorMainField,
			:fieldView, :mainLenght, :mainWidth, :aroundLeft, :aroundRight, :aroundUp, :aroundDown, :lineColorOpt, :fieldColorOpt, :keyColorOpt, :rotateOptField, :fieldOptionWidth,
			:fieldOptionHeight, :fieldOptionLeftRight, :fieldOptionUpDown, :lineColorOpt2, :fieldColorOpt2, :keyColorOpt2, :rotateOptField2, :fieldOptionWidth2, :fieldOptionHeight2,
			:fieldOptionLeftRight2, :fieldOptionUpDown2)";

	$pdo->prepare($sql)->execute(array(
    "id" => $md5c,
	"name" => $name,
	"company" => $company,
	"phone" => $phone,
	"email" => $email,
	"message" => $message,
	"country" => $country,
	"selectedField" => $pieces[0],
	"selectedTile" => $pieces[1],
	"selectedMainField" => $pieces[2],
	"selectedOptionalField" => $pieces[3],
	"selectedOptionalField2" => $pieces[4],
	"pattern" => $pieces[5],
	"lights" => $pieces[6],
	"hoops" => $pieces[7],
	"units" => $pieces[8],
	"fence" => $pieces[9],
	"goals" => $pieces[10],
	"lineColorMainField" => $pieces[11],
	"fieldColorMainField" => $pieces[12],
	"keyColorMainField" => $pieces[13],
	"aroundColorMainField" => $pieces[14],
	"edgesColorMainField" => $pieces[15],
	"fieldView" => $pieces[16],
	"mainLenght" => $pieces[17],
	"mainWidth" => $pieces[18],
	"aroundLeft" => $pieces[19],
	"aroundRight" => $pieces[20],
	"aroundUp" => $pieces[21],
	"aroundDown" => $pieces[22],
	"lineColorOpt" => $pieces[23],
	"fieldColorOpt" => $pieces[24],
	"keyColorOpt" => $pieces[25],
	"rotateOptField" => $pieces[26],
	"fieldOptionWidth" => $pieces[27],
	"fieldOptionHeight" => $pieces[28],
	"fieldOptionLeftRight" => $pieces[29],
	"fieldOptionUpDown" => $pieces[30],
	"lineColorOpt2" => $pieces[31],
	"fieldColorOpt2" => $pieces[32],
	"keyColorOpt2" => $pieces[33],
	"rotateOptField2" => $pieces[34],
	"fieldOptionWidth2" => $pieces[35],
	"fieldOptionHeight2" => $pieces[36],
	"fieldOptionLeftRight2" => $pieces[37],
	"fieldOptionUpDown2" => $pieces[38]
	
	));
}
?>
