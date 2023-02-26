<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
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
.style14 {font-size: medium;
	font-weight: bold;
	color: #333333;
}
.style8 {font-size: medium; font-weight: bold; }
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
        <nav class="mobileUI-site-nav"> <a href="adminpage.jsp" class="active">Add Items </a> <a href="viewproducts.jsp">View Items  </a> <a href="vieworders.jsp">View Orders </a> <a href="viewattendance.jsp">View Attendance </a> <a href="deleteproduct.jsp">Delete Item </a><a href="viewfakecomments.jsp">View Fake Comments  </a><a href="adminlogin.jsp">Logout</a></nav>
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
        <h2>Cloud Kitchen </h2>
        <form action="viewattendance1.jsp" method="post" id="form1">
          <div align="center">
            <p>&nbsp;</p>
            <table width="418" height="176" border="0">
              <tr>
                <td height="51" colspan="2"><div align="center" class="style3 style24">View Attendance </div></td>
              </tr>
              <tr>
                <td width="212" height="47"><div align="center" class="style28"><span class="style3">Emp user id </span></div></td>
                <td><span class="style28">
                  <label>
                  <input name="userid" type="text" id="userid" />
                  </label>
                </span></td>
              </tr>
              <tr>
                <td height="70" colspan="2"><label>
                    <div align="center">
                      <label>
                      <input type="submit" name="Submit" value="View" />
                      </label>
                      <label></label>
                    </div>
                  </label></td>
              </tr>
            </table>
            <table width="417" height="120" border="0" >
              <tr>
                <td width="183" height="49" bgcolor="#2FBBCA"><div align="center" class="style14">Date Time </div></td>
                <td width="214" bgcolor="#2FBBCA"><div align="center" class="style14">Attendance</div></td>
              </tr>
              <%
                                        try {
                                            //String username = "username";
							//String server = session.getAttribute("server").toString();
        PreparedStatement ps;
        ResultSet rs;
		//Connection con = null;
		Statement st,st1,st2,st3,st4;
                                            Class.forName("com.mysql.jdbc.Driver");
                                      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","password");
                                            String query = "select * from attendance where username='"+username+"'"; 
                                            st = con.createStatement();
                                            rs = st.executeQuery(query);

                                            while(rs.next()) {
											 
                                                String s1 = rs.getString(2);
												String s2 = rs.getString(3);
                                              
												
                                    %>
              <tr>
                <td><div align="center"><%=s1%></div></td>
                <td><div align="center"><%=s2%></div></td>
              </tr>
              
              <%

                                            }
                                            con.close();
                                        } catch (Exception e) {
                                            out.println(e);
                                        }

                                    %>
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
