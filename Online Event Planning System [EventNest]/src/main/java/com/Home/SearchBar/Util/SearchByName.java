package com.Home.SearchBar.Util;

import static com.Home.SearchBar.Util.SearchBarUtil.con;
import static com.Home.SearchBar.Util.SearchBarUtil.rs;
import static com.Home.SearchBar.Util.SearchBarUtil.stmt;

import java.util.ArrayList;

import com.Admin.AdminPortalContent.Event.Model.Event;
import com.DBConnection.DBConnectivity;

public class SearchByName extends SearchBarUtil {

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
