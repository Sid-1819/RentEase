package com.rentease.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.*;

import com.mysql.cj.protocol.Resultset;
import com.rentease.model.Properties;

public class PropertiesDao {
	
	private Connection connection;
	private String query;
	private PreparedStatement pStatement;
	private ResultSet rs;
	public PropertiesDao(Connection connection) {
		
		this.connection = connection;
	}

	String url = "jdbc:mysql://localhost:3306/RentEase_data?useSSL=false&allowPublicKeyRetrieval=true";
	String username = "root";
	String password = "Cmss";
	
	public List<Properties> getAllProperties(){
		List<Properties> properties = new ArrayList<Properties>();
		try {
			  Class.forName("com.mysql.cj.jdbc.Driver");

		        // Establish connection
		        connection = DriverManager.getConnection(url, username, password);
			query = "select * from properties WHERE type = 'villa'";
			pStatement = this.connection.prepareStatement(query);
			rs = pStatement.executeQuery();
			while(rs.next()) {
				Properties row = new Properties();
				row.setId(rs.getInt("id"));
				row.setType(rs.getString("type"));
				row.setName(rs.getString("name"));
				row.setDescription(rs.getString("description"));
				row.setPrice(rs.getDouble("price"));
				
				row.setImageUrl(rs.getString("image_url"));
				row.setLocation(rs.getString("location"));
				row.setAvailable(rs.getBoolean("available"));
				
				properties.add(row);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return properties;
	}
	
	
}
