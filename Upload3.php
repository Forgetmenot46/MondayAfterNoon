<html>

<body>
    <?php
    include("include.php");
    $strSQL = "SELECT * FROM files";
    $objQuery = mysqli_query($conn, $strSQL) or die("Error Query [" . $strSQL . "]");
    ?>
    <table width="340" border="1">
        <tr>
            <th width="50">
                <div align="center">Files ID </div>
            </th>
            <th width="150">
                <div align="center">Picture</div>
            </th>
            <th width="150">
                <div align="center">Name</div>
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
                    <div align="center"><?= $objResult["FilesID"]; ?></div>
                </td>
                <td>
                    <center><img src="myfile/<?= $objResult["FilesName"]; ?>" width="200px" height="200px"></center>
                </td>
                <td>
                    <center><?= $objResult["Name"]; ?></center>
                </td>
                <td>
                    <center><a href="Upload4.php?FilesID=<?= $objResult["FilesID"]; ?>">Edit</a></center>
                </td>
            </tr>
        <?php } ?>
    </table>

    <a href="Upload1.php">Upload1</a>
</body>

</html>