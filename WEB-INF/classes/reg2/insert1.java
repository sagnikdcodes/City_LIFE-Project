package reg2;
import reg1.*;
import java.sql.*;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;

/**
 * Servlet implementation class insert1
 */
@WebServlet("/insert1")
public class insert1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();

		String user1=request.getParameter("user1");
		String pass1=request.getParameter("pass1");
		String name=request.getParameter("name");
		String phno=request.getParameter("phno");
		String city=request.getParameter("city");
		String gender=request.getParameter("gender");
		String date=request.getParameter("date");
		String sql="insert into REG_01 values(?,?,?,?,?,?,?)";
		try{
			Connection con=con1.getConn();
			System.out.println("connected");
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,user1);
			ps.setString(2,pass1);
			ps.setString(3,name);
			ps.setString(4,phno);
			ps.setString(5,city);
			ps.setString(6,gender);
			ps.setString(7,date);
			ps.execute();
			out.println("<html><body onload=\"alert('Login with your id and password')\"></body></html>");
			RequestDispatcher rd=request.getRequestDispatcher("002.jsp");
			rd.include(request, response);
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	}


