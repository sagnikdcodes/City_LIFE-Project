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
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;

/**
 * Servlet implementation class updateptov
 */
@WebServlet("/updateptov")
@MultipartConfig(fileSizeThreshold=1024*1024*2,maxFileSize=1024*1024*10,maxRequestSize=1024*1024*50)
public class updateptov extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SAVE_DIR="imageptov";


	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		try{
			String savePath="E:\\cityLife\\Demo1\\WebContent\\images"+File.separator+SAVE_DIR;
			HttpSession sess=request.getSession(false);
			String pid=(String)sess.getAttribute("pid");
			System.out.println(pid);
			
			String name=request.getParameter("name");
			System.out.println(name);
		
			String addr=request.getParameter("addr");
			//String addr="kolkata";
			System.out.println(addr);
			
			String time=request.getParameter("time");
			//String pass="123";
			String events=request.getParameter("events");
			System.out.println(time);
			Part part=request.getPart("file");
			String filePath=extractFile(part);
			System.out.println("Retuned for the method filePath= "+filePath);
			
			String fileName=filePath.substring(filePath.lastIndexOf("\\")+1,filePath.length());	
			System.out.println("FlieNAme= "+fileName);
			
			System.out.println(savePath+File.separator+fileName);
			System.out.println(savePath+File.separator+filePath);
			part.write(savePath+File.separator+fileName);
			
			
			String sql="update place set name=?,addr=?,time=?,events=?,fileadd=? where pid=?";
			Class.forName("com.ibm.db2.jcc.DB2Driver");
			Connection cn=DriverManager.getConnection("jdbc:db2://localhost:50000/CT_DB","SAYANTAN","password");
			PreparedStatement ps=cn.prepareStatement(sql);
			String fileAdd=savePath+File.separator+fileName;
			System.out.println(fileAdd);
			ps.setString(1, name);
			ps.setString(2, addr);
			ps.setString(3, time);
			ps.setString(4, events);
			ps.setString(5, fileAdd);
			ps.setString(6, pid);
			
			ps.execute();
			PrintWriter p=response.getWriter();
			p.println("<html><body onload=\"alert('record updated')\"></body></html>");
			RequestDispatcher rd=request.getRequestDispatcher("updatedroppv.jsp");
			rd.include(request,response);
		}catch(Exception e){
			e.printStackTrace();
		}

	}
	private String extractFile(Part part)
	{
		//This lets the user save the file to their computer and then decide how to use it, 
		//instead of the browser trying to use the file.
		String contentDisp=part.getHeader("Content-Disposition");
		System.out.println("content disposition= " +contentDisp);
		String[] item=contentDisp.split(";"); //This method has two variants and splits this string around matches of the given regular expression.
		
		System.out.println("the 1st one is = " +item[0]);
		System.out.println("the 1st one is = " +item[1]);
		System.out.println("the 1st one is = " +item[2]);
			
		
		for (String s : item) { 
			if(s.trim().startsWith("filename")) 
			{
				return s.substring(s.indexOf("=")+2,s.length()-1); 
																	
																	
			}
		}
		
		return "";
		
	}


}

