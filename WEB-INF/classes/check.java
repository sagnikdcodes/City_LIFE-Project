import java.io.*;
import java.sql.*;
import javax.servlet.http.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class check
 */
@WebServlet("/check")
public class check extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public check() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		{
			doPost(request, response);
			}
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		try 
		{
		// 9lessons is my database name
		String connectionURL = "jdbc:db2://localhost:50000/ct_db"; 
		Connection connection = null;
		Class.forName("com.ibm.db2.jcc.DB2Driver");
		connection = DriverManager.getConnection(connectionURL, "SAYANTAN","password");
		String user1 = request.getParameter("user1");
		PreparedStatement ps = connection.prepareStatement("select user1 from reg_01 where user1=?"); 
		ps.setString(1,user1);
		System.out.println("connected");
		ResultSet rs = ps.executeQuery();

		if (!rs.next()) 
		{
		out.println("<font color=cyan><b>"+user1+"</b> is avaliable");
		}
		else
		{
		out.println("<font color=red><b>"+user1+"</b> is already in use</font>");
		}
		out.println();
		}
		catch (Exception ex) 
		{
		out.println("Error ->" + ex.getMessage());
		} 
		finally 
		{
		out.close();
		}
		}
		
	}
