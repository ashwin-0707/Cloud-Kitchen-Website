import java.io.*;
import java.security.MessageDigest;
import java.sql.*;
import java.text.SimpleDateFormat;
import javax.servlet.*;
import javax.servlet.http.*;
   public class PaymentVerify extends HttpServlet {
    String username="";
    String password="";
    String type="";
    Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException {
        String cardtype = req.getParameter("cardtype");
        String name = req.getParameter("name");
     String number= req.getParameter("number");
     String valid = req.getParameter("valid");
        String cvvno = req.getParameter("cvvno");
      String id = req.getParameter("id");
	HttpSession sn = req.getSession(true);
     username=sn.getAttribute("username").toString();
		RequestDispatcher rd = null;
        System.out.println("User login works"+type);        
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","password");
            st = con.createStatement();
            rs = st.executeQuery("select * from carddetails where cardtype='"+cardtype+"' && holdername='"+name+"' && cardnumber='"+number+"' && cardvaliddate='"+valid+"' && cvvno='"+cvvno+"'");
            if(rs.next()) {
                 java.util.Date date = new java.util.Date() ;
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm") ;
			dateFormat.format(date);
			System.out.println(dateFormat.format(date));
                 String data1 = dateFormat.format(date)+username+cardtype+type+valid+cvvno;
			            
                 
                 String query = "update cart set status = ? where username = ?";
      PreparedStatement preparedStmt = con.prepareStatement(query);
      preparedStmt.setString   (1, "purchased");
      preparedStmt.setString(2, username);

      // execute the java preparedstatement
      preparedStmt.executeUpdate();
  
                          
                 rd=req.getRequestDispatcher("ordersuccess.jsp");
           }
                else {

               rd=req.getRequestDispatcher("failure2.jsp");
	       
            }		
     rd.forward(req,res);
              
         
        }
        catch(Exception e2)
         {
             
            System.out.println("Exception : "+e2.toString());
            
        }
    }
}