<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Cloud Kitchen</title>
<meta charset="utf-8">
<style type="text/css">
<!--
.style31 {
	color: #009933;
	font-size: large;
	font-weight: bold;
}
-->
</style>
<noscript>
<link rel="stylesheet" href="css/5grid/core.css">
<link rel="stylesheet" href="css/5grid/core-desktop.css">
<link rel="stylesheet" href="css/5grid/core-1200px.css">
<link rel="stylesheet" href="css/5grid/core-noscript.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/style-desktop.css">
</noscript>
<script src="css/5grid/jquery.js"></script>
<script src="css/5grid/init.js?use=mobile,desktop,1000px&amp;mobileUI=1&amp;mobileUI.theme=none"></script>
<!--[if IE 9]><link rel="stylesheet" href="css/style-ie9.css"><![endif]-->
</head>
<body>
<div id="header-wrapper">
  <header id="header" class="5grid-layout">
    <div class="row">
      <div class="12u">
        <!-- Logo -->
        <h1>Cloud Kitchen
          <!-- Nav -->
        </h1>
        <nav class="mobileUI-site-nav"> <a href="viewreceipe.jsp" class="active">View Receipe </a> <a href="emppage.jsp">Attendance  </a> <a href="emplogin.jsp">Logout</a></nav>
      </div>
    </div>
  </header>
</div>
<div id="wrapper">
  <div class="5grid-layout">
    <div class="row">
      <div class="12u" id="banner">
        <section><a href="#"><img src="images/pics01.jpg" alt=""></a></section>
      </div>
    </div>
    <div id="feature-content">
      <section>
        <h2 align="center">Cloud Kitchen</h2>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <form name="form1" method="post" action="PlaceAttendance">
          <label>
            <div align="center"> 
              <p>
                <label></label>
                <br>
                <span class="style31">Attendance Placed Success... </span></p>
              <p><br>
              </p>
            </div>
          </label>
        </form>
        <p align="center">&nbsp;</p>
        <p align="center">&nbsp;</p>
        <p align="left"><a href="viewcart.jsp"></a></p>
      </section>
    </div>
   
  </div>
</div>
<p>&nbsp;</p>
<div align=center></div>
</body>
</html>
