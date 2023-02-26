<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Cloud Kitchen</title>
<meta charset="utf-8">
<style type="text/css">
<!--
.style24 {color: #993300}
.style25 {font-size: large; color: #993300; }
.style27 {font-size: x-large; color: #006633; }
.style3 {font-size: large}
.style7 {font-size: x-large}
.style12 {color: #333333}
.style15 {font-size: 18px; color: #333333; }
.style22 {font-size: 24px}
.style23 {font-size: 18px}
.style4 {font-size: medium; font-weight: bold; }
.style29 {	color: #3366FF;
	font-weight: bold;
}
.style6 {color: #3366CC; font-weight: bold; }
.style30 {	color: #003333;
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
        <nav class="mobileUI-site-nav"> <a href="userpage.jsp" class="active">View All Items </a> <a href="searchproduct.jsp">Search Item  </a> <a href="userlogin.jsp">Logout</a></nav>
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
        <div align="center">
          <form name="form1" method="post" action="searchresult.jsp">
            <table width="384" height="248" border="0" bordercolor="#666666">
              <tbody>
                <tr>
                  <td height="59" bgcolor="#F1F1F1"><div align="center" class="style12"><span class="style22">Search Item </span></div></td>
                </tr>
                <tr>
                  <td height="79" bgcolor="#F1F1F1" class="style23"><span class="style12">
                    <label></label>
                                      </span>
                      <div align="center" class="style12">
                        <label>
                        <textarea name="searchinput" id="searchinput"></textarea>
                        </label>
                    </div></td>
                </tr>

                <tr>
                  <td height="102" bgcolor="#F1F1F1"><div align="center" class="style12">
                      <label></label>
                      <p>
                        <input type="submit" name="Submit222" value="Search" />
                      </p>
                    </div></td>
                </tr>
              </tbody>
            </table>
          </form>
          </div>
        <p align="left"><a href="viewcart.jsp">View Cart Items </a></p>
      </section>
    </div>
   
  </div>
</div>
<p>&nbsp;</p>
<div align=center></div>
</body>
</html>
