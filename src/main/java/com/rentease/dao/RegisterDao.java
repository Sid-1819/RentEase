package com.rentease.dao;

import java.sql.Connection;
import java.sql.DriverManager;

import java.sql.SQLException;

import java.sql.PreparedStatement;

import com.rentease.model.Registered_users;

public class RegisterDao {

	public  int registerEmployee(Registered_users users) throws Exception {


		String SQL_USER = "INSERT INTO users" + " (username, email, password) VALUES" + "(?,?,?);";

		String url = "jdbc:mysql://localhost:3360/RentEase_data?user=root&password=Cmss&useUnicode=true&characterEncoding=UTF-8";
		String username = "root";
		String password = "Cmss";
		int result = 0;
		try (

				Connection conn = DriverManager.getConnection(url, username, password);

				PreparedStatement preparedstatement = conn.prepareStatement(SQL_USER)) {
			preparedstatement.setString(1, users.getUsername());
			preparedstatement.setString(2, users.getEmail());
			preparedstatement.setString(3, users.getPassword());

			System.out.println(preparedstatement);

			result = preparedstatement.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return result;

	}

}