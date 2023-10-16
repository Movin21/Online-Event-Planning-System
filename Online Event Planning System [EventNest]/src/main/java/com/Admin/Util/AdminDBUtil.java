package com.Admin.Util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.Admin.Model.Admin;
import com.DBConnection.DBConnectivity;

public class AdminDBUtil {
	private static PreparedStatement preparedStatement = null;
	private static Connection con = null;
	private static boolean isSuccess;
	private static ResultSet rs = null;

	public static boolean validate(Admin admin) {
		try {
			con = DBConnectivity.getConnection();
			String sql = "SELECT * FROM AdminLogin WHERE username = ? AND password = ?";
			preparedStatement = con.prepareStatement(sql);

			// Set the values for the parameters
			preparedStatement.setString(1, admin.getUsername());
			preparedStatement.setString(2, admin.getPassword());

			// Execute the query
			rs = preparedStatement.executeQuery();

			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			con.close();
		} catch (Exception e) {
			System.out.print("Validate query failure");
			e.printStackTrace();
		}
		return isSuccess;

	}

}
