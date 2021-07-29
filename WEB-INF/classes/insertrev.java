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
 * Servlet implementation class insertrev
 */
@WebServlet("/insertrev")
public class insertrev extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
PrintWriter out=response.getWriter();

		
		String name=request.getParameter("name");
		String rev=request.getParameter("rev");
		String date=request.getParameter("date");
		String sql="insert into review values(?,?,?)";
		try{
			Connection con=con1.getConn();
			System.out.println("connected");
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,name);
			ps.setString(2,rev);
			ps.setString(3,date);
			
			ps.execute();
			out.println("record saved");
			RequestDispatcher rd=request.getRequestDispatcher("002.jsp");
			rd.include(request, response);
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
