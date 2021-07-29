package reg1;
import java.sql.*;
public class con1 {
	static Connection con=null;
	static String driver="com.ibm.db2.jcc.DB2Driver";
	static String user="SAYANTAN";
	static String pass="password";
	static String url="jdbc:db2://localhost:50000/CT_DB";
	public static Connection getConn(){
	try{
		Class.forName(driver);
		con=DriverManager.getConnection(url,user,pass);
	}catch(Exception e){
		e.printStackTrace();
	}
	return con;
}

}
