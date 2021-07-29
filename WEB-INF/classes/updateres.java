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
 * Servlet implementation class updateres
 */
@WebServlet("/updateres")
@MultipartConfig(fileSizeThreshold=1024*1024*2,maxFileSize=1024*1024*10,maxRequestSize=1024*1024*50)
public class updateres extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SAVE_DIR="imageres";


	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			String savePath="E:\\cityLife\\Demo1\\WebContent\\images"+File.separator+SAVE_DIR;
			HttpSession sess=request.getSession(false);
			String rid=(String)sess.getAttribute("rid");
			System.out.println(rid);
			
			String name=request.getParameter("name");
			System.out.println(name);
		
			String addr=request.getParameter("addr");
			//String addr="kolkata";
			System.out.println(addr);
			String phno=request.getParameter("phno");
			String cuisine=request.getParameter("cuisine");
			
			String time=request.getParameter("time");
			//String pass="123";
			System.out.println(time);
			Part part=request.getPart("file");
			String filePath=extractFile(part);
			System.out.println("Retuned for the method filePath= "+filePath);
			
			String fileName=filePath.substring(filePath.lastIndexOf("\\")+1,filePath.length());	
			System.out.println("FlieNAme= "+fileName);
			
			System.out.println(savePath+File.separator+fileName);
			System.out.println(savePath+File.separator+filePath);
			part.write(savePath+File.separator+fileName);
			
			
			String sql="update resturant set name=?,addr=?,phno=?,cuisine=?,fileadd=?,time=? where rid=?";
			Class.forName("com.ibm.db2.jcc.DB2Driver");
			Connection cn=DriverManager.getConnection("jdbc:db2://localhost:50000/CT_DB","SAYANTAN","password");
			PreparedStatement ps=cn.prepareStatement(sql);
			String fileAdd=savePath+File.separator+fileName;
			System.out.println(fileAdd);
			ps.setString(1, name);
			ps.setString(2, addr);
			ps.setString(3, phno);
			ps.setString(4, cuisine);
			ps.setString(5, fileAdd);
			ps.setString(6, time);
			ps.setString(7, rid);
			
			ps.execute();
			PrintWriter p=response.getWriter();
			p.println("<html><body onload=\"alert('record updated')\"></body></html>");
			RequestDispatcher rd=request.getRequestDispatcher("updatedropr.jsp");
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
			
		
		for (String s : item) { //using enhanced for loop
			if(s.trim().startsWith("filename")) //This method returns a copy of the string, with leading and trailing whitespace omitted.
			{
				return s.substring(s.indexOf("=")+2,s.length()-1); //This method has two variants and returns a new string that is a substring 
																	//of this string. The substring begins with the character at the specified 
																	//index and extends to the end of this string or up to endIndex - 1 if second argument is given.
			}
		}
		
		return "";
		

	}


}
