<?php
$conn            = new mysqli("localhost", "database_user", "password", "database_name");
$sql             = "SELECT * FROM products WHERE `attributes` -> '$.ports.hdmi' >= 0";
$result 	       = $conn->query($sql);
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Bootstrap Example</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>

<body>
	<div class="p-5 mb-4 bg-light rounded-3 text-center">
		<h1>Retrieving JSON Data</h1>
		<p>PHP + MYSQL</p>
	</div>
	
	<div class="content">
		<div class="container">
			<h2 class="mb-5">JSON Table</h2>
			<div id="result"></div>
			<div class="table-responsive">
				<table class="table">
					<thead>
						<th>Name</th>
						<th>Screen</th>
						<th>USB Ports</th>
						<th>HDMI Ports</th>
						<th>Resolution</th>
						<th scope='col' colspan='2'>Speakers</th>
					</thead>
					<tbody>
          <?php  
          while ($row = $result->fetch_array()) {
              $attribute_value = json_decode($row['attributes'], true);

        echo "<tr>
              <td><input class='name form-control' data-id1='".$row['pro_id']."' value='" . $row['name'] . "' type='text' placeholder='Name'></td>
              <td><input class='screen form-control' data-id2='".$row['pro_id']."' value='" . $attribute_value['screen'] . "' type='text' placeholder='Screen'></td>
              <td><input class='usb form-control' data-id3='".$row['pro_id']."' value='" . $attribute_value['ports']['usb'] . "' type='number' placeholder='USB'></td>
              <td><input class='hdmi form-control' data-id4='".$row['pro_id']."' value='" . $attribute_value['ports']['hdmi'] . "' type='number' placeholder='HDMI'></td>
              <td><input class='resolution form-control' data-id5='".$row['pro_id']."' value='" . $attribute_value['resolution'] . "' type='text' placeholder='Resolution'></td>
              <td><input class='left-speaker form-control' data-id6='".$row['pro_id']."' value='" . $attribute_value['speakers']['left'] . "' type='text' placeholder='Left Speakers'></td>
              <td><input class='right-speaker form-control' data-id7='".$row['pro_id']."' value='" . $attribute_value['speakers']['right'] . "' type='text' placeholder='Right Speakers'></td>
            </tr>";
          }
          ?>
	        </tbody>
	      </table>
	    </div>
    </div>
<script src="ajax/js/edit.js"></script>
</body>
</html>
