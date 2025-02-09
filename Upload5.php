<html>

<body>
    <?php
    //*** Update Record ***//

    include("include.php");
    $strSQL = "UPDATE files ";
    $strSQL .= " SET NAME = '" . $_POST["txtName"] . "' WHERE FilesID = '" . $_GET["FilesID"] . "' ";
    $objQuery = mysqli_query($conn, $strSQL);

    if ($_FILES["filUpload"]["name"] != "") {
        if (move_uploaded_file($_FILES["filUpload"]["tmp_name"], "myfile/" . $_FILES["filUpload"]["name"])) {
            
            //*** Delete Old File ***//			
            @unlink("myfile/" . $_POST["hdnOldFile"]);

            //*** Update New File ***//
            $strSQL = "UPDATE files ";
            $strSQL .= " SET FilesName = '" . $_FILES["filUpload"]["name"] . "' WHERE FilesID = '" . $_GET["FilesID"] . "' ";
            $objQuery = mysqli_query($conn, $strSQL);
            echo "Copy/Upload Complete<br>";
        }
    }
    ?>
    <a href="Upload3.php">View files</a>
</body>

</html>