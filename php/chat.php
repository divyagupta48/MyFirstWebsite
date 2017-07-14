<!DOCTYPE html>
<html>
<head>


  <script src='../tinymce/js/tinymce/tinymce.min.js'></script>
  <link rel="STYLESHEET" href="../css/index_style.css">
<link rel="STYLESHEET" href="../css/main_style.css">
<link rel="STYLESHEET" href="../css/inner_style.css">
  <script>
  tinymce.init({
    selector: '#mtextarea',
     menubar: 'file edit formats'
  });

  </script>
</head>

<body>
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
<div id="wrapper">
<div id="outer_layout1">
<div id="topic_details">
<?php
$con=mysqli_connect("127.0.0.1","root","" , "diorum");
$Value=$_REQUEST['var'];
$sql="select * from topic where topic_id=$Value";
$result=mysqli_query($con, $sql);
$row=mysqli_fetch_array($result);
echo "<h1>$row[topic_name]</h1>";
echo "<H3>Description:</H3>";
echo "<p>$row[description]</p>";
  ?>


</div>
<div id="chat">

</div>
  <form method="post" action="" name="write">
    <textarea id="mtextarea" rows="10"></textarea>
    
    <input type="file" class="form-control"><input type="submit" value="Post">
  </form>
  </div>
  <div id="outer_layout2">
  <div id="leave" style="width:100%;height:35px;">
  <input type="button" value="Leave Discussion" style="width:20%">
  </div>
    <div id="members_list" style="width:100%;height:800px;">
    <h1>Members List</h1>
    </div>
    <div></div>
  </div></div>
</body>
</html>
