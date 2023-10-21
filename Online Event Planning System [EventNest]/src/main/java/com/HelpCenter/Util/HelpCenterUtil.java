package com.HelpCenter.Util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.DBConnection.DBConnectivity;
import com.HelpCenter.Model.Message;

public class HelpCenterUtil {
	private static PreparedStatement preparedStatement = null;
	private static Connection con = null;
	private static int rs;
	private static boolean isSuccess;

	public static boolean passMsg(Message Msg) {

		try {
			con = DBConnectivity.getConnection();
			String insertQuery = "INSERT INTO HelpCenter (name, email, phone, issueType, Description) VALUES (?, ?, ?, ?, ?)";

			// Create a PreparedStatement
			preparedStatement = con.prepareStatement(insertQuery);

			// Set values using placeholders (wildcards)
			preparedStatement.setString(1, Msg.getName());
			preparedStatement.setString(2, Msg.getEmail());
			preparedStatement.setString(3, Msg.getPhone());
			preparedStatement.setString(4, Msg.getIssueType());
			preparedStatement.setString(5, Msg.getDescription());

			// Execute the insert statement
			rs = preparedStatement.executeUpdate();

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
		} catch (SQLException e) {
			System.out.print("Insert query failure");
			e.printStackTrace();
		}
		return isSuccess;
	}
}