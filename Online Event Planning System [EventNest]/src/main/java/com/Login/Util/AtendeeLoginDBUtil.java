package com.Login.Util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.DBConnection.DBConnectivity;
import com.Login.Model.Login;


public class AtendeeLoginDBUtil {
	private static PreparedStatement preparedStatement = null;
	private static Connection con = null;
	private static boolean isSuccess;
	private static ResultSet rs = null;
	
	public static boolean validate(Login login) {
		try {
			con = DBConnectivity.getConnection();
			String sql = "SELECT * FROM event WHERE username = ? AND Password = ? ";
			preparedStatement = con.prepareStatement(sql);
			
			//Set the values for the parameatrs
			preparedStatement.setString(1, login.getlUsername());
			preparedStatement.setString(2, login.getlPassword());
			
			//Execute the query
			rs = preparedStatement.executeQuery();
			
			if(rs.next()) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			con.close();
			
		}catch(Exception e) {
			System.out.println("Validation Falied");
			e.printStackTrace();
			
		}
		
		return isSuccess;
	}
}
