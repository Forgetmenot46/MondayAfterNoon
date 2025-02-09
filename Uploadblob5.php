<html>

<body>
    <?php
    //*** Update Record ***//
    include("include.php");
    $strSQL = "UPDATE files2 ";
    $strSQL .= " SET NAME = '" . $_POST["txtName"] . "' WHERE FilesID = '" . $_GET["FilesID"] . "' ";
    $objQuery = mysqli_query($conn, $strSQL);
    if ($_FILES["filUpload"]["name"] != "") {
        //*** Read file BINARY ***'
        $fp = fopen($_FILES["filUpload"]["tmp_name"], "r");
        $ReadBinary = fread($fp, filesize($_FILES["filUpload"]["tmp_name"]));
        fclose($fp);
        $FileData = addslashes($ReadBinary);
        //*** Update New File ***//
        $strSQL = "UPDATE files2 ";
        $strSQL .= " SET FilesName = '" . $FileData . "' WHERE FilesID = '" . $_GET["FilesID"] . "' ";
        $objQuery = mysqli_query($conn, $strSQL);
        echo "Copy/Upload Complete<br>";
    }

    // mysql_close();
    ?>
    <a href="Uploadblob3.php">View files</a>
</body>

</html>