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
        <h2>Cloud Kitchen </h2>
        <table width="467" height="224" border="0" >
          <tr>
            <td width="210">&nbsp;</td>
            <td width="108">&nbsp;</td>
          </tr>
          <%
                                                                       
   String username2 = session.getAttribute("username").toString();
   

                                        try {
                                            //String username = "username";
											 String searchinput = request.getParameter("searchinput");
							String username, user;
        PreparedStatement ps;
        ResultSet rs,rs1;
		//Connection con = null;
		Statement st,st1,st2,st3,st4;
		int c4=1;
		double temp=0.0;
                                            
                                            Class.forName("com.mysql.jdbc.Driver");
                                      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","password");
                                            String query = "select * from productdetails where name like '%"+searchinput+"%' || company like '%"+searchinput+"%' || description like '%"+searchinput+"%'"; 
                                            st = con.createStatement();
                                            rs = st.executeQuery(query); 
                                             while (rs.next()) { 
											 String id = rs.getString(1);
                                      String filename1="productimages/"+rs.getString("filename");
									 
                                                                    %>
          <tr>
            <td><div align="center"><img src="<%=filename1%>" alt="" width="200" height="200" /></div></td>
            <td><form id="form2" name="form2" method="post" action="viewdetail.jsp">
                <label>
                <input type="submit" name="Submit2" value="View Detail" />
                </label>
                <label>
                <input name="id" style="visibility:hidden" type="text" id="id" value="<%=id%>" size="6" />
                </label>
            </form></td>
          </tr>
          <%
			

                                            }
                                            con.close();
                                        } catch (Exception e) {
                                            out.println(e);
                                        }

                                    %>
        </table>
        <p align="left"><a href="viewcart.jsp">View Cart Items </a></p>
      </section>
    </div>
   
  </div>
</div>
<p>&nbsp;</p>
<div align=center></div>
</body>
</html>
