package com.gnrchospitals.controller;

import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.ArrayList;

import com.gnrchospitals.dao.OracleJDbcConnection;


public class DatabaseController {

	private Connection con; 
	private PreparedStatement ps;
	private ResultSet rs;
	private ResultSetMetaData rsmd;
	

	public Connection getConnection() {

		
		out.println("------------------ Oracle JDBC Connection Testing ------------");
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			out.println("Where is your Oracle JDBC Driver");
			e.printStackTrace();
			return null;
		}

		out.println("Oracle JDBC Driver Registered");

		Connection con = null;

		try {
			con = DriverManager.getConnection("jdbc:oracle:thin:@172.16.12.150:1521:gnrcdevdb", "gnrc_global",
					"gnrc_global");
		} catch (Exception e) {
			out.println("Connection Failed! check output console");
			e.printStackTrace();
			return null;
		}

		if (con != null) {
			out.println("You made it! take control your database now! ");
		} else {
			out.println("Failed yo make connection");
			return null;
		}
		
		return con;

	}

	public void setLoginSessionInfo(String locId) throws Exception {

		String query = "Select db_name, srv_add, db_port, db_user, db_pswd from MST_GLOBAL_INFO where loc_id = ? and status = ?";
		
		ArrayList<String> list = new ArrayList<>();
		
		try {
			con = getConnection();
			ps = con.prepareStatement(query);
			ps.setString(1, locId);
			ps.setString(2, "A");
			rs = ps.executeQuery();
			rsmd = rs.getMetaData();
			
			if (rs.next()) {
				
				do {
					for(int i=1; i<=rsmd.getColumnCount(); i++) {
						list.add(rs.getString(rsmd.getColumnName(i)));
					}
				}while(rs.next());
			}
			
		}finally {
			ps.close();
			con.close();
		}
		
		/*
		 * Set Database properties
		 */
		
		String dbName = list.get(0);
		String ServerName = list.get(1);
		String dbPort = list.get(2);
		String dbUser = list.get(3);
		String dbPassword = list.get(4);
				
		OracleJDbcConnection.setDbName(dbName);
		OracleJDbcConnection.setServerAddress(ServerName);
		OracleJDbcConnection.setDbPort(dbPort);
		OracleJDbcConnection.setDbUserName(dbUser);
		OracleJDbcConnection.setDbPassword(dbPassword);
		
		
		
		

		

	}

}
