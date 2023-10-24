package com.Admin.AdminPortalContent.Event.Util;


/*Author:IT22332608 | Liyanage M.I.H*/

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.Admin.AdminPortalContent.Event.Model.Event;
import com.DBConnection.DBConnectivity;

public class EventDBUtil {
	private static Connection con = null;
	private static boolean isSuccess;
	private static PreparedStatement preparedStatement = null;
	private static Statement stmt;
	private static ResultSet rs;

	// Select Event
	public static ArrayList<Event> getEvent() {

		ArrayList<Event> eventList = new ArrayList<>();
		con = DBConnectivity.getConnection();
		try {
			stmt = con.createStatement();
			String sql = "SELECT* FROM event";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int eventId = rs.getInt(1);
				String eventName = rs.getString(2);
				String venue = rs.getString(3);
				String eventDate = rs.getString(4);
				String eventImageLink = rs.getString(5);
				String eventDescription = rs.getString(5);
				double ticketPrices = rs.getDouble(7);
				String username = rs.getString(8);
				String password = rs.getString(9);

				Event event = new Event(eventId, eventName, venue, eventDate, eventImageLink, eventDescription,
						ticketPrices, username, password);

				eventList.add(event);
			}

		} catch (Exception e) {
			System.out.print("Select query failure");
			e.printStackTrace();

		}

		return eventList;

	}

	// Event count
	//
	public static int countRecords() {

		int count = 0;

		con = DBConnectivity.getConnection();
		try {

			String sql = "SELECT COUNT(*) FROM Event";

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
