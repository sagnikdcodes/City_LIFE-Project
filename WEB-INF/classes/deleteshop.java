import java.io.*;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.*;

/**
 * Servlet implementation class deleteshop
 */
@WebServlet("/deleteshop")
public class deleteshop extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			String sid=request.getParameter("sid");
			String sql="delete from shoppingmall where sid=?";
			Class.forName("com.ibm.db2.jcc.DB2Driver");
			Connection cn=DriverManager.getConnection("jdbc:db2://localhost:50000/CT_DB","SAYANTAN","password");
			PreparedStatement ps=cn.prepareStatement(sql);
			ps.setString(1, sid);
			ps.execute();
			PrintWriter p=response.getWriter();
			p.println("<html><body onload=\"alert('record deleted')\"></body></html>");
			RequestDispatcher rd=request.getRequestDispatcher("deletesh.jsp");
			rd.include(request,response);
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
