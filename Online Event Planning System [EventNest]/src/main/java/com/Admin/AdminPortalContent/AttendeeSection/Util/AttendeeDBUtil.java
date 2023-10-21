package com.Admin.AdminPortalContent.AttendeeSection.Util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.Admin.AdminPortalContent.AttendeeSection.Model.Attendee;
import com.DBConnection.DBConnectivity;

//attendee CRUD Opertaions
public class AttendeeDBUtil {

	private static Connection con = null;
	private static boolean isSuccess;
	private static PreparedStatement preparedStatement = null;
	private static Statement stmt;
	private static ResultSet rs;

	// Create Attendee
	public static boolean insertAttendee(Attendee attendee) {
		con = DBConnectivity.getConnection();
		try {
			String sql = "INSERT INTO Attendee (attendeeId,attendeeName, attendeeAddress, attendeePhone, attendeeEmail, tickets, previouslyAttendedEvents, username, password) "
					+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?,?)";

			preparedStatement = con.prepareStatement(sql);

			// Set the values for the placeholders
			preparedStatement.setInt(1, attendee.getAttendeeId());
			preparedStatement.setString(2, attendee.getAttendeeName());
			preparedStatement.setString(3, attendee.getAttendeeAddress());
			preparedStatement.setString(4, attendee.getAttendeePhone());
			preparedStatement.setString(5, attendee.getAttendeeEmail());
			preparedStatement.setInt(6, attendee.getTickets());
			preparedStatement.setString(7, attendee.getPreviouslyAttendedEvents());
			preparedStatement.setString(8, attendee.getUsername());
			preparedStatement.setString(9, attendee.getPassword());

			// Execute the query
			int rowsInserted = preparedStatement.executeUpdate();

			if (rowsInserted > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			con.close();

		} catch (Exception e) {
			System.out.print("Insert query failure");
			e.printStackTrace();
		}

		return isSuccess;
	}

	// Update Attendee
	public static boolean updateAttendee(Attendee attendee) {
		con = DBConnectivity.getConnection();
		try {
			String sql = "UPDATE Attendee "
					+ "SET attendeeName = ?, attendeeAddress = ?, attendeePhone = ?, attendeeEmail = ?, "
					+ "tickets = ?, previouslyAttendedEvents = ?, username = ?, password = ? " + "WHERE attendeeId = ?";

			preparedStatement = con.prepareStatement(sql);

			// Set the values for the placeholders

			preparedStatement.setString(1, attendee.getAttendeeName());
			preparedStatement.setString(2, attendee.getAttendeeAddress());
			preparedStatement.setString(3, attendee.getAttendeePhone());
			preparedStatement.setString(4, attendee.getAttendeeEmail());
			preparedStatement.setInt(5, attendee.getTickets());
			preparedStatement.setString(6, attendee.getPreviouslyAttendedEvents());
			preparedStatement.setString(7, attendee.getUsername());
			preparedStatement.setString(8, attendee.getPassword());
			preparedStatement.setInt(9, attendee.getAttendeeId());

			// Execute the query
			int rowsUpdated = preparedStatement.executeUpdate();

			if (rowsUpdated > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			con.close();

		} catch (Exception e) {
			System.out.print("Insert query failure");
			e.printStackTrace();
		}

		return isSuccess;

	}
	// Delete Attendee

	public static boolean deleteAttendee(String username) {
		con = DBConnectivity.getConnection();
		try {
			String sql = "DELETE FROM Attendee WHERE username = ?";

			preparedStatement = con.prepareStatement(sql);

			preparedStatement.setString(1, username);

			// Execute the query
			int rowsInserted = preparedStatement.executeUpdate();

			if (rowsInserted > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			con.close();

		} catch (Exception e) {
			System.out.print("Insert query failure");
			e.printStackTrace();
		}

		return isSuccess;

	}

	// Select Attendee
	public static List<Attendee> getAttendee() {

		ArrayList<Attendee> attendeeList = new ArrayList<>();
		con = DBConnectivity.getConnection();
		try {
			stmt = con.createStatement();
			String sql = "SELECT* FROM Attendee";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int attendeeId = rs.getInt(1);
				String attendeeName = rs.getString(2);
				String attendeeAddress = rs.getString(3);
				String attendeePhone = rs.getString(4);
				String attendeeEmail = rs.getString(5);
				int tickets = rs.getInt(6);
				String previouslyAttendedEvents = rs.getString(7);
				String username = rs.getString(8);
				String password = rs.getString(9);

				Attendee attendee = new Attendee(attendeeId, attendeeName, attendeeAddress, attendeePhone,
						attendeeEmail, tickets, previouslyAttendedEvents, username, password);

				attendeeList.add(attendee);

			}

		} catch (Exception e) {
			System.out.print("Select query failure");
			e.printStackTrace();

		}

		return attendeeList;

	}

	// count Attendee
	public static int countRecords() {

		int count = 0;

		con = DBConnectivity.getConnection();
		try {

			String sql = "SELECT COUNT(*) FROM Attendee";

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
