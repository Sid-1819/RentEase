package com.rentease.dao;

import java.sql.Connection;
import java.sql.DriverManager;

import java.sql.SQLException;
import java.util.logging.Logger;
import java.sql.PreparedStatement;

import com.rentease.model.Registered_users;
import com.rentease.servlet.Register_servlet;

public class RegisterDao {

	public  int registerEmployee(Registered_users users) throws Exception {
		final Logger logger1 = Logger.getLogger(RegisterDao.class.getName());


		String SQL_USER = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";
		Class.forName("com.mysql.cj.jdbc.Driver");

		String url = "jdbc:mysql://localhost:3306/RentEase_data?useSSL=false&allowPublicKeyRetrieval=true";
		String username = "root";
		String password = "Cmss";
		int result = 0;
		try {

				Connection conn = DriverManager.getConnection(url, username, password);
				

				PreparedStatement preparedstatement = conn.prepareStatement(SQL_USER); 
				logger1.info("Connected.");
			preparedstatement.setString(1, users.getUsername());
			preparedstatement.setString(2, users.getEmail());
			preparedstatement.setString(3, users.getPassword());
			logger1.info("param set");

			

			result = preparedstatement.executeUpdate();
			 logger1.info("Insert result: " + result);
				preparedstatement.close();
				conn.close();
		
		}
		catch (SQLException e) {

			e.printStackTrace();
			 throw new Exception("Error registering user", e);
		}

		return result;

	}

}