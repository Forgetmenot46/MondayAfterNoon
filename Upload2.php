<html>

<body>
    <?php
    include("include.php");
    if (move_uploaded_file($_FILES["filUpload"]["tmp_name"], "myfile/" . $_FILES["filUpload"]["name"])) {
        echo "Copy/Upload Complete<br>";
        //*** Insert Record ***//
        $strSQL = "INSERT INTO files ";
        $strSQL .= "(Name,FilesName) VALUES ('" . $_POST["txtName"] . "','" . $_FILES["filUpload"]["name"] . "')";
        $objQuery = mysqli_query($conn, $strSQL);
    }
    ?>
    <a href="Upload3.php">View files</a>
</body>

</html>