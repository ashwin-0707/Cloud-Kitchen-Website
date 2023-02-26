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
.style26 {color: #993366}
.style31 {	color: #993366;
	font-size: medium;
	font-weight: bold;
}
.style5 {color: #E1EAF1;
	font-size: 24px;
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
        <table width="870" height="338" border="0">
          <tr>
            <td height="59" bgcolor="#666666"><div align="center"><span class="style5">Cart Details </span></div></td>
          </tr>
          <tr>
            <td width="459" height="169"><table width="819" height="167" border="0" >
                <tr>
                  <td width="129"><div align="center" class="style4"><span class="style26">Choose Option </span></div></td>
                  <td width="77"><div align="center" class="style4"><span class="style26">Item ID </span></div></td>
                  <td width="170"><div align="center"><span class="style31">Item Name </span></div></td>
                  <td width="129"><div align="center" class="style4"><span class="style26">Quantity</span></div></td>
                  <td width="98"><div align="center" class="style4"><span class="style26">Price</span></div></td>
                  <td width="89"><div align="center" class="style4"><span class="style26">Total Price </span></div></td>
                  <td width="97">&nbsp;</td>
                </tr>
                <%
                                        try {
                                            //String username = "username";
							// String domain = request.getParameter("domain");
							 // String type = request.getParameter("type");
							 String username = session.getAttribute("username").toString();
							 String status="cart";
        PreparedStatement ps;
        ResultSet rs, rs1;
		//Connection con = null;
		Statement st,st1,st2,st3,st4;
                                            Class.forName("com.mysql.jdbc.Driver");
                                      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","password");
                                           String totprice = "";
										   String query1 = "select sum(totprice) from cart where username='"+username+"' && status='"+status+"'"; 
                                            st = con.createStatement();
                                            rs1 = st.executeQuery(query1);

                                            if (rs1.next()) {
											
											int tot = rs1.getInt(1);
											totprice =""+tot;
											
											}
										   
										    String query = "select * from cart where username='"+username+"' && status='"+status+"'"; 
                                            st = con.createStatement();
                                            rs = st.executeQuery(query);

                                            while (rs.next()) {
                                                String id = rs.getString(8);
												String s1 = rs.getString(2);
                                               String s2 = rs.getString(3);
											   String s3 = rs.getString(4);
											   String s4 = rs.getString(5);
											   String s5 = rs.getString(6);
											  
                                               // String oriName[] = fileName.split("____");
                                               // oriName[1].split("\\.");
                                              //  String originalName =oriName[0]+"."+oriName[1].split("\\.")[1];
                                    %>
                <tr>
                  <form action="DeleteCart" method="post" name="form3" id="form3">
                    <td><div align="center">
                        <input type="radio" name="filSelect" value="<%=id%>" />
                    </div></td>
                    <td><div align="center"><%=s1%></div></td>
                    <td><div align="center"><%=s2%></div></td>
                    <td><div align="center">
                        <label></label>
                        <%=s3%></div></td>
                    <td><div align="center">
                      <label></label>
                      <%=s4%></div></td>
                    <td><div align="center">
                      <label></label>
                      <%=s5%></div></td>
                    <td><input type="submit" name="Submit2" value="Delete" /></td>
                  </form>
                </tr>
				<%
				}
				%>
                <tr>
                  <td colspan="7"><div align="center">Total Charges : <%=totprice%> </div></td>
                </tr>
                <%

                                            
                                            con.close();
                                        } catch (Exception e) {
                                            out.println(e);
                                        }

                                    %>
            </table></td>
          </tr>
          <tr>
            <td><div align="center">
              <p>&nbsp;</p>
              <form id="form1" name="form1" method="post" action="ChoosePayment">
                  <label><br>
                  
                  <select name="choose" id="choose">
                      <option value="cod">COD</option>
                      <option value="creditcard">Credit Card</option>
                      <option value="debitcard">Debit Card</option>
                  </select>
<br>
                  <br>
                  <br>
                  <input type="submit" name="Submit" value="Proceed to Pay" />
                  </label>
                </form>
              <p><a href="userpage.jsp">Back to Purchase </a></p>
            </div></td>
          </tr>
        </table>
        <p align="center">&nbsp;</p>
      </section>
    </div>
   
  </div>
</div>
<p>&nbsp;</p>
<div align=center></div>
</body>
</html>
