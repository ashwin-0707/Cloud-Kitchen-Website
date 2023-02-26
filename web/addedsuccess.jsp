<!DOCTYPE HTML>
<html>
<head>
<title>Restaurant</title>
<meta charset="utf-8">
<style type="text/css">
<!--
.style24 {
	color: #993300;
	font-weight: bold;
}
.style3 {font-size: large}
.style28 {color: #006633}
.style29 {font-size: large; color: #006633; }
.style30 {font-size: medium;
	color: #006600;
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
        <nav class="mobileUI-site-nav"> <a href="adminpage.jsp" class="active">Add Products </a> 
		<a href="viewproducts.jsp">View Products  </a> 
		<a href="vieworders.jsp">View Orders </a> 
		<a href="deleteproduct.jsp">Delete Product </a>
		<a href="viewfakecomments.jsp">View Comments  </a>
		<a href="adminlogin.jsp">Logout</a></nav>
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
        <h2>Cloud Kitchen</h2>
        <form action="AddProduct" method="post" enctype="multipart/form-data" id="form1">
          <div align="center">
            <p><span class="style30">Food added  success... </span></p>
            <table width="598" height="400" border="0">
              <tr>
                <td height="51" colspan="2"><div align="center" class="style3 style24">Add new Food details </div></td>
              </tr>
              <tr>
                <td width="212" height="47"><div align="center" class="style28"><span class="style3">Food Name</span></div></td>
                <td><span class="style28">
                  <label>
                  <input name="name" type="text" id="name" />
                  </label>
                </span></td>
              </tr>
              <tr>
                <td height="41"><div align="center"><span class="style29">Veg / Non Veg </span></div></td>
                <td><label>
                  <input name="company" type="text" id="company">
                </label></td>
              </tr>
              <tr>
                <td><div align="center"><span class="style29">Description</span></div></td>
                <td><label>
                  <textarea name="description" id="description"></textarea>
                  <br />
                </label></td>
              </tr>
              <tr>
                <td height="48"><div align="center" class="style28"><span class="style3">Price</span></div></td>
                <td><span class="style28">
                  <label>
                  <input name="price" type="text" id="price" />
                  </label>
                </span></td>
              </tr>
              <tr>
                <td height="50"><div align="center" class="style28"><span class="style3"> Image </span></div></td>
                <td><input name="fu" type="file" id="fu" /></td>
              </tr>
              <tr>
                <td height="70" colspan="2"><label>
                    <div align="center">
                      <label>
                      <input type="submit" name="Submit" value="Submit" />
                      </label>
                      <label></label>
                    </div>
                  </label></td>
              </tr>
            </table>
            <p align="center">&nbsp;</p>
          </div>
        </form>
        <p>&nbsp;</p>
      </section>
    </div>
   
  </div>
</div>
<div class="entry">
  <p>&nbsp;</p>
   <p>&nbsp;</p>
</div>
<p>&nbsp;</p>
<div align=center></div>
</body>
</html>
