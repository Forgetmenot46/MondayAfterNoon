<html>

<body>
    <?php
    include("include.php");
    $strSQL = "SELECT * FROM files WHERE FilesID = '" . $_GET["FilesID"] . "' ";
    $objQuery = mysqli_query($conn, $strSQL) or die("Error Query [" . $strSQL . "]");
    $objResult = mysqli_fetch_array($objQuery);
    ?>
    <form name="form1" method="post" action="Upload5.php?FilesID=<?= $_GET["FilesID"]; ?>" enctype="multipart/form-data">
        Edit Picture :<br>
        Name : <input type="text" name="txtName" value="<?= $objResult["Name"]; ?>"><br>
        <img src="myfile/<?= $objResult["FilesName"]; ?>"><br>
        Picture : <input type="file" name="filUpload"><br>
        <input type="hidden" name="hdnOldFile" value="<?= $objResult["FilesName"]; ?>">
        <input name="btnSubmit" type="submit" value="Submit">
    </form>
</body>

</html>