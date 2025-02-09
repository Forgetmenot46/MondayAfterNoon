<?php
session_start();

function transfer($account_a, $account_b, $amount)
	{
		$account_a = $account_a - $amount;
		$account_b = $account_b + $amount;
		return $account_b;
	}
	$account_a = 1000;
	$b = transfer($account_a , 2000, 500);
	print $b. "<br>";
	print "a = " . $account_a;
	print "<br>";

//	phpinfo();

$str = 'Hello            There ';
$new_str = trim($str);
print "str = " .$str." | lenght = ".strlen($str)."<br>" ;
print "new str = " .$new_str. " | lenght =" . strlen($new_str)."<br>";

echo "<br>";

	$pizza = "piece1  piece2  piece3  piece4  piece5  piece6";
	$pieces = explode("  " , $pizza);
	print $pieces[0] . "<br>"; //piece1
	print $pieces[1]; //piece2

echo "<br>";
echo "<br>";
	$array = array('lastname', 'email', 'phone');
	$comma_separated = implode(" , ", $array);
	print $comma_separated; //  lastname,email,phone

echo "<br>";
$email = 'name@example.com';
$domain = strstr($email, '@');
echo $domain; //prints@example.com


echo "<br>";
//
//
//
	$a = array();
	$a[0] = 1;
	$a[1] = 3;
	$a[2] = 5;

	$result = count($a);
	print "result = ". $result . "<br>" ;// output 3
//
//
//

$food = array('fruits' => array('orange', 'banana', 'apple'),'veggie' => array('carrot', 'collard', 'pea'));

// recursive count
print "food1 = " . count($food, COUNT_RECURSIVE). "<br>"; // output  8

//normal count
print "food2 = " . count($food); //output 2

echo "<br>";

$input = array("Neo", "Morpheus", "Trinity", "Cypher", "Tank");
$rand_keys = array_rand($input, 2);
print_r($rand_keys);



?>