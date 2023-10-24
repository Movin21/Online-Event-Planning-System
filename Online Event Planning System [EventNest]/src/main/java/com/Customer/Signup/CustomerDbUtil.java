package com.Customer.Signup;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.DBConnection.DBConnectivity;

public class CustomerDbUtil {
	
	private static ResultSet rs;
	private static boolean isSuccess;
	public static boolean insertcustomer(Customer customer) throws SQLException {
		Connection connection =  DBConnectivity.getConnection();
		boolean isSuccess = false;
		PreparedStatement preparedStatement = null;
	
		try {
			String sql = "INSERT INTO attendee (attendeeId,attendeeName, attendeeAddress, attendeePhone, attendeeEmail,  username, password) "
					+ "VALUES (?, ?, ?, ?, ?, ?,?)";

			preparedStatement = connection.prepareStatement(sql);

			// Set the values for the placeholders
			preparedStatement.setInt(1, customer.getCustomerId());
			preparedStatement.setString(2, customer.getCustomerName());
			preparedStatement.setString(3, customer.getCustomerAddress());
			preparedStatement.setString(4, customer.getCustomerPhone());
			preparedStatement.setString(5, customer.getCustomerEmail());
			preparedStatement.setString(6, customer.getUsername());
			preparedStatement.setString(7, customer.getPassword());

			// Execute the query
			int rowsInserted = preparedStatement.executeUpdate();

			if (rowsInserted > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			connection.close();

		} catch (Exception e) {
			System.out.print("Insert query failure");
			e.printStackTrace();
		}
		connection.close();
		return isSuccess;
		
	}
	
	// retrive data
	
	public static List<Customer> getCustomerDetails(String username){
	
		
		ArrayList<Customer> cus = new ArrayList<>();
		
		try {
			
			Connection connection =  DBConnectivity.getConnection();
			Statement stmt = connection.createStatement();
			String sql = "select * from attendee where username = '"+username+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String address = rs.getString(3);
				String phone = rs.getString(4);
				String email = rs.getString(5);
				String username1 = rs.getString(6);
				String password = rs.getString(7);
				
				Customer c = new Customer(id,name,address,phone,email,username1,password);
				cus.add(c);
			}
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return cus;
	}
	
	//update attendee
	
	public static boolean updateAttendee(String name, String address, String phone, String email, String username, String password) {
	    try {
	        Connection connection = DBConnectivity.getConnection();
	        String sql = "UPDATE attendee SET attendeeName=?, attendeeAddress=?, attendeePhone=?, attendeeEmail=?, password=? WHERE username=?";
	        PreparedStatement preparedStatement = connection.prepareStatement(sql);

	        preparedStatement.setString(1, name);
	        preparedStatement.setString(2, address);
	        preparedStatement.setString(3, phone);
	        preparedStatement.setString(4, email);
	        preparedStatement.setString(5, password);
	        preparedStatement.setString(6, username);

	        int rowsUpdated = preparedStatement.executeUpdate();

	        if (rowsUpdated > 0) {
	            isSuccess = true;
	        } else {
	            isSuccess = false;
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return isSuccess;
	}
	

}
