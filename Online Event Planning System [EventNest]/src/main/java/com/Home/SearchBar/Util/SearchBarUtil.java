package com.Home.SearchBar.Util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.Admin.AdminPortalContent.Event.Model.Event;
import com.DBConnection.DBConnectivity;

public class SearchBarUtil {
	private static Connection con = null;
	private static Statement stmt;
	private static ResultSet rs = null;

	public static ArrayList<Event> getSearchResult(String keyWord) {
		ArrayList<Event> eventList = new ArrayList<>();
		con = DBConnectivity.getConnection();
		try {
			stmt = con.createStatement();
			String sql = "SELECT* FROM event WHERE eventName LIKE '%" + keyWord + "'";
			rs = stmt.executeQuery(sql);
			while (rs.next()) {

				int eventId = rs.getInt(1);
				String eventName = rs.getString(2);
				String venue = rs.getString(3);
				String eventDate = rs.getString(4);
				String eventImageLink = rs.getString(5);
				String eventDescription = rs.getString(6);
				double ticketPrice = rs.getDouble(7);
				String username = rs.getString(8);
				String password = rs.getString(9);

				Event event = new Event(eventId, eventName, venue, eventDate, eventImageLink, eventDescription,
						ticketPrice, username, password);
				eventList.add(event);

			}

		} catch (Exception e) {
			System.out.print("Insert query failure");
			e.printStackTrace();
		}

		return eventList;
	}

}
