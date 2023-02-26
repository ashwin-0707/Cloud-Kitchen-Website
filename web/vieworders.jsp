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
	font-size: x-large;
	font-weight: bold;
	color: #2FBBCA;
}
.style29 {font-size: large; color: #006633; }
.style14 {font-size: medium;
	font-weight: bold;
	color: #333333;
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
        <nav class="mobileUI-site-nav"> <a href="adminpage.jsp" class="active">Add Items </a> <a href="viewproducts.jsp">View Items  </a> <a href="vieworders.jsp">View Orders </a> <a href="deleteproduct.jsp">Delete Item </a><a href="viewfakecomments.jsp">View Comments  </a><a href="adminlogin.jsp">Logout</a></nav>
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
            <p>&nbsp;</p>
            <p class="style3">View Orders </p>
            <table width="869" height="206" border="0" >
              <tr>
                <td width="121" height="49" bgcolor="#2FBBCA"><div align="center" class="style14 style29">Username </div></td>
                <td width="133" bgcolor="#2FBBCA"><div align="center" class="style14">Item ID  </div></td>
                <td width="203" bgcolor="#2FBBCA"><div align="center" class="style14">Item Name  </div></td>
                <td width="135" bgcolor="#2FBBCA"><div align="center" class="style14">Quantity</div></td>
                <td width="148" bgcolor="#2FBBCA"><div align="center"><span class="style14">Price</span></div></td>
                <td width="103" bgcolor="#2FBBCA"><div align="center"><span class="style14">Status</span></div></td>
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
                                            String query = "select * from cart"; 
                                            st = con.createStatement();
                                            rs = st.executeQuery(query);

                                            while(rs.next()) {
											 
                                                String s1 = rs.getString(1);
												String s2 = rs.getString(2);
                                                String s3 = rs.getString(3);
                                                String s4 = rs.getString(4);
												String s5 = rs.getString(6);
												String s6 = rs.getString(7);
												
                                    %>
              <tr>
                <td><div align="center"><%=s1%></div></td>
                <td><div align="center"><%=s2%></div></td>
                <td><div align="center"><%=s3%></div></td>
                <td><div align="center"><%=s4%></div></td>
                <td><div align="center"><%=s5%></div></td>
                <td><div align="center"><%=s6%></div></td>
              </tr>
              <tr>
                <td colspan="6"><div align="center"></div></td>
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
