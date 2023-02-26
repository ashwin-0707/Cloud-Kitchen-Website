<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Cloud Kitchen</title>
<meta charset="utf-8">
<style type="text/css">
<!--
.style14 {font-size: 18px;
	color: #fff;
	font-weight: bold;
}
.style33 {color: #323a3f}
.style35 {color: #993366; font-size: 16px; font-weight: bold; }
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
        <form name="form1" method="post" action="PaymentVerify">
          <table width="371" height="478" border="0" align="center">
            <tr>
              <td height="64" colspan="2"><div align="center" class="style14 style33"> PAYMENT</div></td>
            </tr>
            <tr>
              <td width="158" height="53"><span class="style35">Card Type </span></td>
              <td width="216"><label>
                <select name="cardtype" id="cardtype">
                  <option value="credit">Credit Card</option>
                  <option value="debit">Debit Card</option>
                </select>
                </label>              </td>
            </tr>
            <tr>
              <td height="52"><span class="style35">Card Holder Name </span></td>
              <td><label>
                <input name="name" type="text" id="name" />
                </label>              </td>
            </tr>
            <tr>
              <td colspan="2"><label></label>
                  <table width="378" height="183" border="0">
                    <tr>
                      <td width="157" height="46"><span class="style35">Card Number </span></td>
                      <td colspan="2"><label>
                        <input name="number" type="text" id="number" />
                      </label></td>
                    </tr>
                    <tr>
                      <td height="67" colspan="2"><span class="style35">Card Valid Date </span></td>
                      <td width="210"><label>
                        <input name="valid" type="text" id="valid" />
                      </label></td>
                    </tr>
                    <tr>
                      <td height="62" colspan="2"><span class="style35">CVV Number </span></td>
                      <td><label>
                        <input name="cvvno" type="text" id="cvvno" />
                      </label></td>
                    </tr>
                  </table>
                <p>
                    <label></label>
                  </p>
                <p align="center">
                    <input type="submit" name="Submit" value="PAY" />
                </p></td>
            </tr>
          </table>
        </form>
        <p align="center">&nbsp;</p>
      </section>
    </div>
   
  </div>
</div>
<p>&nbsp;</p>
<div align=center></div>
</body>
</html>
