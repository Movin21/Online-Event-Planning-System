package com.Admin.AdminPortalContent.ServiceProvider.Utill;

/*Author:IT22332608 | Liyanage M.I.H*/
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.Admin.AdminPortalContent.ServiceProvider.Model.Reservation;
import com.DBConnection.DBConnectivity;

public class ReservationDBUtil {
	private static Connection con = null;
	private static boolean isSuccess;
	private static PreparedStatement preparedStatement = null;
	private static Statement stmt;
	private static ResultSet rs;

//Reservation retrieve
	public static List<Reservation> getReservations() {
		List<Reservation> reservations = new ArrayList<>();
		con = DBConnectivity.getConnection();
		try {
			Statement statement = con.createStatement();
			String sql = "SELECT * FROM Reservation";
			rs = statement.executeQuery(sql);

			while (rs.next()) {
				int reservationId = rs.getInt("reservationId");
				String reservationName = rs.getString("reservationName");
				int numberOfCrew = rs.getInt("numberOfCrew");
				String reservationType = rs.getString("reservationType");
				String reservationDescription = rs.getString("reservationDescription");
				double reservationPrice = rs.getDouble("reservationPrice");
				String username = rs.getString("username");
				String password = rs.getString("password");

				Reservation reservation = new Reservation(reservationId, reservationName, numberOfCrew, reservationType,
						reservationDescription, reservationPrice, username, password);
				reservations.add(reservation);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return reservations;
	}

	// insert reservation
	public static boolean insertReservation(Reservation reservation) {
		boolean isSuccess = false;

		try {
			con = DBConnectivity.getConnection(); // Replace with your DB connectivity method

			String sql = "INSERT INTO Reservation (reservationId, reservationName, numberOfCrew, reservationType, reservationDescription, reservationPrice, username, password) "
					+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
			preparedStatement = con.prepareStatement(sql);

			// Set the values for the placeholders
			preparedStatement.setInt(1, reservation.getReservationId());
			preparedStatement.setString(2, reservation.getReservationName());
			preparedStatement.setInt(3, reservation.getNumberOfCrew());
			preparedStatement.setString(4, reservation.getReservationType());
			preparedStatement.setString(5, reservation.getReservationDescription());
			preparedStatement.setDouble(6, reservation.getReservationPrice());
			preparedStatement.setString(7, reservation.getUsername());
			preparedStatement.setString(8, reservation.getPassword());

			// Execute the query
			int rowsInserted = preparedStatement.executeUpdate();

			if (rowsInserted > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
		} catch (SQLException e) {
			System.out.print("Insert query failure");
			e.printStackTrace();
		} finally {
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (con != null) {
					con.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return isSuccess;
	}
	// Update Reservation

	public static boolean updateReservation(Reservation reservation) {
		Connection con = null;
		PreparedStatement preparedStatement = null;
		boolean isSuccess = false;
		con = DBConnectivity.getConnection();
		try {
			String sql = "UPDATE Reservation " + "SET reservationName = ?, numberOfCrew = ?, reservationType = ?, "
					+ "reservationDescription = ?, reservationPrice = ?, username = ?, password = ? "
					+ "WHERE reservationId = ?";

			preparedStatement = con.prepareStatement(sql);

			preparedStatement.setString(1, reservation.getReservationName());
			preparedStatement.setInt(2, reservation.getNumberOfCrew());
			preparedStatement.setString(3, reservation.getReservationType());
			preparedStatement.setString(4, reservation.getReservationDescription());
			preparedStatement.setDouble(5, reservation.getReservationPrice());
			preparedStatement.setString(6, reservation.getUsername());
			preparedStatement.setString(7, reservation.getPassword());
			preparedStatement.setInt(8, reservation.getReservationId());

			int rowsUpdated = preparedStatement.executeUpdate();

			if (rowsUpdated > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();

			;
		}
		return isSuccess;
	}

	// Delete Reservation
	public static boolean deleteReservation(String reservationId) {
		con = DBConnectivity.getConnection();
		try {
			String sql = "DELETE FROM Reservation WHERE reservationId = ?";

			preparedStatement = con.prepareStatement(sql);

			preparedStatement.setString(1, reservationId);

			// Execute the query
			int rowsDeleted = preparedStatement.executeUpdate();

			if (rowsDeleted > 0) {
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

	// count Reservations

	public static int countRecords() {

		int count = 0;

		con = DBConnectivity.getConnection();
		try {

			String sql = "SELECT COUNT(*) FROM Reservation";

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
