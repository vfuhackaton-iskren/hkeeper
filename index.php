<?php
$mysqli = new mysqli("localhost", "root", "toor", "hkeeping");
if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
}
echo $mysqli->host_info . "\n"; 


if (!$mysqli->query("SELECT * FROM users; ")) {
    echo "Error retrievering data: (" . $mysqli->errno . ") " . $mysqli->error;
} else {


$get_users_query = "SELECT * FROM users;";
$users = mysqli_query($mysqli , $get_users_query);
while($row = $users->fetch_array(MYSQL_ASSOC)) 
	{
            $myArray[] = $row;
    }

}
echo "<pre>";
print_r($myArray);
echo "<pre>";


?>

<!DOCTYPE html>
<html>
<head>
</head>



<body>

<?php echo "<p>The Book </p>"; ?>



</body> 

</htm>