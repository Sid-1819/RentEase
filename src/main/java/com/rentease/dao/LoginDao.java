package com.rentease.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Logger;

import com.rentease.model.Login_users;
import com.rentease.model.Registered_users;

public class LoginDao {

	

	public boolean loginEmployee(Login_users users) throws Exception {
		final Logger logger1 = Logger.getLogger(RegisterDao.class.getName());

		Class.forName("com.mysql.cj.jdbc.Driver");
		String SQL_USER = "select * from users where username=? and password=?";

		String url = "jdbc:mysql://localhost:3306/RentEase_data?useSSL=false&allowPublicKeyRetrieval=true";
		String username = "root";
		String password = "Cmss";
		boolean status = false;

		try {

			Connection conn = DriverManager.getConnection(url, username, password);
			PreparedStatement preparedstatement = conn.prepareStatement(SQL_USER);
			logger1.info("Connected.");
			preparedstatement.setString(1, users.getUsername());

			preparedstatement.setString(2, users.getPassword());
			logger1.info("param set");

			ResultSet rs = preparedstatement.executeQuery();
			status = rs.next();
			logger1.info("status set");

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;

	}

}
