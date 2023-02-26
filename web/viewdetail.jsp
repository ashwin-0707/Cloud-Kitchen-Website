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
.style21 {color: #687A66}
.style30 {font-size: medium;
	font-weight: bold;
}
.style30 {font-size: medium; font-weight: bold; color: #687A66; }
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
        <h1>Smart Restaurant
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
        <h2>Smart Restaurant</h2>
        <table width="511" height="855" border="0" >
		  <%
                                                                       
   String username2 = session.getAttribute("username").toString();
   

                                        try {
                                            //String username = "username";
											String id=request.getParameter("id");
							String username, user;
        PreparedStatement ps;
        ResultSet rs,rs1;
		//Connection con = null;
		Statement st,st1,st2,st3,st4;
		int c4=0;
                                            
                                            Class.forName("com.mysql.jdbc.Driver");
                                      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","password");
                                            String query = "select * from productdetails where fileid='"+id+"'"; 
                                            st = con.createStatement();
                                            rs = st.executeQuery(query); 
                                             while (rs.next()) { 
                                      String filename1="productimages/"+rs.getString("filename");
									  String name = rs.getString(2);
                                                                    %>
          <tr>
            <td width="200" height="51"><span class="style6">Item name  :</span></td>
            <td width="297" colspan="2"><%=name%></td>
          </tr>
          <tr>
            <td height="70" colspan="3"><div align="center"><img src="<%=filename1%>" alt="" width="200" height="200" /></div></td>
          </tr>
          <tr>
            <td height="51"><span class="style6">Food Type    : </span></td>
            <td colspan="2"><%=rs.getString(3)%></td>
          </tr>
          <tr>
            <td height="51"><span class="style6">Description : </span></td>
            <td colspan="2"><%=rs.getString(4)%></td>
          </tr>
          <tr>
            <td height="51"><span class="style6">Price : </span></td>
            <td colspan="2"><%=rs.getString(5)%></td>
          </tr>
          <tr>
            <td height="51" colspan="3"><div align="center">
              <form name="form2" method="post" action="AddCart">
                <label>Quantity
                  <input name="quantity" type="text" id="quantity">
                  <br>
                  <br>
                <input name="id2" type="text" id="id2" style="visibility:hidden" value="<%=id%>" size="12" />
                <input type="submit" name="Submit2" value="Buy">
                </label>
                <input name="username2" type="text" id="username2" style="visibility:hidden" value="<%=session.getAttribute("username")%>" size="12" />
                <p>&nbsp;</p>
                <p>&nbsp;  </p>
              </form>
            </div></td>
          </tr>
        
          

          <%

                                            }
                                            con.close();
                                        } catch (Exception e) {
                                            out.println(e);
                                        }

                                    %>
									 <tr>
              <td colspan="3"><div align="center">
                <table width="557" height="360" border="0" >
                  <tr>
                    <td height="58" colspan="3" bgcolor="#666666"><div align="center"><span class="style5">User Comments and Ratings </span></div></td>
                  </tr>
                  <tr>
                    <td width="108" height="35" bordercolor="#FFFFFF"><div align="center" class="style30">Username </div></td>
                    <td width="321" bordercolor="#FFFFFF"><div align="center" class="style21"><span class="style30">Comments</span></div></td>
                    <td width="114" bordercolor="#FFFFFF"><div align="center"><span class="style30">Ratings</span></div></td>
                  </tr>
                  <%
                                        try {
                                         String id1=request.getParameter("id");
							//String username, user;
        PreparedStatement ps;
        ResultSet rs;
		//Connection con = null;
		Statement st,st1,st2,st3,st4;
                                            String reviewstatus="normal";
                                            Class.forName("com.mysql.jdbc.Driver");
                                      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","password");
                                            String query = "select * from usercomments where productid='"+id1+"' && reviewstatus='"+reviewstatus+"'"; 
                                            st = con.createStatement();
                                            rs = st.executeQuery(query);

                                            while (rs.next()) {
                                                
                                                String s1 = rs.getString(4);
                                                String s2 = rs.getString(5);
												
												String s3 = rs.getString(6);
                                               
                                               
                                               // String oriName[] = fileName.split("____");
                                               // oriName[1].split("\\.");
                                              //  String originalName =oriName[0]+"."+oriName[1].split("\\.")[1];
                                    %>
                  <tr>
                    <td height="36"><div align="center"><%=s1%></div></td>
                    <td><div align="center"><%=s2%></div></td>
                    <td><div align="center"><%=s3%></div></td>
                  </tr>
				  <%
				  }
				  %>
                  <tr>
                    <td colspan="3"><div align="center">
                      <div align="center">
                        <form id="form1" method="post" action="PlaceReview">
                          <p>&nbsp;</p>
                          <table width="378" height="196" border="0">
                            <tr>
                              <td><span class="style29">Place Comment </span>
                                </p></td>
                              <td><textarea name="reviewinput" id="reviewinput"></textarea></td>
                            </tr>
                            <tr>
                              <td><span class="style29">Place Ratings </span></td>
                              <td><span class="style29">
                                <select name="bcount" id="bcount">
                                  <option value="1">1</option>
                                  <option value="2">2</option>
                                  <option value="3">3</option>
                                  <option value="4">4</option>
                                  <option value="5">5</option>
                                </select>
                              </span></td>
                            </tr>
                            <tr>
                              <td colspan="2"><div align="center">
                                <input name="username" type="text" id="username" style="visibility:hidden" value="<%=session.getAttribute("username")%>" size="6" />
                                <input type="submit" name="Submit" value="Submit Review" />
                                <input name="id" type="text" id="id" style="visibility:hidden" value="<%=id1%>" size="6" />
                              </div></td>
                              </tr>
                          </table>
                          <label></label>
                          <p>&nbsp;</p>
                          <p>&nbsp;</p>
                        </form>
                      </div>
                    </div></td>
                  </tr>
                </table>
                <%

                                           
                                            con.close();
                                        } catch (Exception e) {
                                            out.println(e);
                                        }

                                    %>
                <p>&nbsp;</p>
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
