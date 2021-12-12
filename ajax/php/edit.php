<?php  
	$conn	= new mysqli("localhost", "kerwindows_designer_test", "lFdd28BS5^", "kerwindows_designer_test");
	$id = $_POST["id"];  
	$text = nl2br(stripslashes(htmlspecialchars($_POST["text"])));  
	$column_name = $_POST["column_name"];  
	$sql = "UPDATE products SET ".$column_name."='".$text."' WHERE pro_id='".$id."'";  
	if(mysqli_query($conn, $sql)){} mysqli_close($conn);
 ?>
