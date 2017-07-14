<?php
$name=$_REQUEST["topic_name"]; 
$cat=$_REQUEST["category"]; 
$des=$_REQUEST["Description"]; 
$mysql = mysqli_connect("localhost","root","","diorum") or die("cannot connect"); 
$sql="Select * from created";
$result=mysqli_query($mysql, $sql);
$tid=0;
while($row=mysqli_fetch_array($result))
{
	$tid=$row['topic_id'];
}
$tid=$tid+1;
$res="INSERT INTO created(topic_id,topic_name,date_created,user_id,description,category) VALUES('$tid','$name','now())','20002','$des','$cat')";
mysqli_query($mysql,$res);
$res="INSERT INTO topic(topic_id,topic_name,date_created,user_id,description,category) VALUES('$tid','$name','now())','20002','$des','$cat')";
mysqli_query($mysql,$res);
mysqli_close($mysql); 

if($res)
	echo "<center><h1> Discussion Created Successfully! </h1></center>";
else
	echo "<center><h1> Failed ...!!!</h1></center>";
?>