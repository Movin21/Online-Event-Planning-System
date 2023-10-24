package com.eventPlanner.eventPlannerPortal.Util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.DBConnection.DBConnectivity;
import com.Event.Model.Event;

public class EventPlannerDPUtil {
	private static Connection con = null;
	private static boolean isSuccess;
	private static PreparedStatement preparedStatement = null;
	private static Statement stmt;
	private static ResultSet rs;
	
		// Select Event
		public static List<Event> getEvent() {
			
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
					String eventDescription = rs.getString(6);
					double ticketPrices = rs.getDouble(7);
					String username = rs.getString(8);
					String password = rs.getString(9);

					Event event = new Event(eventId, eventName, venue, eventDate,
							eventImageLink, eventDescription, ticketPrices, username, password);

					eventList.add(event);

				}

			} catch (Exception e) {
				System.out.print("Select query failure");
				e.printStackTrace();

			}

			return eventList;
		}
		
		
		
		
}
