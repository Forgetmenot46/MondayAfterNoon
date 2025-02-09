// readfile.php
<br>

<?php
$file="./document.txt";
$document=file_get_contents($file);

$line=explode("\n",$document);
foreach($line as $newline){

echo"<b>".$newline."</b><br>";

}

?>



