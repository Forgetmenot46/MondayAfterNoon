// 1_show1.php 
<?php
session_start();
$_SESSION['name'] = $_GET['name'];
echo "<br>";
$_SESSION['number1'] = $_GET['number1'];
$_SESSION['number2'] = $_GET['number2'];
$_SESSION['result'] = $_SESSION['number1']+$_SESSION['number2'];

print "Name = " . $_SESSION['name'] . "<br>";
print "number1 =" . $_SESSION['number1'] . "<br>";
print "number2 =" . $_SESSION['number2'] . "<br>";
print "result = " . $_SESSION['result'] . "<br>";
?>


<a href ="1_show2.php">Next Program</a>
