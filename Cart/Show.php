<?php
session_start();
?>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<?php
include("include.php");
?>
<table width="400" border="1">
    <tr>
        <td width="101">ProductID</td>
        <td width="82">ProductName</td>
        <td width="82">Price</td>
        <td width="79">Qty</td>
        <td width="79">Total</td>
        <td width="10">Del</td>
        <td width="10">Add</td>
        <td width="10">minus</td>
    </tr>
    <form>
        <?php
        $Total = 0;
        $SumTotal = 0;
        for ($i = 0; $i <= (int) $_SESSION["intLine"]; $i++) {
            if ($_SESSION["strProductID"][$i] != "") {
                $strSQL = "SELECT * FROM product WHERE ProductID = '" . $_SESSION["strProductID"][$i] . "' ";
                $objQuery = mysqli_query($conn, $strSQL) or die();
                $objResult = mysqli_fetch_array($objQuery);
                $Total = $_SESSION["strQty"][$i] * $objResult["Price"];
                $SumTotal = $SumTotal + $Total;
                ?>
                <tr>
                    <td><?= $_SESSION["strProductID"][$i]; ?></td>
                    <td><?= $objResult["ProductName"]; ?></td>
                    <td><?= $objResult["Price"]; ?></td>
                    <td><input type="number" name="strNewQty" value="<?= $_SESSION["strQty"][$i]; ?>" </td>
                    <td><?= number_format($Total, 2); ?></td>
                    <td><a href="delete.php?Line=<?= $i; ?>">x</a></td>
                    <td><a href="cal_p.php?ProductID=<?= $objResult["ProductID"]; ?>">+</a></td>
                    <td><a href="cal_m.php?ProductID=<?= $objResult["ProductID"]; ?>">-</a></td>
                </tr>
                <?php
            }
        }
        ?>
    </form>
</table>
Sum Total <?= number_format($SumTotal, 2); ?>
<br><br><a href="product.php">Go to Product</a>
<?php
if ($SumTotal > 0) {
    ?>
    | <a href="checkout.php">CheckOut</a>
    <?php
}
?>

</body>

</html>