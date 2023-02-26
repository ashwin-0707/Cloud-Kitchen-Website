/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author java.2
 */

public class AddCart extends HttpServlet {

Connection con=null;
    Statement st=null,st1=null;
    ResultSet rs=null;
    RequestDispatcher rd=null;
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException {
 
            
            HttpSession sn = req.getSession(true);
     
            
            String username= req.getParameter("username2");
            String id= req.getParameter("id2");
            String quantity= req.getParameter("quantity");
           
                DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
     Date date = new Date();
System.out.println(dateFormat.format(date)); //2014/08/06 15:59:48

 
        	RequestDispatcher rd;

	try {
		
	    Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","password");
           
             st = con.createStatement();
            rs = st.executeQuery("select * from productdetails where fileid='"+id+"'");
            if(rs.next()) {
            String Status = "cart";
            String productname=rs.getString(2);
            int price=rs.getInt(5);
            int totprice=price*Integer.parseInt(quantity);
            st1 = con.createStatement();
            int add=st1.executeUpdate("insert into cart(username,productid,productname,quantity,price,totprice,status) values('"+username+"','"+id+"','"+productname+"','"+quantity+"','"+price+"','"+totprice+"','"+Status+"')");
            }
            rd=req.getRequestDispatcher("viewcart.jsp");
            rd.forward(req,res);
              
        } catch(Exception e2) {
             System.out.println(e2);
        }
    }
}