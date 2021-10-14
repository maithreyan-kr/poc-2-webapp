package com.registration;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class registrationDao {
	
	
	public static int registerUser(Registration user) throws ClassNotFoundException {
		String INSERT_HOTEL_SQL = "insert into registration" + 
				"(first_name, last_name,ph_number,d_o_b,username,pass) VALUES " +
				"(?,?,?,?,?,?)";
		int result = 0;
		
		Class.forName("com.mysql.jdbc.Driver");
		
		try (Connection connection = DriverManager
			.getConnection("jdbc:mysql://localhost:3306/hotel","maithreyan","");
				
			PreparedStatement ps = connection.prepareStatement(INSERT_HOTEL_SQL)){
			//ps.setInt(0, 1);
			ps.setString(1, user.getFirstName());
			ps.setString(2, user.getLastName());
			ps.setString(3, user.getPhoneNumber());
			ps.setString(4, user.getDateOfBirth());
			ps.setString(5, user.getFirstName());
			ps.setString(6, user.getPassword());
			
			System.out.println(ps);
			result = ps.executeUpdate();
				
		}catch (SQLException e) {
			e.printStackTrace();
		}
			return result;		
	}

	
	
}
