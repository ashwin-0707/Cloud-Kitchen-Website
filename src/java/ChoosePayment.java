
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author java.2
 */
public class ChoosePayment extends HttpServlet {
    String username="";
    String password="";
    String type1="",key="";
    Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException {
        
        String choice = req.getParameter("choose");
       
       
	
	HttpSession sn = req.getSession(true);
     
        String username = sn.getAttribute("username").toString();
		RequestDispatcher rd = null;
                
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","password");
            
            if(choice.equals("cod"))
                
            {
            
                String query = "update cart set status = ? where username = ?";
      PreparedStatement preparedStmt = con.prepareStatement(query);
      preparedStmt.setString   (1, "ordered");
      preparedStmt.setString(2, username);

      // execute the java preparedstatement
      preparedStmt.executeUpdate();
      
                rd=req.getRequestDispatcher("cod.jsp");
            
            } else {
                
            rd=req.getRequestDispatcher("payment.jsp");
            }
            
	     rd.forward(req,res);
        }
        catch(Exception e2)
         {
            System.out.println("Exception : "+e2.toString());
        }
    }
}
