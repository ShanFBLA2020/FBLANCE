<!-- 
	Program/Web Page name	: index.php
	Function		: Main page to perform logout functionality
	Modification History	: 
		May 27, 2020 : Initial Development
-->


<?php
// Initialize the session
session_start();
 
// Unset all of the session variables
$_SESSION = array();
 
// Destroy the session.
session_destroy();
 
// Redirect to login page
header("location: http://localhost/template/index.html");
exit;
?>