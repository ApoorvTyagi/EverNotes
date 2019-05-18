<html>
<head>
<style>
body {
  background-color: #f6d8ac;
}
#detail {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#detail td {
  border: 1px solid #ddd;
  padding: 5px;
  text-align: center;
  width:20%;
}

#detail tr:nth-child(even){background-color: #f2f2f2;}

#detail tr:hover {background-color: #ddd;}

#detail th {
  padding-top: 12px;
  padding-bottom: 12px;
  border: 1px solid #ddd;
  width:20%;
  text-align: center;
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body>

<h1><center>Faculty Details</h1>
<?php
	session_start();
	$dept=$_SESSION['course'];
	$con=mysqli_connect("localhost","root","","notes");
	if($con){
		$q=mysqli_query($con,"select * from users where role='teacher'and course='".$dept."'");
		?>
		<table id="detail">
			<tr>
				<th>Name</th>
				<th>Email</th>
				<th>Gender</th>
				<th>Department</th>
				<th>Picture</th>
			</tr>
		</table>	
		<?php	
		while($rows=mysqli_fetch_array($q))
		{
			?>
			<table id="detail">
			<tr>
			<td><?php echo $rows[2]; ?></td>
			<td><?php echo $rows[5]; ?></td>
			<td><?php echo $rows[7]; ?></td>
			<td><?php echo $rows[9]; ?></td>	
			<td><?php echo "<img src='profilepics/$rows[10]' width=50px height=50px>"?></td>
			</tr>
			</table>
			
			<?php		
		}
	}
	else
		echo "There was a error in connection";
?>
