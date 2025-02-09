//insertfile.php
<?php
$file = "./line.txt";
$date = date('d-m-y');
$write = $_POST['text1'] . " , " . $date . "\n";
file_put_contents($file, $write, FILE_APPEND);

?>
<br>
<a href=Readfile.php>Show data for text file </a>