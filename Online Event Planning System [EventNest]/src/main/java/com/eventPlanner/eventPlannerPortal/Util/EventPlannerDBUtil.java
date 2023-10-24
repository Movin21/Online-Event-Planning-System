package com.eventPlanner.eventPlannerPortal.Util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.DBConnection.DBConnectivity;
import com.Event.Model.Event;

public class EventPlannerDBUtil {
	private static Connection con = null;
	private static boolean isSuccess;
	private static PreparedStatement preparedStatement = null;
	private static Statement stmt;
	private static ResultSet rs;
	
		//Retrive Event Details from Database
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
		//Insert Event Details to the Database
		public static boolean insertEvent(Event event) {
			con = DBConnectivity.getConnection();
			try {
				String sql = "INSERT INTO event (eventId,eventName, venue, eventDate, eventImageLink, eventDescription, ticketPrice, username, password)"
						+ "VALUES (?, ?, ?, ?, ?, ?, ?, ? , ?)";

				preparedStatement = con.prepareStatement(sql);

				// Set the values 
				preparedStatement.setInt(1, event.getEventID());
				preparedStatement.setString(2, event.getEventName());
				preparedStatement.setString(3, event.getVenue());
				preparedStatement.setString(4, event.getEventDate());
				preparedStatement.setString(5, event.getEventImageLink());
				preparedStatement.setString(6, event.getEventDescription());
				preparedStatement.setDouble(7, event.getTicketPrice());
				preparedStatement.setString(8, event.getUserName());
				preparedStatement.setString(9, event.getPassword());

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
		
		//Update Event Details in the Database
		public static boolean updateEvent(Event event) {
			con = DBConnectivity.getConnection();
			try {
				String sql = "UPDATE event "
						+ "SET eventId = ?, eventName = ?, venue = ?, eventDate = ?, eventImageLink = ?, eventDescription = ?, ticketPrice = ?, username = ?, password = ? "+ "WHERE eventId = ?";

				preparedStatement = con.prepareStatement(sql);

				// Set the values 
				preparedStatement.setInt(1, event.getEventID());
				preparedStatement.setString(2, event.getEventName());
				preparedStatement.setString(3, event.getVenue());
				preparedStatement.setString(4, event.getEventDate());
				preparedStatement.setString(5, event.getEventImageLink());
				preparedStatement.setString(6, event.getEventDescription());
				preparedStatement.setDouble(7, event.getTicketPrice());
				preparedStatement.setString(8, event.getUserName());
				preparedStatement.setString(9, event.getPassword());
				preparedStatement.setInt(10, event.getEventID());

				// Execute the query
				int rowsUpdated = preparedStatement.executeUpdate();

				if (rowsUpdated > 0) {
					isSuccess = true;
				} else {
					isSuccess = false;
				}
				con.close();

			} catch (Exception e) {
				System.out.print("Update query failure");
				e.printStackTrace();
			}

			return isSuccess;

		}
		
		//Delete Event Details from Database
		public static boolean deleteEvent(String eventId) {
			con = DBConnectivity.getConnection();
			try {
				String sql = "DELETE FROM event WHERE eventId = ?";

				preparedStatement = con.prepareStatement(sql);
				
				// Set the values
				preparedStatement.setString(1, eventId);

				// Execute the query
				int rowsInserted = preparedStatement.executeUpdate();

				if (rowsInserted > 0) {
					isSuccess = true;
				} else {
					isSuccess = false;
				}
				con.close();

			} catch (Exception e) {
				System.out.print("Delete query failure");
				e.printStackTrace();
			}

			return isSuccess;

		}

		
}
