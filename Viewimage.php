<?php
include("include.php");
$strSQL = "SELECT * FROM files2 WHERE FilesID = '" . $_GET["FilesID"] . "' ";
$objQuery = mysqli_query($conn, $strSQL) or die("Error Query [" . $strSQL . "]");
$objResult = mysqli_fetch_array( $objQuery);
echo $objResult["FilesName"];
