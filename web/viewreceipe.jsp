<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Cloud Kitchen</title>
<meta charset="utf-8">
<style type="text/css">
<!--
.style3 {
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
        <form name="form1" method="post" action="PlaceAttendance">
          <label>
          <br>
          <div align="center">
            <p class="style3">Briyani Receipe</p>
            <div id="ingredata">
              <ul data-convert="mainingriedient">
                <li quantity="1" unit="cup" displayname="basmati rice" suffix="boiled">
                  <label for="1">1 cup boiled basmati rice</label>
                </li>
                <li quantity="1/2" unit="teaspoon" displayname="mint leaves" suffix="">
                  <label for="3">1/2 teaspoon mint leaves</label>
                </li>
                <li quantity="0" unit="As required" displayname="salt" suffix="">
                  <label for="5">salt as required</label>
                </li>
                <li quantity="2" unit="tablespoon" displayname="refined oil" suffix="">
                  <label for="7">2 tablespoon refined oil</label>
                </li>
                <li quantity="3" unit="Numbers" displayname="green cardamom" suffix="">
                  <label for="9">3 green cardamom</label>
                </li>
                <li quantity="2" unit="Numbers" displayname="clove" suffix="">
                  <label for="11">2 clove</label>
                </li>
                <li quantity="2" unit="Numbers" displayname="onion" suffix="">
                  <label for="13">2 onion</label>
                </li>
                <li quantity="1" unit="teaspoon" displayname="turmeric" suffix="">
                  <label for="15">1 teaspoon turmeric</label>
                </li>
                <li quantity="1" unit="tablespoon" displayname="garlic paste" suffix="">
                  <label for="17">1 tablespoon garlic paste</label>
                </li>
                <li quantity="1" unit="cup" displayname="hung curd" suffix="">
                  <label for="19">1 cup hung curd</label>
                </li>
                <li quantity="2" unit="tablespoon" displayname="coriander leaves" suffix="">
                  <label for="21">2 tablespoon coriander leaves</label>
                </li>
                <li quantity="0" unit="As required" displayname="water" suffix="">
                  <label for="23">water as required</label>
                </li>
                <li quantity="1" unit="tablespoon" displayname="ghee" suffix="">
                  <label for="25">1 tablespoon ghee</label>
                </li>
              </ul>
              <ul data-convert="mainingriedient">
                <li quantity="600" unit="grams" displayname="chicken" suffix="">
                  <label for="2">600 gm chicken</label>
                </li>
                <li quantity="1" unit="tablespoon" displayname="garam masala powder" suffix="">
                  <label for="4">1 tablespoon garam masala powder</label>
                </li>
                <li quantity="1" unit="teaspoon" displayname="saffron" suffix="">
                  <label for="6">1 teaspoon saffron</label>
                </li>
                <li quantity="1" unit="tablespoon" displayname="bay leaf" suffix="">
                  <label for="8">1 tablespoon bay leaf</label>
                </li>
                <li quantity="1" unit="Numbers" displayname="black cardamom" suffix="">
                  <label for="10">1 black cardamom</label>
                </li>
                <li quantity="1" unit="teaspoon" displayname="cumin seeds" suffix="">
                  <label for="12">1 teaspoon cumin seeds</label>
                </li>
                <li quantity="4" unit="Numbers" displayname="green chillies" suffix="">
                  <label for="14">4 green chillies</label>
                </li>
                <li quantity="1" unit="tablespoon" displayname="ginger paste" suffix="">
                  <label for="16">1 tablespoon ginger paste</label>
                </li>
                <li quantity="1" unit="teaspoon" displayname="red chilli powder" suffix="">
                  <label for="18">1 teaspoon red chilli powder</label>
                </li>
                <li quantity="1/2" unit="tablespoon" displayname="ginger" suffix="">
                  <label for="20">1/2 tablespoon ginger</label>
                </li>
                <li quantity="2" unit="drops" displayname="kewra" suffix="">
                  <label for="22">2 drops kewra</label>
                </li>
                <li quantity="1" unit="tablespoon" displayname="rose water" suffix="">
                  <label for="24">1 tablespoon rose water</label>
                </li>
              </ul>
            </div>
            <div>
              <div data-size="[300,250]" id="div-gpt-ad-1568380287215-1-32183" data-google-query-id="CITVgY_6ofgCFRZ5aAodaxUBRg">
                <div id="google_ads_iframe_/7176/Recipes/Recipes_ROS_Articles_AS/Recipes_ROS_MTF_Artcles_AS_300_0__container__"></div>
              </div>
            </div>
            <p>&nbsp; </p>
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
