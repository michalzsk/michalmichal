<?php 

if(!isset($_POST['submit'])){ 
    header(header:'Location ../'); 
    die;
} 

if (!isset($_POST['email'],$_POST['message'])){ 
    header(header:'Location ../contact.php?error=1');

    die;
} 
$email = $_POST['email']; 
$message = $_POST['message'];
if (empty($email) || empty($message)){ 
    header(header : 'Location: ../contact.php?error=2'); 

    die;
} 

if (strlen($message)< 20){ 
    header(header : 'Location: ../contact.php?error=3'); 

    die;
} 

if (!filter_var($email, filter:FILTER_VALIDATE_EMAIL)) { 
    header(header: 'Location: ../contact.php?error=4'); 
    die;
} 

// TODO: save to database 

header(header: 'Location: ../contact.php?success=1'); 