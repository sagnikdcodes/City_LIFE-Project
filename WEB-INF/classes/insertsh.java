import java.sql.*;
import java.util.*;
import java.io.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
/**
 * Servlet implementation class insertsh
 */
@WebServlet("/insertsh")
@MultipartConfig(fileSizeThreshold=1024*1024*2,maxFileSize=1024*1024*10,maxRequestSize=1024*1024*50)
public class insertsh extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SAVE_DIR="imagesh";


	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			String savePath="E:\\cityLife\\Demo1\\WebContent\\images"+File.separator+SAVE_DIR;
			File fileSaveDir=new File(savePath);
			
			if(!fileSaveDir.exists()){
				fileSaveDir.mkdir();
			} 
			
			String sid=request.getParameter("sid");
			String name=request.getParameter("name");
			String addr=request.getParameter("addr");
			String phno=request.getParameter("phno");
			String time=request.getParameter("time");
			String brandname=request.getParameter("brandname");
			String des=request.getParameter("des");
			String resturants=request.getParameter("resturants");
			System.out.println(sid);
			System.out.println(name);
			System.out.println(addr);
			System.out.println(time);
			
			
			Part part=request.getPart("file");
			String filePath=extractFile(part);
			System.out.println("Retuned for the method filePath= "+filePath);
			
			String fileName=filePath.substring(filePath.lastIndexOf("\\")+1,filePath.length());	
			System.out.println("FlieNAme= "+fileName);
			
			System.out.println(savePath+File.separator+fileName);
			System.out.println(savePath+File.separator+filePath);
			part.write(savePath+File.separator+fileName);
			
			
			Class.forName("com.ibm.db2.jcc.DB2Driver");
			Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/CT_DB","SAYANTAN","password");
			PreparedStatement ps=con.prepareStatement("insert into shoppingmall values(?,?,?,?,?,?,?,?,?)");
			String fileAdd=savePath+File.separator+fileName;
			System.out.println(fileAdd);
			ps.setString(1, sid);
			ps.setString(2, name);
			ps.setString(3, addr);
			ps.setString(4, phno);
			ps.setString(5, time);
			ps.setString(6, brandname );
			ps.setString(7, fileAdd);
			ps.setString(8, des);
			ps.setString(9, resturants);
			
			ps.executeUpdate();
			
			System.out.println("record inserted...");
			RequestDispatcher rd=request.getRequestDispatcher("admin11.jsp");
			rd.forward(request, response);
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	private String extractFile(Part part)
	{
		
		String contentDisp=part.getHeader("Content-Disposition");
		System.out.println("content disposition= " +contentDisp);
		String[] item=contentDisp.split(";"); 
		
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
