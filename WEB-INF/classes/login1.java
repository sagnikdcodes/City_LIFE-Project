import java.sql.*;
import java.io.*;
import java.util.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.*;
import javax.servlet.RequestDispatcher;


/**
 * Servlet implementation class login1
 */
@WebServlet("/login1")
public class login1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection cn= null;
	String Driver="com.ibm.db2.jcc.DB2Driver";
	String url="jdbc:db2://localhost:50000/CT_DB";
	String user="SAYANTAN";
	String password="password";

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			PrintWriter out=response.getWriter();
			Class.forName(Driver);
			cn=DriverManager.getConnection(url,user,password);
			System.out.println("connected...");
			String user1=request.getParameter("user1");
			String pass1=request.getParameter("pass1");
			//String user1="srijani1";
			//String pass1="srijani12";
			String sql="Select * from REG_01 where user1=? and pass1=? ";
			
			PreparedStatement ps=cn.prepareStatement(sql);
			ps.setString(1,user1);
			ps.setString(2,pass1);
			System.out.println(user1);
			System.out.println(pass1);
			ResultSet r=ps.executeQuery();
			
			if(r.next())
			{
				HttpSession session=request.getSession();
				session.setAttribute("pass1", r.getString(1));
				out.println("<font color=#01fa39><b>Welcome: "+r.getString(3)+"</b> </font>");
				RequestDispatcher rd=request.getRequestDispatcher("002.jsp");
				rd.include(request, response);
				
				
			}
			else if(user1.equals("clife0416") && pass1.equals("admincitylife"))
			{
				
				RequestDispatcher rd=request.getRequestDispatcher("admin11.jsp");
				rd.forward(request, response);
			}
			
			else{
				out.println("<font color=red><b>Incorrect user id / password</b> </font>");
				RequestDispatcher rd=request.getRequestDispatcher("002.jsp");
				rd.include(request, response);
			}
			
		}catch (Exception e){
			e.printStackTrace();
		}
	}

}
