<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Cloud Kitchen</title>
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
.style30 {color: #333333;
	font-size: medium;
}
.style8 {font-size: medium; font-weight: bold; }
.style31 {	font-size: x-large;
	font-weight: bold;
	color: #2FBBCA;
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
       
          <div align="center">
            <p><span class="style31">View Comments </span></p>
            <table width="1038" height="206" border="0" >
              <tr>
                <td width="63" bgcolor="#2FBBCA"><div align="center"><span class="style14 style29">Option</span></div></td>
                <td width="109" height="49" bgcolor="#2FBBCA"><div align="center" class="style14 style29">Item ID  </div></td>
                <td width="95" bgcolor="#2FBBCA"><div align="center"><span class="style14 style29">Item Name </span> </div></td>
                <td width="92" bgcolor="#2FBBCA"><div align="center" class="style14">User Name  </div></td>
                <td width="176" bgcolor="#2FBBCA"><div align="center" class="style14">Comments </div></td>
                <td width="92" bgcolor="#2FBBCA"><div align="center" class="style14">Ratings</div></td>
                <td width="75" bgcolor="#2FBBCA"><div align="center"><span class="style14">Date Time </span></div></td>
                <td width="87" bgcolor="#2FBBCA"><div align="center"><span class="style14">IP Address </span></div></td>
                <td width="100" bgcolor="#2FBBCA"><div align="center"><span class="style14">Review status </span></div></td>
                <td width="76" bgcolor="#2FBBCA">&nbsp;</td>
              </tr>
              <%
                                        try {
                                            //String username = "username";
							//String server = session.getAttribute("server").toString();
        PreparedStatement ps;
        ResultSet rs,rs1;
		//Connection con = null;
		Statement st,st1,st2,st3,st4;
                                            Class.forName("com.mysql.jdbc.Driver");
                                      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","password");
                                            String query = "select * from usercomments"; 
                                            st = con.createStatement();
                                            rs = st.executeQuery(query);

                                            while(rs.next()) {
											String id = rs.getString(1);
                                                String s1 = rs.getString(2);
												String s2 = rs.getString(3);
                                                String s3 = rs.getString(4);
                                                String s4 = rs.getString(5);
												 String s5 = rs.getString(6);
												  String s6 = rs.getString(7);
												   String s7 = rs.getString(8);
												    String status = rs.getString(9);
											/*	   String status="";
												    String query1 = "select * from blockedipaddress where ipaddress='"+s7+"'"; 
                                            st1 = con.createStatement();
                                            rs1 = st1.executeQuery(query1);

                                            if(rs1.next()) {
												status="fake";
												}
												else
												{
												status="normal";
												}
												*/
                                    %>
									
              <tr>
			   <form name="form1" method="post" action="DeleteComment">
                <td><div align="center">
                  <input type="radio" name="filSelect" value="<%=id%>" />
                </div></td>
                <td><div align="center"><%=s1%></div></td>
                <td><div align="center"><%=s2%></div></td>
                <td><div align="center"><%=s3%></div></td>
                <td><div align="center"><%=s4%></div></td>
                <td><div align="center"><%=s5%></div></td>
                <td><div align="center"><%=s6%></div></td>
                <td><div align="center"><%=s7%></div></td>
                <td><div align="center"><%=status%></div></td>
                <td><div align="center">
                  <label>
                  <input type="submit" name="Submit" value="Delete">
                  </label>
                </div></td>
				</form>
              </tr>
              <tr>
                <td colspan="10"><div align="center"></div></td>
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
