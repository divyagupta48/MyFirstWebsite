<!DOCTYPE html>
<head>
<title>
Explore Topics
</title>
		
<link rel="STYLESHEET" href="../css/index_style.css">
<link rel="STYLESHEET" href="../css/main_style.css">
<script>

</script>
<style>
#details
{
	background-color: #e6e6e6;
	width:100%;
	height:400px;
	position:relative;
	overflow-y: auto;
}
.expert_name,#id1,#id2
{
	 position: absolute;
 	font-size:24px;
    left: 130px;
    width:30%;
}
#details label,textarea
{	
	 position: absolute;
 	font-size:24px;
    left: 130px;
}
#search
{
	width:30%;
	height:20px;
	margin:10px 5px 10px 250px;
	border: 2px solid blue;
}
#search_button
{
	width:50px;
	height:27px;
	margin:20px 0px 10px 170px;
	position: absolute;
	top:21px;
	left:290px;
}

#search:hover
{
	box-shadow: 2px 2px 5px blue;
}
button
{
	height:40px;
	width:100px;
	background-color: #0052cc;
	color:white;
	font-style: bold;
	font-size:18px;
	 position: absolute;
    right: 500px;
}
#post
{
	position: absolute;
    left: 130px;
	height:40px;
	width:200px;
	background-color: #0052cc;
	color:white;
	font-style: bold;
	font-size:20px;
}
#main
{
	overflow-y: auto;
}
#btns
{
	background-color: white;
	width:100%;
	height:50px;
	
}
#btns a
{
	display:inline-block;
	background-color: blue;
	color:white;
	width:5%;
	height:20px;
	margin:10px 5px;
	padding:5px 10px;
	border-radius: 20px;
	text-decoration: none; 
}

</style>

<script>
	function star()
	{
		document.getElementByClass("st").value="Starred";
	}
</script>
</head>

<body>
<div id=main>
<div id="partfirst">
<img src="../images/logo.png" id="logo">&nbsp&nbsp<h3>DIORUM</h3>
<a href="#"><img src="../images/search.jpg" id="search_button"></a>
<input type="text" id="search" placeholder="Search...">
<div id="icon">
<img src="../images/icon1.jpg" id="notifications">&nbsp&nbsp
<a href="../html/your_discussion.html"><img src="../images/icon2.png" title="Your Discussions"></a>&nbsp&nbsp
<div class="dropdown">
<img src="../images/icon3.jpg" class="dropbtn">&nbsp&nbsp&nbsp
<div class="dropdown-content">
 <a href="#">Your Profile</a>
    <a href="../html/prof_settings.html">Profile settings</a>
    <a href="#">Give feedback</a>
    <a href="../index.html">Logout</a>
  </div>
</div>
</div>
</div>

<br><br>
<div id="lastpart">
<h1>Explore More, Explore Great..!</h1>
</div>

	<div id="btns">
	<a href="#all">All</a>
	<a href="music.php">Music</a>
	<a href="studies.php">Studies</a>
	<a href="games.php">Games</a>
	<a href="computers.php">Computer</a>
	<a href="debate.php">Debate</a>
	<a href="literature.php">Literature</a>
	</div>
	<div id="details">
	<a name="all">
<?php
$con=mysqli_connect("127.0.0.1","root","" , "diorum");

$sql="select * from created";
$result=mysqli_query($con, $sql);
echo "<table>";
echo "<tr><th>Topic</th><th>&nbsp</th><th>Date Created</th><th>&nbsp</th><th>Description</th><th>&nbsp</th></tr>";
while($row=mysqli_fetch_array($result))
{
	echo "<tr><td>$row[topic_name]</td><td>&nbsp</td><td>$row[date_created]</td><td>&nbsp</td><td>$row[description]</td><td>&nbsp</td>";
	echo "<td><td>&nbsp&nbsp&nbsp&nbsp&nbsp</td><td><form action='chat.php' method='post'><input type='submit' name=$row[topic_id] value='View Discussion'>
	<input type='button' class=st value='Mark Star' onclick='star();'></form></td></tr>";
}
$sql="select * from starred";
$result=mysqli_query($con, $sql);
while($row=mysqli_fetch_array($result))
{
	echo "<tr><td>$row[topic_name]</td><td>&nbsp</td><td>$row[date_created]</td><td>&nbsp</td><td>$row[description]</td><td>&nbsp</td>";
	echo "<td><td>&nbsp&nbsp&nbsp&nbsp&nbsp</td><td><form action='chat.php' method='post'><input type='submit' name=$row[topic_id] value='View Discussion'>
	<input type='button' class=st value='Mark Star' onclick='star();'></form></td></tr>";
}
echo "</table>";
	?>
</a>
</div>
<div id="lastpart" style="width:100%;height:20px">

</div>
</div>
</body>
</html>