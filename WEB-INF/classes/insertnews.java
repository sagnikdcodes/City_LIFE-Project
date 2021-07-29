import reg1.*;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
/**
 * Servlet implementation class insertnews
 */
@WebServlet("/insertnews")
public class insertnews extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();

		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String description=request.getParameter("description");
		String hyperlink=request.getParameter("hyperlink");
		String sql="insert into news values(?,?,?,?)";
		try{
			Connection con=con1.getConn();
			System.out.println("connected");
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,id);
			ps.setString(2,name);
			ps.setString(3,description);
			ps.setString(4,hyperlink);
			ps.execute();
			out.println("record saved");
			RequestDispatcher rd=request.getRequestDispatcher("admin11.jsp");
			rd.include(request, response);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
