package com.gnrchospitals.dao;

import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;

public class OracleJDbcConnection {

	private static String dbName;
	private static String serverAddress;
	private static String dbUserName;
	private static String dbPassword;
	private static String dbPort;

	public String getDbName() {
		return dbName;
	}

	public static void setDbName(String dbName) {
		OracleJDbcConnection.dbName = dbName;
	}

	public String getServerAddress() {
		return serverAddress;
	}

	public static void setServerAddress(String serverAddress) {
		OracleJDbcConnection.serverAddress = serverAddress;
	}

	public String getDbUserName() {
		return dbUserName;
	}

	public static void setDbUserName(String dbUserName) {
		OracleJDbcConnection.dbUserName = dbUserName;
	}

	public String getDbPassword() {
		return dbPassword;
	}

	public static void setDbPassword(String dbPassword) {
		OracleJDbcConnection.dbPassword = dbPassword;
	}

	public static String getDbPort() {
		return dbPort;
	}

	public static void setDbPort(String dbPort) {
		OracleJDbcConnection.dbPort = dbPort;
	}

	public static Connection getConnection() {

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
			con = DriverManager.getConnection("jdbc:oracle:thin:@" + serverAddress + ":" + dbPort + ":" + dbName, dbUserName, dbPassword);
			// con =
			// DriverManager.getConnection("jdbc:oracle:thin:@172.16.12.150:1521:gnrcdevdb",
			// dbUserName, "test");
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

}
