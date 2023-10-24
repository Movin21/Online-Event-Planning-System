package com.Admin.AdminPortalContent.HelpCenterResponse.Util;

/*Author:IT22332608 | Liyanage M.I.H*/
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.DBConnection.DBConnectivity;
import com.HelpCenter.Model.Message;

public class HelpCenterResponseUtil {
	private static PreparedStatement preparedStatement = null;
	private static Connection con = null;
	private static ResultSet rs;
	private static boolean isSuccess;
	private static Statement stmt;

//message retrieve
	public static List<Message> getHelpCenterEntries() {
		ArrayList<Message> helpCenterList = new ArrayList<>();
		con = DBConnectivity.getConnection();
		try {
			stmt = con.createStatement();
			String sql = "SELECT * FROM HelpCenter";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String issueType = rs.getString(5);
				String description = rs.getString(6);

				Message Msg = new Message(id, name, email, phone, issueType, description);
				helpCenterList.add(Msg);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return helpCenterList;
	}

//delete messages
	public static boolean deleteHelpCenterEntry(String id) {
		con = DBConnectivity.getConnection();
		try {
			String sql = "DELETE FROM HelpCenter WHERE id = ?";
			preparedStatement = con.prepareStatement(sql);
			preparedStatement.setString(1, id);

			// Execute the query
			int rowsDeleted = preparedStatement.executeUpdate();

			if (rowsDeleted > 0) {
				return true; // Deletion was successful
			} else {
				return false; // Deletion failed (record not found or other issue)
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false; // Exception occurred during the deletion
		} finally {
			try {
				if (con != null) {
					con.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

//count messages
	public static int countHelpCenterRecords() {
		int count = 0;
		con = DBConnectivity.getConnection();
		try {
			String sql = "SELECT COUNT(*) FROM HelpCenter";
			preparedStatement = con.prepareStatement(sql);
			rs = preparedStatement.executeQuery();

			if (rs.next()) {
				count = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return count;
	}

}
