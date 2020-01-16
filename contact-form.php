<?php 
    $name = $_POST['name'];
    $visitor_email = $_POST['email'];
    $messege = $_POST ['messege'];

    $email_from = '';
    $email_sunbject = "New Form Submission";
$email_body = "User Name: $name.\n".
                "User Email: $visitor_email.\n".
                    "User Messege: $messege.\n";

$to = "aaastudillo11@gmail.com";

$headers = "From: $email_from \r\n";

$headers .= "Reply-To: $visitor_email\r\n";

mail($to, $email_subject, $email_body, $headers);

header("Location: contact.html");

?>