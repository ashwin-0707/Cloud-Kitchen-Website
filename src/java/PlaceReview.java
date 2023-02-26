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

public class PlaceReview extends HttpServlet {

Connection con=null;
    Statement st=null,st1=null;
    ResultSet rs=null;
    RequestDispatcher rd=null;
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException {
 
            
            HttpSession sn = req.getSession(true);
     
            
            String username= req.getParameter("username");
            String id= req.getParameter("id");
            String productname= "";
            String ratings= req.getParameter("bcount");
            String review= req.getParameter("reviewinput");
           
                DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
     Date date = new Date();
System.out.println(dateFormat.format(date)); //2014/08/06 15:59:48

 String ipaddress = "192.168.0.1";
                try {
            InetAddress ipAddr = InetAddress.getLocalHost();
            System.out.println(ipAddr.getHostAddress());
            ipaddress = ipAddr.getHostAddress();
        } catch (UnknownHostException ex) {
            ex.printStackTrace();
        }
       
        	RequestDispatcher rd;

	try {
		
	    Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","password");
           
            int c1=0,c2=0;
            String status="purchased";
              st = con.createStatement();
            rs = st.executeQuery("select * from cart where username='"+username+"' && productid='"+id+"' && status='"+status+"'");
            if(rs.next()) {
            c1++;
            }
             st = con.createStatement();
            ResultSet rs1 = st.executeQuery("select * from usercomments where ipaddress='"+ipaddress+"' && productid='"+id+"'");
            if(rs1.next()) {
            c2++;
            }
            
            st = con.createStatement();
            ResultSet rs2 = st.executeQuery("select * from productdetails where fileid='"+id+"'");
            if(rs2.next()) {
            productname = rs2.getString(2);
            }
            String reviewstatus="normal";
            if(c1==0 || c2>0)
            {
                reviewstatus="fake";
            }
            st1 = con.createStatement();
            int add=st1.executeUpdate("insert into usercomments(productid,productname,username,comments,ratings,datetime1,ipaddress,reviewstatus) values('"+id+"','"+productname+"','"+username+"','"+review+"','"+ratings+"','"+dateFormat.format(date)+"','"+ipaddress+"','"+reviewstatus+"')");
            
            rd=req.getRequestDispatcher("reviewsuccess.jsp");
            rd.forward(req,res);
              
        } catch(Exception e2) {
             
        }
    }
}