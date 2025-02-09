<html>

<body>
    <?php
    include("include.php");
    $strSQL = "SELECT * FROM files2 WHERE FilesID = '" . $_GET["FilesID"] . "' ";
    $objQuery = mysqli_query($conn, $strSQL) or die("Error Query [" . $strSQL . "]");
    $objResult = mysqli_fetch_array( $objQuery);
    ?>
    <form name="form1" method="post" action="Uploadblob5.php?FilesID=<?= $_GET["FilesID"]; ?>" enctype="multipart/form-data">
        Edit Picture :<br>
        Name : <input type="text" name="txtName" value="<?= $objResult["Name"]; ?>"><br>
        <img src="ViewImage.php?FilesID=<?= $objResult["FilesID"]; ?>">
        <br>
        Picture : <input type="file" name="filUpload"><br>
        <input name="btnSubmit" type="submit" value="Submit">
    </form>
</body>
<? ///mysql_close(); ?>

</html>