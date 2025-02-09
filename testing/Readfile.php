// readfile.php
<br>

<?php
$file = "./line.txt";
$document = file_get_contents($file);

$line = explode("\n", $document);
foreach ($line as $newline) {

    echo "<b>" . $newline . "</b><br>";
}

?>

<a href=2_inputtext.php>Input New Data</a>