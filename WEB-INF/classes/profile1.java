import java.sql.*;
import java.io.*;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.servlet.RequestDispatcher;
/**
 * Servlet implementation class profile1
 */
@WebServlet("/profile1")
public class profile1 extends HttpServlet {
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
			String user1=request.getParameter("user1");
			String pass1=request.getParameter("pass1");
			String sql="Select pass1 from reg_01 where user1=? and pass1=?";
			
			PreparedStatement ps=cn.prepareStatement(sql);
			ps.setString(1, user1);
			ps.setString(2, pass1);
			
			ResultSet r=ps.executeQuery();
			
			if(r.next())
			{
				HttpSession session=request.getSession();
				session.setAttribute("pass1", r.getString(1));
				RequestDispatcher rd=request.getRequestDispatcher("002.jsp");
				rd.forward(request, response);
				
				
			}else{
				out.println("<html><body><script>alert('please login');</script></body></html>");
				RequestDispatcher rd=request.getRequestDispatcher("showp.jsp");
				rd.include(request, response);
			}
			
		}catch (Exception e){
			e.printStackTrace();
		}
	}

}
