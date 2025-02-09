<font size = 6 >
<?php
$file="./line.txt";
	$conn = mysqli_connect ("localhost", "root","", "monday_aft");
	$sql = "SELECT * FROM product";
	$result = mysqli_query($conn,$sql) or die(mysql_error());

while($row = mysqli_fetch_array($result)) {

	$write = $row['product_id']." , ";
	$write.= $row['product_name']." , ";
	$write.= $row['product_price']."\n";

	
	
	file_put_contents($file,$write,FILE_APPEND);

	
}
?>
