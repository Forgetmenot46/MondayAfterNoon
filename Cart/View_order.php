<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<?php
include("include.php");
$strSQL = "SELECT * FROM orders WHERE OrderID = '" . $_GET["OrderID"] . "' ";
$objQuery = mysqli_query($conn, $strSQL) or die(mysql_error());
$objResult = mysqli_fetch_array($objQuery);
?>
<table width="304" border="1">
    <tr>
        <td width="71">OrderID</td>
        <td width="217">
            <?= $objResult["OrderID"]; ?>
        </td>
    </tr>
    <tr>
        <td width="71">Name</td>
        <td width="217">
            <?= $objResult["Name"]; ?>
        </td>
    </tr>
    <tr>
        <td>Address</td>
        <td><?= $objResult["Address"]; ?></td>
    </tr>
    <tr>
        <td>Tel</td>
        <td><?= $objResult["Tel"]; ?></td>
    </tr>
    <tr>
        <td>Email</td>
        <td><?= $objResult["Email"]; ?></td>
    </tr>
</table>
<br>
<table width="400" border="1">
    <tr>
        <td width="101">ProductID</td>
        <td width="82">ProductName</td>
        <td width="82">Price</td>
        <td width="79">Qty</td>
        <td width="79">Total</td>
    </tr>
    <?php
    $Total = 0;
    $SumTotal = 0;
    $strSQL2 = "SELECT * FROM orders_detail WHERE OrderID = '" . $_GET["OrderID"] . "' ";
    $objQuery2 = mysqli_query($conn, $strSQL2) or die(mysql_error());
    while ($objResult2 = mysqli_fetch_array($objQuery2)) {
        $strSQL3 = "SELECT * FROM product WHERE ProductID = '" . $objResult2["ProductID"] . "' ";
        $objQuery3 = mysqli_query($conn, $strSQL3) or die(mysql_error());
        $objResult3 = mysqli_fetch_array($objQuery3);
        $Total = $objResult2["Qty"] * $objResult3["Price"];
        $SumTotal = $SumTotal + $Total;
        ?>
        <tr>
            <td><?= $objResult2["ProductID"]; ?></td>
            <td><?= $objResult3["ProductName"]; ?></td>
            <td><?= $objResult3["Price"]; ?></td>
            <td><?= $objResult2["Qty"]; ?></td>
            <td><?= number_format($Total, 2); ?></td>
        </tr>
    <?php
    }
    ?>
</table>
Sum Total <?= number_format($SumTotal, 2); ?>

<p><a href=product.php>back to main</a>
    </body>

</html>