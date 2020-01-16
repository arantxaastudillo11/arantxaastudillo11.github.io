<?php 
    $name = $_POST['name'];
    $visitor_email = $_POST['email'];
    $message = $_POST ['messege'];

    $email_from = '';
    $email_subject = "New Form Submission";
$email_body = "User Name: $name.\n".
                "User Email: $visitor_email.\n".
                    "User Messege: $messege.\n";

$to = "aaastudillo11@gmail.com";

$headers = "From: $email_from \r\n";

$headers .= "Reply-To: $visitor_email\r\n";

mail($to, $email_subject, $email_body, $headers);

//header("Location: index.html");

if ($mail_status) { ?>
	<script language="javascript" type="text/javascript">
		alert('Sucess Message');
		window.location = 'contact.html';
	</script>
<?php
    
}
else { ?>
	<script language="javascript" type="text/javascript">
		alert('Error Message');
		window.location = 'contact.html';
	</script>
<?php
}
?>