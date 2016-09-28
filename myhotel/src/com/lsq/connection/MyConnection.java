package com.lsq.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class MyConnection {
	
	private static String DRIVER="com.mysql.jdbc.Driver";
	private static String URI="jdbc:mysql://localhost/myhotel?characterEncoding=utf-8";
	private static String USER="root";
	private static String PASS="xjing.521";
	
	public static Connection GetConnection()
	{
		Connection conn=null;
	    try {
			Class.forName(DRIVER);
			
		conn=DriverManager.getConnection(URI, USER,PASS);
			
			
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	    
	    return conn;
	}
    public static void main(String[] args) {
	     MyConnection.GetConnection();
	}
}
