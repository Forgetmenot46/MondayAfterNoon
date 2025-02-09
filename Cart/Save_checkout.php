<?php
session_start();
include("include.php");
$Total = 0;
$SumTotal = 0;
$strSQL = "
	INSERT INTO orders (OrderDate,Name,Address,Tel,Email)
	VALUES ('" . date("Y-m-d H:i:s") . "','" . $_POST["txtName"] . "','" . $_POST["txtAddress"] . "' ,'" . $_POST["txtTel"] . "','" . $_POST["txtEmail"] . "')   ";
mysqli_query($conn, $strSQL) or die(mysqli_error());
$strOrderID = mysqli_insert_id($conn);
for ($i = 0; $i <= (int) $_SESSION["intLine"]; $i++) {
    if ($_SESSION["strProductID"][$i] != "") {
        $strSQL = "INSERT INTO orders_detail(OrderID,ProductID,Qty) VALUES ('" . $strOrderID . "','" . $_SESSION["strProductID"][$i] . "','" . $_SESSION["strQty"][$i] . "') ";
        mysqli_query($conn, $strSQL) or die(mysqli_error());
    }
}
//mysqli_close();
session_destroy();
header("location:finish_order.php?OrderID=" . $strOrderID);
?>