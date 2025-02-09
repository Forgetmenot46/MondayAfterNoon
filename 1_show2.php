// 1_show2.php 
<?php
session_start();
echo "<br>";
print "Name = " . $_SESSION['name'] . "<br>";
print "number1 =" . $_SESSION['number1'] . "<br>";
print "number2 =" . $_SESSION['number2'] . "<br>";
print "result = " . $_SESSION['result'] . "<br>";
?>


<a href ="1input.php">back to Program</a>
