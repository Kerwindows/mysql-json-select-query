<?php  
	$conn	= new mysqli("localhost", "kerwindows_designer_test", "lFdd28BS5^", "kerwindows_designer_test");
	$id = $_POST["id"];  
	$value = stripslashes(htmlspecialchars($_POST["value"]));  
	$column_name = $_POST["column_name"];  
	$key = $_POST["key"]; 
	
	$sql = "UPDATE products SET `$column_name` = JSON_SET(`$column_name` ,'$key' , '$value') WHERE `pro_id`='".$id."' ";  
	if(mysqli_query($conn, $sql)){} mysqli_close($conn);
 ?>
