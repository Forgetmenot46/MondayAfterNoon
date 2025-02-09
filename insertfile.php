//insertfile.php
<?php
$file="./line.txt";
$write="This is line Three\n";
file_put_contents($file,$write,FILE_APPEND);
?>
