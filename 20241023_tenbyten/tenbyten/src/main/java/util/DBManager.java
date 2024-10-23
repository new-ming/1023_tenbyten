package util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBManager {
	public static Connection getConnection() {
		// Connection 변수를 메서드 외부에서 선언하고 초기화

		Connection conn = null; 
		    try {
		        Context initContext = new InitialContext();
		        Context envContext = (Context) initContext.lookup("java:/comp/env");
		        DataSource ds = (DataSource) envContext.lookup("jdbc/tenbytenDB");
		        conn = ds.getConnection();
		        System.out.println("DBCP 연동 성공");
		        System.out.println("mysql 연결 성공 : " + conn);
		    } catch (Exception e) {
		        e.printStackTrace();
		    }
		    return conn;
		}
	
	
	// 리소스 해제를 위한 메소드
	// select후
		public static void close(Connection conn, Statement stmt, ResultSet rs) {
			try {
				rs.close();
				stmt.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}


	// insert, update, delete
		public static void close(Connection conn, Statement stmt) {
			try {
				stmt.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
}
