package jdbcmvc.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import jdbcmvc.constant.PersonConstant;

public class ConnectionUtil {

	public static Connection getConnection() throws Exception {
		Class.forName(PersonConstant.JDBC_DRIVER);
		return DriverManager.getConnection(
				PersonConstant.JDBC_URL,
				PersonConstant.JDBC_USER,
				PersonConstant.JDBC_PASSWORD
		);
				
	}
	
	public static void close(Connection conn, ResultSet rs, Statement stmt) throws Exception {
		
		if(conn != null) conn.close();
		if(rs!=null) rs.close();
		if(stmt!=null) stmt.close();
		
	}
	
}
