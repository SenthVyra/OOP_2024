package com.ovspms.DBConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	private Connection con;
	private String dbDriver;
	private String dbURL;
	private String dbName;
	private String dbUsername;
	private String dbPassword;
	private String connectionURL;

	private static DBConnection db;

	private DBConnection() throws SQLException, ClassNotFoundException {
		dbDriver = "com.mysql.jdbc.Driver";
		this.dbURL = "jdbc:mysql://localhost:3306/";
		this.dbName = "ovspms";
		this.dbUsername = "root";
		this.dbPassword = "mysql123";
		this.connectionURL = this.dbURL + this.dbName + "?autoReconnect=true&useSSL=false";
		Class.forName(this.dbDriver);
		this.con = DriverManager.getConnection(this.connectionURL, this.dbUsername, this.dbPassword);
	}

	public static DBConnection getInstance() throws SQLException, ClassNotFoundException {
		if (db == null) {
			db = new DBConnection();
		}
		return db;
	}

	public Connection getCon() {
		return this.con;
	}
}
