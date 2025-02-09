<html>

<body>
    <form name="form1" method="post" action="Upload2.php" enctype="multipart/form-data">
        <!-- ต้องมี enctype ไว้เพื่ออัพโหลดรูป -->
        Productname : <input type="text" name="txtName"><br>
        Product Price : <input type="number" name="txtPrice"><br>
        Picture : <input type="file" name="filUpload"><br>
        <input name="btnSubmit" type="submit" value="Submit">
    </form>
</body>

</html>