<html>

<body>
    <?php
    include("include.php");
    if ($_FILES["filUpload"]["name"] != "") {
        //*** Read file BINARY ***'
        $fp = fopen($_FILES["filUpload"]["tmp_name"], "r");
        $ReadBinary = fread($fp, filesize($_FILES["filUpload"]["tmp_name"]));
        fclose($fp);
        $FileData = addslashes($ReadBinary);
        //*** Insert Record ***//
        $strSQL = "INSERT INTO files2 ";
        $strSQL .= "(Name,FilesName) VALUES ('" . $_POST["txtName"] . "','" . $FileData . "')";
        $objQuery = mysqli_query($conn, $strSQL);
        echo "Copy/Upload Complete<br>";
        // mysql_close();
    }
    ?>
    <a href="Uploadblob3.php">View files</a>
</body>

</html>