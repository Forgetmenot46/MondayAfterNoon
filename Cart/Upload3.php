<html>

<body>
    <?php
    include("include.php");
    $strSQL = "SELECT * FROM product";
    $objQuery = mysqli_query($conn, $strSQL) or die("Error Query [" . $strSQL . "]");
    ?>
    <table width="340" border="1">
        <tr>
            <th width="50">
                <div align="center">Product ID  </div>
            </th>
            <th width="150">
                <div align="center">Product Name</div>
            </th>
            <th width="150">
                <div align="center">Price</div>
            </th>
            <th width="150">
                <div align="center">Picture</div>
            </th>
            <th width="150">
                <div align="center">Edit</div>
            </th>
        </tr>
        <?php
        while ($objResult = mysqli_fetch_array($objQuery)) {
        ?>
            <tr>
                <td>
                    <div align="center"><?= $objResult["ProductID"]; ?></div>
                </td>
                <td>
                    <center><?= $objResult["ProductName"]; ?></center>
                </td>
                <td>
                    <center><?= $objResult["Price"]; ?></center>
                </td>
                <td>
                    <center><img src="img/<?= $objResult["Picture"]; ?>" width="200px" height="200px"></center>
                </td>
                <td>
                    <center><a href="Upload4.php?ProductID=<?= $objResult["ProductID"]; ?>">Edit</a></center>
                </td>
            </tr>
        <?php } ?>
    </table>

    <a href="Upload1.php">Upload1</a>
</body>

</html>