<html>

<body>
    <?php
    include("include.php");
    if (move_uploaded_file($_FILES["filUpload"]["tmp_name"], "img/" . $_FILES["filUpload"]["name"])) {
        echo "Copy/Upload Complete<br>";
        //*** Insert Record ***//
        $strSQL = "INSERT INTO product ";
        $strSQL .= "(ProductName,Price,Picture) VALUES ('" . $_POST["txtName"] . "','" . $_POST["txtPrice"] . "','" . $_FILES["filUpload"]["name"] . "')";

        // print $strSQL . "<br>";
        $objQuery = mysqli_query($conn, $strSQL);
    }
    ?>
    <a href="Upload3.php">View files</a>
</body>

</html>