<?php
session_start();
$_SESSION=array();
session_destroy();
header("location: /banking/index.php");
exit();
?>
