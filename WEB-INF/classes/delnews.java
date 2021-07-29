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
 * Servlet implementation class delnews
 */
@WebServlet("/delnews")
public class delnews extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public delnews() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			Connection con=con1.getConn();
			String id=request.getParameter("id");
			String sql="delete from news where id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, id);
			ps.execute();
			PrintWriter p=response.getWriter();
			p.println("<html><body onload=\"alert('record deleted')\"></body></html>");
			RequestDispatcher rd=request.getRequestDispatcher("deletenews.jsp");
			rd.include(request,response);
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
