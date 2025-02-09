<?php
ob_start();
session_start();	
	$key = array_search($_GET["ProductID"], $_SESSION["strProductID"]);
	if((string)$key != "")
	{	 $_SESSION["strQty"][$key] = $_SESSION["strQty"][$key]-1;}
	 header("location:show.php");
?>

