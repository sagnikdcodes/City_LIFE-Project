import reg1.*;
import java.sql.*;
import java.io.*;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

/**
 * Servlet implementation class logcheckhp
 */
@WebServlet("/logcheckhp")
public class logcheckhp extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession(false);
		String name=(String)session.getAttribute("pass1");
	
		if(name==null){
			out.print("<script>alert('Please Login To See Details Of The Hospitals');</script>");
			RequestDispatcher rd=request.getRequestDispatcher("showhp.jsp");
			rd.include(request, response);
		}
		else
		{
			RequestDispatcher rd=request.getRequestDispatcher("recordhp.jsp");
			rd.include(request, response);
		}
	}

}
